package com.aeroBlasters.flightManagementSystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.aeroBlasters.flightManagementSystem.bean.FlightUser;
import com.aeroBlasters.flightManagementSystem.dao.FlightUserRepository;

@Service
public class FlightUserService implements UserDetailsService{
@Autowired
private FlightUserRepository repository;
private String type;

//To save user details in database
public void save(FlightUser user) {
	repository.save(user);
}
public String getType() {
	return type;
}
//either storing or retrieving one user details in db
@Override
public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException{
FlightUser users=repository.findById(username).get();
type=users.getType();
return users;
}
}

