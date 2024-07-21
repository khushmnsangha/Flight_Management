
package com.aeroBlasters.flightManagementSystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.aeroBlasters.flightManagementSystem.bean.Airport;

public interface AirportRepository extends JpaRepository<Airport, String> {
	@Query("select airportCode from Airport")
	public List<String> findAllAirportCodes();

	@Query("select airportLocation from Airport ")
	public List<String> findAllAirportLocations();

	@Query("select airportCode from Airport where airportLocation=?1")
	public String findAirportCodeByLocation(String airportLocation);

}
