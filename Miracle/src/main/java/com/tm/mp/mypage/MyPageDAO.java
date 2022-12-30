package com.tm.mp.mypage;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tm.mp.account.AccountDAO;

@Service
public class MyPageDAO {
	
	@Autowired
	private SqlSession ss;

	public void getAllMyPage(HttpServletRequest req, AccountDAO a) {
		req.setAttribute("mypages", ss.getMapper(MyPageMapper.class).showAllPage(a));
		
	}
	
	

}
