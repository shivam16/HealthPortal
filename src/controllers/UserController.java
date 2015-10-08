package controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import model.User;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller  
@RequestMapping("/user")
public class UserController {
       
              @RequestMapping(value = "/login", method = RequestMethod.POST)
              public ModelAndView validate(HttpServletRequest request, HttpServletResponse response, @Valid User user, BindingResult result) {
                     if (result.hasErrors()) {
                           return new ModelAndView("UserLogin","command",new User());
                     } 
                     else {
                           String email = request.getParameter("email");
                           String password = request.getParameter("password");
                           User user1 = new User();
                           boolean status = user1.validateLogin(email, password);
                           if(status){
                                  HttpSession session = request.getSession();
                                  session.setAttribute("user", user1);
                                  return new ModelAndView("Profile");
                           }
                           else{
                                  return new ModelAndView("UserLogin");
                           }
                     }
              }

              @RequestMapping(method = RequestMethod.GET)
              public String displayCustomerForm(ModelMap model) {
                     model.addAttribute("user", new User());
                     return "UserSignup";
              }
}

