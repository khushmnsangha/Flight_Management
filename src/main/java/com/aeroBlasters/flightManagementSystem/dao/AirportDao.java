package com.aeroBlasters.flightManagementSystem.dao;

import com.aeroBlasters.flightManagementSystem.bean.Airport;

import java.util.List;
public interface AirportDao {
   public void addAirport(Airport airport);
   public List<Airport> findAllAirports();
   public Airport findAirportById(String id);
  // public List<String>findAllAirportCodes();
   public List<String>findAllAirportLocations();
   public String findAirportCodeByLocation(String airportLocation);

}
