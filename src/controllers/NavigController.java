package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class NavigController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
    public String homePage() {
           return "index";
    }
    
    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String aboutPage() {
           return "about";
    }
    
    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String contactPage() {
           return "contact";
    }
    
    @RequestMapping(value = "/UserLogin", method = RequestMethod.GET)
    public String userLoginPage() {
           return "UserLogin";
    }
    
    @RequestMapping(value = "/DoctorLogin", method = RequestMethod.GET)
    public String doctorLoginPage() {
           return "DoctorLogin";
    }
    
    @RequestMapping(value = "/patientservices", method = RequestMethod.GET)
    public String patientServicesPage() {
           return "PatientServices";
    }


}
