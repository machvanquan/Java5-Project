package com.poly.services;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.poly.dao.ProductDAO;
import com.poly.entity.Item;
import com.poly.entity.Product;

@SessionScope
@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {
	Map<Integer, Item> map = new HashMap<>();
	@Autowired
	ProductDAO productDAO;

	@Override
	public double getTotal() {
		double total = 0;
		for (Item item : map.values()) {
			total += (item.getPrice() * item.getQty());
		}
		return total;
	}

	@Override
	public Item add(Integer id) {
		Item item = map.get(id);
		if (item == null) {
			Product product = productDAO.findById(id).get();
			item = new Item();
			item.setId(product.getId());
			item.setImage(product.getImage());
			item.setName(product.getName());
			item.setPrice(product.getPrice());
			item.setQty(1);
			map.put(id, item);
		} else {
			item.setQty(item.getQty() + 1);
		}
		return item;
	}

	@Override
	public Item sub(Integer id) {
		Item item = map.get(id);
		if (item == null) {
			Product product = productDAO.findById(id).get();
			item = new Item();
			item.setId(product.getId());
			item.setImage(product.getImage());
			item.setName(product.getName());
			item.setPrice(product.getPrice());
			item.setQty(1);
			map.put(id, item);
		} else {
			if (item.getQty() > 1) {
				item.setQty(item.getQty() - 1);
			} else {
				item.setQty(1);
			}
		}
		return item;
	}

	@Override
	public void remove(Integer id) {
		map.remove(id);
	}

	@Override
	public Item update(Integer id, int qty) {
		Item item = map.get(id);
		item.setQty(qty);
		return item;
	}

	@Override
	public void clear() {
		map.clear();
	}

	@Override
	public Collection<Item> getItems() {
		return map.values();
	}

	@Override
	public int getCount() {
		return map.values().stream().mapToInt(item -> item.getQty()).sum();
	}

	@Override
	public double getAmount() {
		return map.values().stream().mapToDouble(item -> item.getPrice() * item.getQty()).sum();
	}
}