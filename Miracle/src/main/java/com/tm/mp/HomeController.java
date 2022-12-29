package com.tm.mp;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tm.mp.account.AccountDAO;
@Controller
public class HomeController {
	
	@Autowired
	private AccountDAO aDAO;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "home.jsp");
		return "index";
	}

	
	@RequestMapping(value = "/index.go", method = RequestMethod.GET)
	public String indexGo(HttpServletRequest req) {
		return home(req);
	}
	
	
	@RequestMapping(value = "/account.login.go", method = RequestMethod.GET)
	public String accountLoginGo(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "account/loginPage.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/rec.main.go", method = RequestMethod.GET)
	public String recMainGo(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "rec/recMain.jsp");
		return "index";
	}
	
	
	@RequestMapping(value = "/myPage.main.go", method = RequestMethod.GET)
	public String myPageMainGo(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "myPage/myPageMain.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/event.main.go", method = RequestMethod.GET)
	public String eventMainGo(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "event/eventMain.jsp");
		return "index";
	}
}
