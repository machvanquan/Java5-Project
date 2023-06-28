package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.ProductDAO;
import com.poly.entity.Product;


@Controller
@RequestMapping("home")
public class HomeController {
	
	@Autowired
	ProductDAO dao;

	@RequestMapping("index")
	public String Index(Model model) {
		List<Product> top8price = dao.findTop8Price();
		model.addAttribute("top8price", top8price);
		List<Product> top8date = dao.findTop8Date();
		model.addAttribute("top8date", top8date);
		
		return "index";
	}
	
	@RequestMapping("contact")
	public String Contact(Model model) {
		return "contact";
	}
	
	
}
