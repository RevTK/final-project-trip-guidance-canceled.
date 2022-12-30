package com.tm.mp.mypage;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tm.mp.account.AccountDAO;

@Controller
public class MyPageController {

	@Autowired
	private AccountDAO aDAO;
	
	@Autowired
	private MyPageDAO mpDAO;
	
	@RequestMapping(value = "/myPage.info.go", method = RequestMethod.GET)
	public String myPageInfoGo(HttpServletRequest req, AccountDAO a) {
		
		aDAO.loginCheck(req);
		mpDAO.getAllMyPage(req,a);
		
		req.setAttribute("contentPage", "myPage/myPageInfo.jsp");
		
		return "index";
	}
	
	
	@RequestMapping(value = "/myPage.modify.go", method = RequestMethod.GET)
	public String myPageModifyGo(HttpServletRequest req) {
		
		aDAO.loginCheck(req);
		
		req.setAttribute("contentPage", "myPage/myPageModify.jsp");
		
		return "index";
	}
	
	@RequestMapping(value = "/myPage.mypost.go", method = RequestMethod.GET)
	public String myPageMyPostGo(HttpServletRequest req) {
		
		aDAO.loginCheck(req);
		
		req.setAttribute("contentPage", "myPage/myPageMyPost.jsp");
		
		return "index";
	}
	
	
	
	
	
	
	
	
	
}
