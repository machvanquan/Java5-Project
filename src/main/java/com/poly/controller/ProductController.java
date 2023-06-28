package com.poly.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.ProductDAO;
import com.poly.entity.Product;
import com.poly.utils.SessionService;

@Controller
@RequestMapping("home")
public class ProductController {

	@Autowired
	ProductDAO dao;
	
	@Autowired
	SessionService session;
	
	@RequestMapping("product")
	public String searchAndPage(Model model, 
			@RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String keywords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", keywords);
		Pageable pageable = PageRequest.of(p.orElse(0), 9);
		Page<Product> page = dao.findAllByNameLike("%"+keywords+"%", pageable);
		model.addAttribute("page", page);
		return "product";
	}
	
	@RequestMapping("product/sort/name")
	public String name(Model model,
			@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 9);
		Page<Product> page = dao.sortByName(pageable);
		model.addAttribute("page", page);
		return "product";
	}
	
	@RequestMapping("product/sort/price")
	public String price(Model model,
			@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 9);
		Page<Product> page = dao.sortByPrice(pageable);
		model.addAttribute("page", page);
		return "product";
	}
	
	@RequestMapping("product/sort/createDate")
	public String date(Model model,
			@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 9);
		Page<Product> page = dao.sortByDate(pageable);
		model.addAttribute("page", page);
		return "product";
	}
	
	
	@RequestMapping("product/price")
	public String searchGia(Model model, @RequestParam("min") Optional<Integer> min,
			@RequestParam("max") Optional<Integer> max, @RequestParam("p") Optional<Integer> p) {
		Integer minPrice = min.orElse(Integer.MIN_VALUE);
		Integer maxPrice = max.orElse(Integer.MAX_VALUE);
		session.set("max", maxPrice);
		session.set("min", minPrice);
		Pageable pageable = PageRequest.of(p.orElse(0), 9);
		Page<Product> page = dao.findByPrice(minPrice, maxPrice, pageable);
		model.addAttribute("page", page);
		return "product";

	}
	
}
