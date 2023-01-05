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

	@RequestMapping(value = "/review.main.go", method = RequestMethod.GET)
	public String reviewMainGo(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "review/reviewMain.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/community.main.go", method = RequestMethod.GET)
	public String communityMainGo(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "community/communityMain.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/account.login.go", method = RequestMethod.GET)
	public String accountLoginGo(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "account/loginPage.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/rec.kakao.go", method = RequestMethod.GET)
	public String recKakaoGo(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "rec/recKakao.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/myPage.main.go", method = RequestMethod.GET)
	public String myPageMainGo(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "myPage/myPageMain.jsp");
		return "index";
	}

	@RequestMapping(value = "/admin.main.go", method = RequestMethod.GET)
	public String adminMainGo(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "admin/admin.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/news.main.go", method = RequestMethod.GET)
	public String newsMainGo(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "news/newsMain.jsp");
		return "index";
	}

	// --디자인2---------------------------------------------------------

	@RequestMapping(value = "/index2.go", method = RequestMethod.GET)
	public String index2Go(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "home2.jsp");
		return "index2";
	}

	@RequestMapping(value = "/account2.login.go", method = RequestMethod.GET)
	public String accountLoginGo2(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "account/loginPage.jsp");
		return "index2";
	}

	// --디자인3---------------------------------------------------------

	@RequestMapping(value = "/index3.go", method = RequestMethod.GET)
	public String index3Go(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "home3.jsp");
		return "index3";
	}

	@RequestMapping(value = "/account3.login.go", method = RequestMethod.GET)
	public String accountLoginGo3(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "account/loginPage.jsp");
		return "index3";
	}

	
	// --디자인3---------------------------------------------------------

	@RequestMapping(value = "/index4.go", method = RequestMethod.GET)
	public String index4Go(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "home4.jsp");
		return "index4";
	}

	@RequestMapping(value = "/account4.login.go", method = RequestMethod.GET)
	public String accountLoginGo4(HttpServletRequest req) {
		aDAO.loginCheck(req);
		req.setAttribute("contentPage", "account/loginPage.jsp");
		return "index4";
	}

}
