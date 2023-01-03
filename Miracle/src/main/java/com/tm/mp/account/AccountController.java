package com.tm.mp.account;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
		req.setAttribute("contentPage", "myPage/myPageMain.jsp");
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
	public String searchIdGo(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "account/search_id.jsp");
		return "index";
	}

	@RequestMapping(value = "/search.id.do", method = RequestMethod.POST)
	public String searchIdDo(AccountDTO a, HttpServletRequest req, Model m,
			@RequestParam(required = true, value = "ac_name") String ac_name,
			@RequestParam(required = true, value = "ac_email") String ac_email) {
		aDAO.searchIdDo(a, req, m, ac_name, ac_email);
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "account/search_result_id.jsp");
		return "index";
	}

	@RequestMapping(value = "/search.pw.go", method = RequestMethod.GET)
	public String searchPwGo(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "account/search_pw.jsp");
		return "index";
	}

	@RequestMapping(value = "/search.pw.do", method = RequestMethod.POST)
	public String searchPwDo(HttpServletRequest req, AccountDTO a) {
		aDAO.loginCheck(req);
		req.setAttribute("Account", a);
		req.setAttribute("contentPage", "account/pwReg.jsp");
		return "index";
	}

	@RequestMapping(value = "/changePw.do", method = RequestMethod.POST)
	public String changePwDo(AccountDTO a, HttpServletRequest req) {
		aDAO.changePwDo(req, a);
		req.setAttribute("contentPage", "home.jsp");
		aDAO.loginCheck(req);
		return "index";
	}

	@RequestMapping(value = "/emailCheck.do", method = RequestMethod.GET)
	@ResponseBody
	public String emailCheckDo(HttpServletRequest req, String ac_email) {
		aDAO.loginCheck(req);
		return aDAO.emailCheckDo(ac_email);
	}

	@RequestMapping(value = "/account.info", method = RequestMethod.GET)
	public String accountInfo(AccountDTO a, HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "home.jsp");
		return "index";
	}
}
