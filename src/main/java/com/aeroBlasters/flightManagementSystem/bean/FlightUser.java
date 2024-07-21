package com.aeroBlasters.flightManagementSystem.bean;

import java.io.Serializable;
import java.util.ArrayList;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class FlightUser extends User implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	// @Column(name = "user_name")
	private String username;
	private String password;
	private String type;

	/*
	 * public flightUser() {
	 * //super("abc","pqr",new ArrayList<>());
	 * }
	 */
	public FlightUser() {
		super("abc", "pqr", new ArrayList<>());
		// TODO Auto-generated constructor stub
	}

	public FlightUser(String username, String password, java.util.Collection<? extends GrantedAuthority> authorities,
			String username2, String password2, String type2) {
		super(username, password, authorities);
		this.username = username2;
		this.password = password2;
		this.type = type2;

	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "flightUser [username=" + username + ", password=" + password + ", type=" + type + "]";
	}
}