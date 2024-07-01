package com.aeroBlasters.flightManagementSystem.dao;

import com.aeroBlasters.flightManagementSystem.bean.Ticket;

public interface TicketDao {
public void save(Ticket ticket);
public Long findLastTicketNumber();
}
