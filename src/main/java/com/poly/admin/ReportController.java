package com.poly.admin;

import java.util.Date;
import java.util.List;
import java.util.Optional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.AccountDAO;
import com.poly.dao.OrderDAO;
import com.poly.dao.OrderDetailDAO;
import com.poly.dao.ProductDAO;
import com.poly.entity.Order;
import com.poly.entity.ReportCategory;
import com.poly.entity.Top10;
import com.poly.entity.TopCustomer;
import com.poly.utils.CookieService;
import com.poly.utils.ParamService;
import com.poly.utils.SessionService;
import com.poly.entity.RevenueReport;


@RequestMapping("admin")
@Controller
public class ReportController {

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
	
	@Autowired
	OrderDAO orderDAO;
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	@RequestMapping("bestsaler")
	public String bestSaler(Model model) {
		Pageable pageable = PageRequest.of(0, 10000); 
		Page<Top10> topList = orderDetailDAO.getTop10(pageable);
		model.addAttribute("topList", topList);
		return ("ADbestsaler");
	}
	
	@RequestMapping("topcustomer")
	public String topCustomer(Model model) {
		List<TopCustomer> topCustomer = accDAO.getTopAccount();
		model.addAttribute("topCustomer", topCustomer);
		return ("ADtopcustomer");
	}
	
	@RequestMapping("reportcategory")
	public String inventory(Model model) {
		List<ReportCategory> items = proDAO.getReportCategory();
		model.addAttribute("items", items);
		return "ADreportcategory";
	}
	
	@RequestMapping("reportOrderByDate")
	public String reportOrderByDate(Model model) {
		return "ADreportOrderByDate";
	}
	
	
	@PostMapping("reportOrderByDate")
	public String reportByDate(Model model, @RequestParam("p") Optional<Integer> p) {
		Date firstDate = paramService.getDate("firstDate", "dd-mm-yyyy");
		Date lastDate = paramService.getDate("lastDate", "dd-mm-yyyy");
		sessionService.set("firstDate", firstDate);
		sessionService.set("lastDate", lastDate);
		Pageable pageable = PageRequest.of(p.orElse(0), 1000);
		Page<Order> page = orderDAO.findOrderByDate(firstDate, lastDate, pageable);
		model.addAttribute("page", page);
		return "ADreportOrderByDate";
	}
	
	
	@RequestMapping("revenuereport")
	public String RevenueReport(Model model) {
		List<RevenueReport> items = orderDetailDAO.getRevenueByCategory();
		model.addAttribute("items", items);
		return "ADrevenuereport";
	}
	
}
