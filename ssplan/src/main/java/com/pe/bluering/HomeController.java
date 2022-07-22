package com.pe.bluering;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "index";
	}
	
	
	@RequestMapping(value = "/noticeDetail", method = RequestMethod.GET)
	public String noticeDetail(Locale locale, Model model) {
		
		return "noticeDetail";
	}
	
	
	@RequestMapping(value = "/portfolioDetail", method = RequestMethod.GET)
	public String portfolioDetail(Locale locale, Model model) {
	
		
		return "portfolioDetail";
	}
	
}