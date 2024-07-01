package com.aeroBlasters.flightManagementSystem.dao;

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
}
