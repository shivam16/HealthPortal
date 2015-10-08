package com.sapient.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DoctorController {
	@RequestMapping(value="/doctorLogin", method=RequestMethod.POST)
	public String DoctorLogin(){
		
		return "Doctorsprofile";
	}

}
