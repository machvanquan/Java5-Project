package com.poly.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.AccountDAO;
import com.poly.utils.ParamService;
import com.poly.entity.Account;

@Controller
@RequestMapping("home")
public class RegissterController {

	@Autowired
	ParamService paramService;
	
	@Autowired
	AccountDAO accountDAO;
	
	@RequestMapping("register")
	public String register(Model model) {
		Account item = new Account();
		model.addAttribute("item", item);
		return "register";
	}
	
	@RequestMapping("/register/create")
	public String create(Model model, Account item) {
		item.setActivated(false);
		item.setAdmin(false);
		accountDAO.save(item);
		model.addAttribute("message", "Insert successfully");
		return "redirect:/home/login";
	}
	

	@ModelAttribute("activateds")
	public Map<Boolean, String>getActivateds(){
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Active");
		map.put(false, "Unactive");
		return map;
	}
	
	@ModelAttribute("admins")
	public Map<Boolean, String>getAdmins(){
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Admin");
		map.put(false, "Customer");
		return map;
	}
}
