package com.aeroBlasters.flightManagementSystem.dao;

import org.springframework.beans.factory.annotation.Autowired;

import com.aeroBlasters.flightManagementSystem.bean.Ticket;

public class TicketDaoImpl implements TicketDao {
@Autowired
private TicketRepository repository;

@Override
public void save(Ticket ticket) {
	repository.save(ticket);
}

@Override
public Long findLastTicketNumber() {
	Long val=repository.findLastTicketNumber();
	if(val==null)
		val=1000001L;
	else
		val=val+1;
	return val;
}
}
