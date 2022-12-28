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
	
	@RequestMapping(value = "/regAccount.go", method = RequestMethod.GET)
	public String regAccountGo(HttpServletRequest req) {
		return "account/accountReg";
	}
	
	@RequestMapping(value = "/regAccount.do", method = RequestMethod.GET)
	public String regAccountDo(AccountDTO a, HttpServletRequest req) {
		aDAO.regAccount(req);
		return "home";
	}
}
