
package com.aeroBlasters.flightManagementSystem.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.aeroBlasters.flightManagementSystem.bean.FlightUser;

public interface FlightUserRepository extends JpaRepository<FlightUser, String> {
	Optional<FlightUser> findByUsername(String username);
}
