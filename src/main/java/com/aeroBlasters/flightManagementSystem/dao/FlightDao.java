package com.aeroBlasters.flightManagementSystem.dao;

import java.util.List;

import com.aeroBlasters.flightManagementSystem.bean.Flight;

public interface FlightDao {
    public List<Flight> findFlightsByRouteId(Long routeId);

    public List<Flight> findAllFlights();

    public void save(Flight flight1);

    public void addFlight(Flight flight);

    public Flight findFlightById(Long id);

    public Flight findFlightByFlightNumber(Long flightNumber);

}