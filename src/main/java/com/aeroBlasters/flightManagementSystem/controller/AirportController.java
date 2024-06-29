package com.aeroBlasters.flightManagementSystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.aeroBlasters.flightManagementSystem.bean.Airport;
import com.aeroBlasters.flightManagementSystem.dao.AirportDao;

@RestController
public class AirportController {
	
	@Autowired
	private AirportDao airportDao;
	
	@GetMapping("/index")
	public ModelAndView showIndexPage() {
		return new ModelAndView("index");
	}
	
	@GetMapping("/airport")
	public ModelAndView showAirportEntryPage() {
       Airport airport=new Airport();
       ModelAndView mv=new ModelAndView("airportEntryPage");
       mv.addObject("airportRecord",airport);
       return mv;
	}
	
	@PostMapping("/airport")
	public ModelAndView saveAirport(@ModelAttribute("airportRecord") Airport airport) {
		String str=airport.getAirportCode().toUpperCase();
		airport.setAirportCode(str);
		String stg=airport.getAirportLocation().toUpperCase();
		airport.setAirportLocation(stg);
		airportDao.addAirport(airport);
		return new ModelAndView("index");
	}
//	@PostMapping("/airport-select")
//	public ModelAndView showSingleAirportPage(@RequestParam("airport-code") String id) {
//		Airport airport=airportDao.findAirportById(id);
//		ModelAndView mv=new ModelAndView("airportShowPage");
//		mv.addObject("airport",airport);
//		return mv;
//	}
	
	@GetMapping("/airport/{id}")
	public ModelAndView showSingleAirportPage(@PathVariable("id") String id) {
		Airport airport=airportDao.findAirportById(id);
		ModelAndView mv=new ModelAndView("airportShowPage");
		mv.addObject("airport",airport);
		return mv;
	}
	@GetMapping("/airports")
	    public ModelAndView showAirportReportPage() {
	        List<Airport> airportList = airportDao.findAllAirports();
	        ModelAndView mv=new ModelAndView("airportReportPage");
	        mv.addObject("airportList",airportList);
	        return mv;
	    }
	
	// check may be it should not be commented
	
	
//	@GetMapping("/airport-select")
//    public ModelAndView showAirportSelectPage() {
//        List<String> codeList = airportDao.findAllAirportCodes();
//        ModelAndView mv=new ModelAndView("airportSelectPage");
//        mv.addObject("codeList",codeList);
//        return mv;
//    }
	
	
}
