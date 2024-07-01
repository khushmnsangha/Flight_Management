package com.aeroBlasters.flightManagementSystem.bean;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

@Entity
public class Passenger {
@EmbeddedId
private TicketPassengerEmbed embeddedId;
private String passengerName;
private Integer passengerAge;
private Double fare;

public Passenger() {
	super();
}

public TicketPassengerEmbed getEmbeddedId() {
	return embeddedId;
}

public void setEmbeddedId(TicketPassengerEmbed embeddedId) {
	this.embeddedId = embeddedId;
}

public String getPassengerName() {
	return passengerName;
}

public void setPassengerName(String passengerName) {
	this.passengerName = passengerName;
}

public Integer getPassengerAge() {
	return passengerAge;
}

public void setPassengerAge(Integer passengerAge) {
	this.passengerAge = passengerAge;
}

public Double getFare() {
	return fare;
}

public void setFare(Double fare) {
	this.fare = fare;
}

public Passenger(TicketPassengerEmbed embeddedId, String passengerName, Integer passengerAge, Double fare) {
	super();
	this.embeddedId = embeddedId;
	this.passengerName = passengerName;
	this.passengerAge = passengerAge;
	this.fare = fare;
}
}
