package com.aeroBlasters.flightManagementSystem.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import com.aeroBlasters.flightManagementSystem.service.FlightUserService;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	private FlightUserService service;
	
	@Autowired
	private EncoderConfig config;
	
	@Autowired
	@Override
	protected void configure(AuthenticationManagerBuilder authority) throws Exception {
			authority.userDetailsService(service).passwordEncoder(config.passwordEncoder());
	}
	@Override
	public void configure(HttpSecurity http) throws Exception{
	http.authorizeHttpRequests().antMatchers("/register", "/static/**", "/images/**").permitAll().anyRequest().authenticated().and().formLogin().loginPage("/loginpage")
	.failureUrl("/loginErrorPage").loginProcessingUrl("/login")
	.permitAll().and().logout().logoutSuccessUrl("/index");
 http.csrf().disable();		
	}
	  
}