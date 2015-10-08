package controllers;

import java.util.List;

import model.PatientServices;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ServicesController {
	@RequestMapping(value="/services" , params = {"specification"}, method=RequestMethod.GET)
	public String retrieveDoctor(@RequestParam(value = "specification") String specs, ModelMap model)
	{
		PatientServices services=new PatientServices();
		List list=services.retrieveDoctor(specs);
		model.addAttribute("name",((PatientServices)list).getName());
		model.addAttribute("city", ((PatientServices)list).getCity());
		return "services";
		
	}

}
