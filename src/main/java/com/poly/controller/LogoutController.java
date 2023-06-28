package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.utils.SessionService;

@Controller
@RequestMapping("home")
public class LogoutController {

	@Autowired
	SessionService sessionService;
	
	@RequestMapping("logout")
	public String Logout() {
		sessionService.remove("user");
		return "redirect:/home/index";
	}
}
