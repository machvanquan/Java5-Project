package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.AccountDAO;
import com.poly.dao.ProductDAO;
import com.poly.utils.CookieService;
import com.poly.utils.ParamService;
import com.poly.utils.SessionService;

import com.poly.entity.Product;


@Controller
@RequestMapping("home")
public class DetailController {

	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	AccountDAO accDAO;
	@Autowired
	ProductDAO proDAO;
	
	@RequestMapping("detail")
	public String index(ModelMap model) {
		List<Product> toplike = proDAO.findTop5like();
		model.addAttribute("toplike", toplike);
		return "detail";
	}
	
	@RequestMapping(value = "detail/{id}")
	public String view(ModelMap model, @PathVariable("id") int id) {
		Product product = new Product();
		List<Product> products = proDAO.findAll();
		for (Product pr : products) {
			if (pr.getId() == id) {
				product = pr;
				break;
			}
		}
		model.addAttribute("products", products);
		model.addAttribute("pr", product);
		List<Product> toplike = proDAO.findTop5like();
		model.addAttribute("toplike", toplike);
		return "detail";
	}
	
	
}
