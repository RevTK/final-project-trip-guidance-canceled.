package com.tm.mp.account;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AccountController {

	@Autowired
	private AccountDAO aDAO;
	
	@RequestMapping(value = "/account.reg.go", method = RequestMethod.GET)
	public String accountRegGo(HttpServletRequest req) {
		return "account/accountReg";
	}
	
	@RequestMapping(value = "/account.reg.do", method = RequestMethod.GET)
	public String accountRegDo(AccountDTO a, HttpServletRequest req) {
		aDAO.accountRegDo(req);
		return "home";
	}
}
