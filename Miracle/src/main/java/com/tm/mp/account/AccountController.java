package com.tm.mp.account;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AccountController {

	@Autowired
	private AccountDAO aDAO;

	@RequestMapping(value = "/account.reg.go", method = RequestMethod.GET)
	public String accountRegGo(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "account/accountReg.jsp");
		return "index";
	}

	@RequestMapping(value = "/account.reg.do", method = RequestMethod.POST)
	public String accountRegDo(AccountDTO a, HttpServletRequest req) {
		aDAO.accountRegDo(a, req);
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "home.jsp");
		return "index";
	}

	@RequestMapping(value = "/account.login.do", method = RequestMethod.POST)
	public String accountLoginDo(AccountDTO a, HttpServletRequest req) {
		aDAO.accountLoginDo(a, req);
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "home.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/account.logout.do", method = RequestMethod.GET)
	public String accountLogoutDo(AccountDTO a, HttpServletRequest req) {
		aDAO.accountLogoutDo(a, req);
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "home.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/search.id.go", method = RequestMethod.GET)
	public String searchIdGo(AccountDTO a, HttpServletRequest req, Model m) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "home.jsp");
		return "/account/search_id";
	}
	
	@RequestMapping(value = "/search.pw.go", method = RequestMethod.GET)
	public String searchPwGo(AccountDTO a, HttpServletRequest req, Model m) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "home.jsp");
		return "/account/search_pw";
	}
	
	@RequestMapping(value = "/account.info", method = RequestMethod.GET)
	public String accountInfo(AccountDTO a, HttpServletRequest req) {
		return "index";
	}
}
