package com.aeroBlasters.flightManagementSystem.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.aeroBlasters.flightManagementSystem.bean.Passenger;

@Service
@Repository
public class PassengerDaoImpl implements PassengerDao {
    @Autowired
    private PassengerRepository repository;

    @Override
    public void save(Passenger passenger) {
        repository.save(passenger);
    }

    @Override
    public List<Passenger> findByTicketId(Long ticketId) {
        // Assuming findByTicketId is equivalent to finding by passenger ID
        List<Passenger> passenger = repository.findByTicketId(ticketId);
        return passenger;
    }

    @Override
    public void deleteById(Long id) {
        repository.deleteById(id);
    }

    @Override
    public void update(Passenger passenger) {
        if (passenger.getId() == null) {
            throw new IllegalArgumentException("Passenger ID cannot be null for update operation");
        }
        repository.save(passenger);
    }

    @Override
    public void deletePassengerByTicketNumber(Long ticketNumber) {
        repository.deletePassengerByTicketNumber(ticketNumber);
    }

    @Override
    public List<Passenger> findAllPassengers() {
        return repository.findAll();
    }
}