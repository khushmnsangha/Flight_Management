package com.aeroBlasters.flightManagementSystem.controller;

import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.aeroBlasters.flightManagementSystem.bean.Flight;
import com.aeroBlasters.flightManagementSystem.bean.Passenger;
import com.aeroBlasters.flightManagementSystem.bean.Route;
import com.aeroBlasters.flightManagementSystem.bean.Ticket;
import com.aeroBlasters.flightManagementSystem.dao.FlightDao;
import com.aeroBlasters.flightManagementSystem.dao.PassengerDao;
import com.aeroBlasters.flightManagementSystem.dao.RouteDao;
import com.aeroBlasters.flightManagementSystem.dao.TicketDao;
import com.aeroBlasters.flightManagementSystem.exception.TicketException;
import com.aeroBlasters.flightManagementSystem.service.TicketService;
import org.springframework.web.bind.annotation.RequestParam;

@ControllerAdvice
@RestController
public class TicketController {

    @Autowired
    private TicketDao ticketDao;

    @Autowired
    private FlightDao flightDao;

    @Autowired
    private RouteDao routeDao;

    @Autowired
    private PassengerDao passengerDao;

    @Autowired
    private TicketService ticketService;

    @GetMapping("/ticket/{id}")
    public ModelAndView showTicketForm(@PathVariable Long id) {
        Flight flight = flightDao.findFlightById(id);
        Route route = routeDao.findRouteById(flight.getRouteId());
        Long newTicketId = ticketDao.findLastTicketNumber() + 1;
        Ticket ticket = new Ticket();
        ticket.setTicketNumber(newTicketId);
        ticket.setFlightNumber(flight.getFlightNumber());
        ticket.setCarrierName(flight.getCarrierName());
        ModelAndView mv = new ModelAndView("ticketBookingPage");
        mv.addObject("ticketRecord", ticket);
        mv.addObject("flight", flight);
        mv.addObject("route", route);
        return mv;
    }

    @PostMapping("/ticket")
    public ModelAndView openShowTicketPage(@ModelAttribute("ticketRecord") Ticket ticket, HttpServletRequest request) {
        Long ticketNumber = ticketDao.findLastTicketNumber() + 1;
        ticket.setTicketNumber(ticketNumber);
        System.out.println("Ticket Number: " + ticket.getTicketNumber());

        // Save the ticket first
        ticketDao.save(ticket);

        Double totalAmount = 0.0;
        System.out.println("Flight Number from openshowticketpage: " + ticket.getFlightNumber());

        Long totalSeats = ticketService.getTotalSeats(ticket.getFlightNumber());
        Long bookedSeats = ticketService.getBookedSeats(ticket.getFlightNumber());
        System.out.println("Total Seats: " + totalSeats);
        System.out.println("Booked Seats: " + bookedSeats);

        ModelAndView mv = new ModelAndView("showTicketPage");
        String fromCity = request.getParameter("fromLocation");
        String toCity = request.getParameter("toLocation");
        Double basePrice = Double.parseDouble(request.getParameter("totalAmount"));
        String pname = "";
        String dob = "";
        Long totalPassengers = 0L;
        for (int i = 1; i <= 6; i++) {
            pname = request.getParameter("name" + i);
            dob = request.getParameter("dob" + i);
            if (pname.equals("--"))
                continue;
            Passenger passenger = new Passenger();
            passenger.setPassengerName(pname);
            passenger.setDob(dob);
            passenger.setTicket(ticket);
            passenger.setFare(ticket.getTotalAmount());
            passenger.setPassengerAge(LocalDate.now().getYear() - LocalDate.parse(dob).getYear());
            passengerDao.save(passenger);
            totalAmount += ticketService.calculateFinalTicketPrice(LocalDate.parse(dob).getYear(), basePrice,
                    totalSeats, bookedSeats);
            totalPassengers++;
            System.out.println("name " + pname + "dob " + pname);
        }
        if (totalPassengers == 0) {
            ticketDao.delete(ticket);
            throw new TicketException("No passengers added to the ticket");
        }
        ticket.setTotalAmount(totalAmount);
        ticketService.updateBookedSeats(ticket.getFlightNumber(), totalPassengers);
        ticketDao.save(ticket);
        List<Passenger> passengerList = passengerDao.findByTicketId(ticketNumber);
        mv.addObject("passengerList", passengerList);
        mv.addObject("ticketRecord", ticket);
        return mv;
    }

    @GetMapping("/showTicket/{ticketNumber}")
    public ModelAndView showTicketPage(@PathVariable("ticketNumber") Long ticketNumber) {
        Ticket ticket = ticketDao.findTicketByTicketNumber(ticketNumber);
        List<Passenger> passengerList = passengerDao.findByTicketId(ticketNumber);

        ModelAndView mv = new ModelAndView("showTicketPage");

        mv.addObject("passengerList", passengerList);
        mv.addObject("ticketRecord", ticket);

        return mv;
    }

    @PostMapping("/cancelTicket/{ticketNumber}")
    public ModelAndView cancelTicket(@PathVariable("ticketNumber") Long ticketNumber) {
        System.out.println("Cancelling Ticket Number: " + ticketNumber);
        boolean isCancelled = ticketService.cancelTicket(ticketNumber);
        System.out.println("Ticket Cancelled: " + isCancelled);

        ModelAndView mv = new ModelAndView("cancelTicketPage");
        if (isCancelled) {
            mv.setViewName("redirect:/index");
            mv.addObject("message", "Ticket Cancelled Successfully");
        } else {
            mv.setViewName("errorPage");
            mv.addObject("message", "Ticket Cancellation Failed");
        }

        return mv;
    }

    @GetMapping("/tickets")
    public ModelAndView showAllTickets() {
        List<Ticket> ticketList = ticketDao.findAllTickets();
        System.out.println("Ticket List: " + ticketList.size());
        ModelAndView mv = new ModelAndView("ticketReportPage");
        mv.addObject("ticketList", ticketList);
        return mv;
    }

    @GetMapping("/passengers")
    public ModelAndView showAllPassengers() {
        List<Passenger> passengerList = passengerDao.findAllPassengers();
        System.out.println("Passenger List: " + passengerList.size());
        ModelAndView mv = new ModelAndView("passengerReportPage");
        mv.addObject("passengerList", passengerList);
        return mv;
    }

    @ExceptionHandler(value = TicketException.class)
    public ModelAndView handlingTicketException(TicketException exception) {
        String message = "Ticket Exception: " + exception.getMessage();
        ModelAndView mv = new ModelAndView("ticketErrorPage");
        mv.addObject("errorMessage", message);
        return mv;
    }
}
