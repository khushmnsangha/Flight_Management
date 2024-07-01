package com.aeroBlasters.flightManagementSystem.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.aeroBlasters.flightManagementSystem.bean.Passenger;
import com.aeroBlasters.flightManagementSystem.bean.TicketPassengerEmbed;

public interface PassengerRepository extends JpaRepository<Passenger, TicketPassengerEmbed> {

}
