package com.aeroBlasters.flightManagementSystem.dao;

import java.util.List;

import com.aeroBlasters.flightManagementSystem.bean.Ticket;

public interface TicketDao {
    public void save(Ticket ticket);

    public Long findLastTicketNumber();

    public Ticket findTicketByTicketNumber(Long ticketNumber);

    public void deleteTicketByTicketNumber(Long ticketNumber);

    public void delete(Ticket ticket);

    public List<Ticket> findAllTickets();
}