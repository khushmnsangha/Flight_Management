package com.aeroBlasters.flightManagementSystem.dao;

import java.util.List;

import com.aeroBlasters.flightManagementSystem.bean.Route;

public interface RouteDao {
   public void save(Route route);

   public List<Route> findAllRoutes();

   public Route findRouteById(Long id);

   public Route findRouteBySourceAndDestination(String source, String destination);

   public Long generateRouteId();

   public List<Long> findAllRoutesId();
}