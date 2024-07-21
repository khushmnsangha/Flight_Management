package com.aeroBlasters.flightManagementSystem.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.aeroBlasters.flightManagementSystem.bean.Flight;

@Service
@Repository
public class FlightDaoImpl implements FlightDao {
    @Autowired
    private FlightRepository repository;

    @Override
    public void save(Flight flight) {
        repository.save(flight);
    }

    @Override
    public List<Flight> findFlightsByRouteId(Long routeId) {
        return repository.findFlightsByRouteId(routeId);
    }

    @Override
    public List<Flight> findAllFlights() {
        // TODO Auto-generated method stub
        return repository.findAll();
    }

    @Override
    public void addFlight(Flight flight) {
        // TODO Auto-generated method stub

    }

    @Override
    public Flight findFlightById(Long id) {
        return repository.findById(id).get();
    }

    @Override
    public Flight findFlightByFlightNumber(Long flightNumber) {
        System.out.println("FlightDaoImpl: findFlightByFlightNumber() called");
        return repository.findFlightByFlightNumber(flightNumber);
    }
}