package com.aeroBlasters.flightManagementSystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aeroBlasters.flightManagementSystem.bean.Flight;
import com.aeroBlasters.flightManagementSystem.dao.FlightDao;
import com.aeroBlasters.flightManagementSystem.dao.PassengerDao;
import com.aeroBlasters.flightManagementSystem.dao.TicketDao;

@Service
public class TicketService {
    // Existing methods remain unchanged
    @Autowired
    private PassengerDao passengerDao;

    @Autowired
    private TicketDao ticketDao;

    @Autowired
    private FlightDao flightDao;

    // New method to calculate final ticket price
    public Double calculateFinalTicketPrice(Integer birthYear, Double basePrice, Long totalSeats,
            Long bookedSeats) {
        // Calculate age
        Integer age = ageCalculation(birthYear);

        // Check if tickets are available
        Long availableSeats = capacityCalculation(totalSeats, bookedSeats);
        if (availableSeats <= 0) {
            throw new IllegalStateException("No tickets available");
        }

        // Apply discount based on age
        Double discountedPrice = discount(basePrice, age);

        return discountedPrice;
    }

    // discount() - No changes
    public Double discount(Double totalAmount, int age) {
        final double CHILD_DISCOUNT = 0.3; // 30% discount
        final double YOUTH_DISCOUNT = 0.2; // 20% discount
        final double ELDERLY_DISCOUNT = 0.25; // 25% discount
        final double NO_DISCOUNT = 0.1; // 10% discount for others

        if (age < 12) {
            return totalAmount - (totalAmount * CHILD_DISCOUNT);
        } else if (age >= 12 && age <= 24) {
            return totalAmount - (totalAmount * YOUTH_DISCOUNT);
        } else if (age >= 65) {
            return totalAmount - (totalAmount * ELDERLY_DISCOUNT);
        } else {
            return totalAmount - (totalAmount * NO_DISCOUNT);
        }
    }

    // ageCalculation() - No changes
    public Integer ageCalculation(Integer year) {
        return 2024 - year; // Consider updating the current year dynamically
    }

    // capacityCalculation() - No changes
    public Long capacityCalculation(Long totalSeats, Long bookedSeats) {
        return totalSeats - bookedSeats;
    }

    public boolean cancelTicket(Long ticketNumber) {
        try {
            passengerDao.deletePassengerByTicketNumber(ticketNumber);
            ticketDao.deleteTicketByTicketNumber(ticketNumber);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public Long getTotalSeats(Long flightNumber) {
        System.out.println("flight number from get toatal setas: " + flightNumber);
        Flight flight = flightDao.findFlightByFlightNumber(flightNumber);
        System.out.println("flight details from get toatal setas: " + flight);
        return flight.getSeatCapacity();
    }

    public Long getBookedSeats(Long flightNumber) {
        return flightDao.findFlightByFlightNumber(flightNumber).getSeatBooked();
    }

    public TicketService() {
        super();
    }

    public TicketService(PassengerDao passengerDao, TicketDao ticketDao, FlightDao flightDao) {
        this.passengerDao = passengerDao;
        this.ticketDao = ticketDao;
        this.flightDao = flightDao;
    }

    public void updateBookedSeats(Long flightNumber, Long totalPasssenger) {
        System.out.println("Flight Number from updateBookedSeats: " + flightNumber);
        Flight flight = flightDao.findFlightByFlightNumber(flightNumber);
        flight.setSeatBooked(flight.getSeatBooked() + totalPasssenger);
        flightDao.save(flight);
    }
}