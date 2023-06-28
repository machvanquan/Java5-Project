package com.poly.controller;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.AccountDAO;
import com.poly.entity.Account;
import com.poly.services.MailerServiceImpl;
import com.poly.utils.ParamService;
import com.poly.utils.SessionService;

import net.bytebuddy.utility.RandomString;


@Controller
@RequestMapping("home")
public class ForgotPasswordController {

	@Autowired
	AccountDAO dao;
	@Autowired
	SessionService session;
	@Autowired
	ParamService paramService;
	@Autowired
	MailerServiceImpl mailer;
	@Autowired
	ServletContext app;
	
	@RequestMapping("forgot-password")
	public String index() {		
		return "forgot-password";
	}
	

	@SuppressWarnings("unused")
	@PostMapping("forgot-password")
	public String change(Model model) {
		String email = paramService.getString("email", "");
		String username = paramService.getString("username", "");
		String subject = "Send your Password!";
		String body = "Your Password: ";
		String randomPassword = RandomString.make(6);
		
		try {
			Account user = dao.findById(username).get();
				if(!user.getEmail().equals(email)) {
					model.addAttribute("message", "Sai Email!");
				}else {
//					user.setPassword(randomPassword);
//					dao.save(user);
					mailer.send(email, subject, body+user.getPassword());
					model.addAttribute("message", "Kiểm Tra Email Của Bạn!");
				}
		} catch (Exception e) {
			model.addAttribute("message", "Account không tồn tại !");
		}
		return "forgot-password";
	}
}
