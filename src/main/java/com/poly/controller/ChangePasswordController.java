package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.AccountDAO;
import com.poly.entity.Account;
import com.poly.utils.ParamService;

@Controller
@RequestMapping("home")
public class ChangePasswordController {

	@Autowired
	ParamService paramService;
	
	@Autowired
	AccountDAO accDAO;
	
	@RequestMapping("change-password")
	public String index() {
		return "change-password";
	}
	
	@PostMapping("change-password")
	public String change(Model model) {
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		String newpassword= paramService.getString("newpassword", "");
		String confirmpassword= paramService.getString("confirmpassword", "");
		try {
			Account user = accDAO.findById(username).get();
				if(!user.getPassword().equals(password)) {
					model.addAttribute("message", "Wrong Password!");
				}else {
					if(newpassword.equals(confirmpassword)) {
						user.setPassword(confirmpassword);
						accDAO.save(user);
						model.addAttribute("message", "Đã đổi password");
					}else {
						model.addAttribute("message", "Password not match !");
					}
				}
		} catch (Exception e) {
			model.addAttribute("message", "Tài khoản không tồn tại !");
		}
		return "change-password";
	}
}
