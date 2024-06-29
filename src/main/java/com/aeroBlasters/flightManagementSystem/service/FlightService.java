package com.aeroBlasters.flightManagementSystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aeroBlasters.flightManagementSystem.bean.Flight;
import com.aeroBlasters.flightManagementSystem.bean.Route;
import com.aeroBlasters.flightManagementSystem.dao.RouteDao;

@Service
public class FlightService {
@Autowired
private RouteDao routeDao;
public Flight createReturnFlight(Flight flight,String dtime,String atime) {
	Long newId=flight.getFlightNumber()+1;
	Route route=routeDao.findRouteById(flight.getRouteId());
	String sourceCode=route.getDestinationAirportCode();
	String destinationCode=route.getSourceAirportCode();
	Route route2=routeDao.findRouteBySourceAndDestination(sourceCode,destinationCode);
	return new Flight(newId,flight.getCarrierName(),route2.getRouteId(),flight.getSeatCapacity(),dtime,atime);
}
}
