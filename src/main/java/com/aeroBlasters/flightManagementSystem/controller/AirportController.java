package com.aeroBlasters.flightManagementSystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.aeroBlasters.flightManagementSystem.bean.Airport;
import com.aeroBlasters.flightManagementSystem.dao.AirportDao;
import com.aeroBlasters.flightManagementSystem.exception.AirportException;

@RestController
public class AirportController {

	@Autowired
	private AirportDao airportDao;

	@GetMapping("/airport")
	public ModelAndView showAirportEntryPage() {
		try {
			Airport airport = new Airport();
			ModelAndView mv = new ModelAndView("airportEntryPage");
			mv.addObject("airport_data", airport);
			return mv;
		} catch (Exception e) {
			throw new AirportException("Error displaying airport entry page: " + e.getMessage());
		}
	}

	@PostMapping("/airport")
	public ModelAndView saveAirport(@ModelAttribute("airport_data") Airport airport) {
		try {
			System.out.println(airport.getAirportCode());
			String str = airport.getAirportCode().toUpperCase();
			System.out.println(str);
			airport.setAirportCode(str);
			String stg = airport.getAirportLocation().toUpperCase();
			airport.setAirportLocation(stg);
			if (airport.getAirportCode().length() != 3) {
				throw new AirportException("Airport code must be 3 characters long.");
			}
			if (airport.getAirportLocation().length() < 3) {
				throw new AirportException("Airport location must be at least 3 characters long.");
			}
			airportDao.addAirport(airport);
			return new ModelAndView("redirect:/index");
		} catch (Exception e) {
			throw new AirportException("Error saving airport: " + e.getMessage());
		}
	}

	@GetMapping("/airport/{id}")
	public ModelAndView showSingleAirportPage(@PathVariable("id") String id) {
		try {
			Airport airport = airportDao.findAirportById(id.toUpperCase());
			if (airport == null) {
				throw new AirportException("Airport with ID " + id + " not found.");
			}
			ModelAndView mv = new ModelAndView("airportShowPage");
			mv.addObject("airport", airport);
			return mv;
		} catch (Exception e) {
			throw new AirportException("Error displaying airport: " + e.getMessage());
		}
	}

	@GetMapping("/airports")
	public ModelAndView showAirportReportPage() {
		try {
			List<Airport> airportList = airportDao.findAllAirports();
			ModelAndView mv = new ModelAndView("airportReportPage");
			mv.addObject("airportList", airportList);
			return mv;
		} catch (Exception e) {
			throw new AirportException("Error displaying airport report page: " + e.getMessage());
		}
	}

	@ExceptionHandler(value = AirportException.class)
	public ModelAndView handlingRouteException(AirportException exception) {
		String message = "Airport Exception: " + exception.getMessage();
		ModelAndView mv = new ModelAndView("airportErrorPage");
		mv.addObject("errorMessage", message);
		return mv;
	}
}