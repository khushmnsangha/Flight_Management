package com.aeroBlasters.flightManagementSystem.dao;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.aeroBlasters.flightManagementSystem.bean.Ticket;

public interface TicketRepository extends JpaRepository<Ticket, Long> {
    @Query("select max(ticketNumber) from Ticket")
    public Long findLastTicketNumber();

    @Modifying
    @Transactional
    @Query("DELETE FROM Ticket t WHERE t.ticketNumber = :ticketNumber")
    void deleteTicketByTicketNumber(Long ticketNumber);
}