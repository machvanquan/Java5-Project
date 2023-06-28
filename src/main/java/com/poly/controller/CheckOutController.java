package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.OrderDetailDAO;
import com.poly.services.CheckOutService;
import com.poly.services.ShoppingCartService;
import com.poly.utils.ParamService;
import com.poly.utils.SessionService;
import com.poly.entity.*;


@Controller
@RequestMapping("home")
public class CheckOutController {
	@Autowired
	ShoppingCartService shoppingCartService;
	
	@Autowired
	SessionService sessionService;
	
	@Autowired
	ParamService paramService;
	
	@Autowired
	CheckOutService checkOutService;
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	@RequestMapping("checkout")
	public String checkout(Model model) {
		model.addAttribute("cart", shoppingCartService);
		return "checkout";
	}
	
	@RequestMapping("order-detail")
	public String orderdetail(Model model) {
		String address = paramService.getString("address", "");
		if(!shoppingCartService.getItems().isEmpty()) {
			if(address.equals("")) {
				return "redirect:/home/checkout";
			}
			Account user = sessionService.get("user");
			Order order = checkOutService.order(user, address);
			List<OrderDetail> items = orderDetailDAO.findByOrderID(order.getId());
			model.addAttribute("order", order);
			model.addAttribute("items",items);
			return "order-detail";
		}
		return "redirect:/home/index";
	}
}
