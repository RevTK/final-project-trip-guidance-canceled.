package com.miracle.mp.account;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AccountController {

	@Autowired
	private AccountDAO aDAO;
	
	@RequestMapping(value = "/account.regAccount.go", method = RequestMethod.GET)
	public String regAccountGo(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "account/reg.jsp");
		return "home";
	}
	
	@RequestMapping(value = "/account.regAccount.do", method = RequestMethod.GET)
	public String regAccountDo() {
		return "home";
	}
}
