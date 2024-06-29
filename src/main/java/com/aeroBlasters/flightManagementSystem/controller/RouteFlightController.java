package com.aeroBlasters.flightManagementSystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.aeroBlasters.flightManagementSystem.bean.Flight;
import com.aeroBlasters.flightManagementSystem.bean.Route;
import com.aeroBlasters.flightManagementSystem.dao.AirportDao;
import com.aeroBlasters.flightManagementSystem.dao.FlightDao;
import com.aeroBlasters.flightManagementSystem.dao.RouteDao;
import com.aeroBlasters.flightManagementSystem.exception.RouteException;
import com.aeroBlasters.flightManagementSystem.service.FlightService;
import com.aeroBlasters.flightManagementSystem.service.RouteService;
@ControllerAdvice
@RestController
public class RouteFlightController {
	@Autowired
	private RouteDao routeDao;
	@Autowired
	private RouteService routeService;
	@Autowired
	private AirportDao airportDao;
	@Autowired
	private FlightDao flightDao;
	@Autowired
	private FlightService flightService;
	
	@GetMapping("/routeEntryPage")
	public ModelAndView showRouteEntryPage() {
		Long newRouteId=routeDao.generateRouteId();
		Route route=new Route();
		route.setRouteId(newRouteId);
		ModelAndView mv=new ModelAndView("routeEntryPage");
		mv.addObject("routeRecord",route);
		return mv;
	}
	
	@PostMapping("/route")
	public ModelAndView saveRoutes(@ModelAttribute("routeRecord")Route route1) {
		String source=route1.getSourceAirportCode().toUpperCase();
		String destination=route1.getDestinationAirportCode().toUpperCase();
		//doubt in last is there is nothing writtten after airport
		String sourceCode=airportDao.findAirportCodeByLocation(route1.getSourceAirportCode());
		String destinationCode=airportDao.findAirportCodeByLocation(route1.getDestinationAirportCode());
		route1.setSourceAirportCode(sourceCode);
		route1.setDestinationAirportCode(destinationCode);
		Route route2=routeService.createReturnRoute(route1);
		routeDao.save(route1);
		routeDao.save(route2);
		return new ModelAndView("index");
	}

	
	@GetMapping("/routes")
	public ModelAndView showRouteReportPage() {
	List<Route> routeList=routeDao.findAllRoutes();
	ModelAndView mv=new ModelAndView("routeReportPage");
	mv.addObject("routeList",routeList);
	return mv;
	}
	
	
	
@GetMapping("/flight")
public ModelAndView showFlightEntryPage() {
	List<Long> routeList=routeDao.findAllRoutesId();
	Flight flight=new Flight();
	ModelAndView mv=new ModelAndView("flightEntryPage");
	mv.addObject("flightRecord",flight);
	mv.addObject("routeList",routeList);
	return mv;
}
	
	
	
@PostMapping("/flight")
public ModelAndView saveFlights(@ModelAttribute("flightRecord")Flight flight1,@RequestParam("dtime") String dtime,@RequestParam("atime") String atime) {
Flight flight2=flightService.createReturnFlight(flight1,dtime,atime);
flightDao.save(flight1);
flightDao.save(flight2);
return new ModelAndView("index");
}

@GetMapping("/flights")
public ModelAndView showFlightReportPage() {
	List<Flight> flightList=flightDao.findAllFlights();
	ModelAndView mv=new ModelAndView("flightReportPage");
	mv.addObject("flightList",flightList);
	return mv;
}

@GetMapping("/flight-search")
public ModelAndView showRouteSelectPage() {
	List<String> airportList=airportDao.findAllAirportLocations();
	ModelAndView mv=new ModelAndView("routeSelectPage");
	mv.addObject("airportList",airportList);
	return mv;
}


@PostMapping("/flight-search")
public ModelAndView showRouteFlightsPage(@RequestParam("from_city")String fromCity,@RequestParam("to_city")String toCity) {
String fromAirport=airportDao.findAirportCodeByLocation(fromCity);
String toAirport=airportDao.findAirportCodeByLocation(toCity);
if(fromAirport.equalsIgnoreCase(toAirport))
	throw new RouteException();
Route route=routeDao.findRouteBySourceAndDestination(fromAirport, toAirport);
List<Flight> flightList=flightDao.findFlightsByRouteId(route.getRouteId());
ModelAndView mv=new ModelAndView("routeFlightShowPage");
mv.addObject("flightList",flightList);
mv.addObject("fromAirport",fromCity);
mv.addObject("toAirport",toCity);
mv.addObject("fair",route.getFair());
return mv;

}

@ExceptionHandler(value=RouteException.class)
public ModelAndView handlingRouteException(RouteException exception) {
	String message="From-City & To-City cannot be the same......";
	ModelAndView mv=new ModelAndView("routeErrorPage");
	mv.addObject("errorMessage",message);
	return mv;
	
}
}


