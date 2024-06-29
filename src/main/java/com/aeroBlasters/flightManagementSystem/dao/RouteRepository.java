package com.aeroBlasters.flightManagementSystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.aeroBlasters.flightManagementSystem.bean.Route;

public interface RouteRepository extends JpaRepository<Route,Long> {
	
	@Query("select max(routeId) from Route")
	public Long findLastRouteId();
	@Query("SELECT a FROM Route a WHERE sourceAirportCode=?1 AND destinationAirportCode=?2")
	public Long findRouteBySourceAndDestination(String sourceAirportCode,String destinationAirportCode);
	@Query("SELECT routeId FROM Route")
	public List<Long>findAllRoutesId();

}
