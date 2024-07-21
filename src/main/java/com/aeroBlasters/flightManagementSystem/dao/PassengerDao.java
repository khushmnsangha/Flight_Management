package com.aeroBlasters.flightManagementSystem.dao;

import java.util.List;

import com.aeroBlasters.flightManagementSystem.bean.Passenger;

public interface PassengerDao {
    public void save(Passenger passenger);

    public List<Passenger> findByTicketId(Long ticketId);

    public void deleteById(Long id);

    public void update(Passenger passenger);

    public void deletePassengerByTicketNumber(Long ticketNumber);

    public List<Passenger> findAllPassengers();
}