package com.aeroBlasters.flightManagementSystem.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Airport {
    @Id
    private String airportCode;
    private String airportLocation;
///today work
    // Default constructor
    public Airport() {
    	super();
    }

    // Parameterized constructor
    public Airport(String airportCode, String airportLocation) {
    	super();
        this.airportCode = airportCode;
        this.airportLocation = airportLocation;
    }

    // Getters and Setters
    public String getAirportCode() {
        return airportCode;
    }

    public void setAirportCode(String airportCode) {
        this.airportCode = airportCode;
    }

    public String getAirportLocation() {
        return airportLocation;
    }

    public void setAirportLocation(String airportLocation) {
        this.airportLocation = airportLocation;
    }

    // toString method
    @Override
    public String toString() {
        return "Airport{" +
                "airportCode='" + airportCode + '\'' +
                ", airportLocation='" + airportLocation + '\'' +
                '}';
    }
}

