package com.tm.mp.account;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import java.text.ParseException;

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

	@RequestMapping(value = "/naverLogin.go", method = RequestMethod.GET)
	public String naverLoginGo(AccountDTO a, HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "account/naverLogin.jsp");
		return "index";
	}

	@RequestMapping(value = "/naverlogin.check", method = RequestMethod.GET)
	@ResponseBody
	public int naverLoginCheck(HttpServletRequest req, AccountDTO a) {
		aDAO.loginCheck(req);
		return aDAO.naverLogin(a);
	}

	@RequestMapping(value = "/naverLogin.do", method = RequestMethod.GET)
	public String naverloginDo(HttpServletRequest req, AccountDTO a) {
		if (req.getParameter("ac_id") != null) {
			aDAO.loginNaver(req, a);
			aDAO.loginCheck(req);
		} else {
			System.out.println("로그인 실패");
		}
		req.setAttribute("contentPage", "home.jsp");

		return "index";
	}

	@RequestMapping(value = "/naverJoin.go", method = RequestMethod.GET)
	public String naverjoingo(HttpServletRequest req, AccountDTO a) {
		aDAO.naverJoin(req, a);
		a.setAc_linkWhere(3);
		aDAO.accountLoginDo(a, req);
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "home.jsp");

		return "index";
	}

	@RequestMapping(value = "/kakaoLogin.check", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public int kakaoLoginCheck(@RequestParam("ac_name") String ac_name, @RequestParam("ac_email") String ac_email,
			@RequestParam("ac_pic") String ac_pic, HttpServletRequest req,
			AccountDTO a) throws ParseException {
		int kakaoLogin = aDAO.kakaoLogin(ac_name, ac_email, ac_pic, req, a);
		aDAO.loginCheck(req);
		return kakaoLogin;
	}

	@RequestMapping(value = "/search.id.go", method = RequestMethod.GET)
	public String searchIdGo(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "account/search_id.jsp");
		return "index";
	}

	@RequestMapping(value = "/search.id.do", method = RequestMethod.POST)
	public String searchIdDo(AccountDTO a, HttpServletRequest req) {
		aDAO.searchIdDo(a, req);
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
}
