package com.aeroBlasters.flightManagementSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.aeroBlasters.flightManagementSystem.bean.FlightUser;
import com.aeroBlasters.flightManagementSystem.service.FlightUserService;

// this is for checks

@RestController
public class LoginController {
	
	@Autowired
	private FlightUserService service;
	
	@Autowired
	private BCryptPasswordEncoder bCrypt;

	// this is for signup 
	@GetMapping("/register")
	public ModelAndView showUserRegisterPage() {
		FlightUser user=new FlightUser();
		ModelAndView mv=new ModelAndView("newUserEntry");
		mv.addObject("userRecord", user);
		return mv;
	}
	
// this is for login page 
	@GetMapping("/loginpage")
	public ModelAndView showloginPage() {
		
		return new ModelAndView("loginPage");
	}

	
	@GetMapping("/loginErrorPage")
	public ModelAndView showloginErrorPage() {
		return new ModelAndView("loginErrorPage");
	}

	
	@PostMapping("/register")
	public ModelAndView saveUserRegistrationPage(@ModelAttribute("userRecord") FlightUser user) {
		String encodedPassword = bCrypt.encode(user.getPassword()); // encryptes the password
		FlightUser newUser=new FlightUser();
        newUser.setUsername(user.getUsername());
        newUser.setPassword(encodedPassword);
        newUser.setType(user.getType());
         service.save(newUser);
		return new ModelAndView("loginPage");
	}

	
}