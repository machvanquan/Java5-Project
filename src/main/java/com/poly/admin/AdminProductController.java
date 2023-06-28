package com.poly.admin;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.CategoryDAO;
import com.poly.dao.ProductDAO;
import com.poly.entity.Category;
import com.poly.entity.Product;


@Controller
@RequestMapping("admin")
public class AdminProductController {
	@Autowired
	ProductDAO dao;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping("product")
	public String paginate(Model model,	@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 10);
		Page<Product> page = dao.findAll(pageable);
		int currentPage =1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);
		return "ADproductList";
	}
	
	@RequestMapping("productControl")
	public String control(Model model) {
		Product item = new Product();
		model.addAttribute("item", item);
		return "ADproductControl";
	}

	@RequestMapping("/product/edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer id) {
		Product item = dao.findById(id).get();
		model.addAttribute("item", item);
		List<Product> items = dao.findAll();
		model.addAttribute("items", items);
		return "ADproductControl";
	}
	
	@RequestMapping("/product/create")
	public String create(Product item) {
		item.setCreateDate(new Date());
		dao.save(item);
		return "redirect:/admin/productControl";
	}
	
	@RequestMapping("/product/delete/{id}")
	public String create(@PathVariable("id") Integer id) {
		dao.deleteById(id);
		return "redirect:/admin/product";
	}
	
	@RequestMapping("/product/update")
	public String update(Product item) {
		dao.save(item);
		return "redirect:/admin/product/edit/" + item.getId();
	}
	
	@ModelAttribute("categories")
	public List<Category> getCategories() {
		List<Category> categories = categoryDAO.findAll();
		return categories;
	}
	
	
	@ModelAttribute("availables")
	public Map<Boolean, String>getAdmins(){
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Stocking");
		map.put(false, "Out of Stock");
		return map;
	}
}
