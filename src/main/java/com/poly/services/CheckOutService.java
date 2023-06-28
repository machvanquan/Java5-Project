package com.poly.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.dao.OrderDAO;
import com.poly.dao.OrderDetailDAO;
import com.poly.entity.Account;
import com.poly.entity.*;


@Service
public class CheckOutService {

	
	@Autowired
	ShoppingCartService shoppingCartService;
	
	@Autowired
	OrderDAO orderDAO;
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	public Order order (Account user, String address) {
		Order order = new Order();
		order.setAccount(user);
		order.setAddress(address);
		orderDAO.save(order);
		for(Item item:shoppingCartService.getItems()) {
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setOrder(order);
			orderDetail.setPrice(item.getPrice());
			orderDetail.setQuantity(item.getQty());
			
			Product product = new Product();
			product.setId(item.getId());
			product.setName(item.getName());
			orderDetail.setProduct(product);
			orderDetailDAO.save(orderDetail);
		}
		shoppingCartService.clear();
		return order;
	}
}
