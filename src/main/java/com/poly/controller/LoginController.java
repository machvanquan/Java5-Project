package com.poly.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.AccountDAO;
import com.poly.dao.ProductDAO;
import com.poly.entity.Account;
import com.poly.utils.CookieService;
import com.poly.utils.ParamService;
import com.poly.utils.SessionService;



@Controller
@RequestMapping("home")
public class LoginController {

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

	@GetMapping("login")
	public String Login() {
		return "login";
	}
	
	@SuppressWarnings("unused")
	@PostMapping("login")
	public String loginPost(Model model,HttpServletRequest request) {
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		boolean remember = paramService.getBoolean("remember", false);
		try {
			Account user = accDAO.findById(username).get();
			if (!user.getPassword().equals(password)) {
				model.addAttribute("message", "Sai mật khẩu !");
			} else {
				sessionService.set("user", user);
//				if(user!=null) {
//					request.setAttribute("isLogin", true);
//					request.setAttribute("admin", user.isAdmin());
//					request.setAttribute("fullname", user.getFullname());
//					request.setAttribute("username", user.getUsername());
//					request.setAttribute("photo", user.getPhoto());
//					request.setAttribute("email", user.getEmail());
//				}else {
//					request.setAttribute("isLogin", false);
//				}
				if (remember) {
					cookieService.add("username", user.getUsername(), 10);
					cookieService.add("password", user.getPassword(), 10);
				} else {
					cookieService.remove("username");
					cookieService.remove("password");
				}
				return "index";
			}
		} catch (Exception e) {
			model.addAttribute("message", "Tài khoản không tồn tại !");
		}
		return "login";
	}
	
}
