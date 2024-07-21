package com.aeroBlasters.flightManagementSystem.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import com.aeroBlasters.flightManagementSystem.bean.Passenger;

public interface PassengerRepository extends JpaRepository<Passenger, Long> {
    @Query("select a from Passenger a where ticket_id = ?1")
    public List<Passenger> findByTicketId(Long ticketId);

    @Modifying
    @Transactional
    @Query("DELETE FROM Passenger p WHERE ticket_id = ?1")
    void deletePassengerByTicketNumber(Long ticketId);
}