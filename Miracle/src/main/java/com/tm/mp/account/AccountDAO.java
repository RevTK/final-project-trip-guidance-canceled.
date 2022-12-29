package com.tm.mp.account;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Service
public class AccountDAO {

	@Autowired
	private SqlSession ss;

	public void loginCheck(HttpServletRequest req) {
		AccountDTO a = (AccountDTO) req.getSession().getAttribute("loginAccount");
		if (a != null) {
			req.setAttribute("loginPage", "account/loginSuccess.jsp");
		} else {
			req.setAttribute("loginPage", "account/login.jsp");
		}

	}

	public void accountRegDo(HttpServletRequest req) {
		String path = req.getSession().getServletContext().getRealPath("resources/files");
		MultipartRequest mr = null;
		String a_id = mr.getParameter("a_id");
		try {
			mr = new MultipartRequest(req, path, 10 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void accountLoginDo(AccountDTO a, HttpServletRequest req) {
		AccountDTO dbAccount = ss.getMapper(AccountMapper.class).getAccountByID(a);

		if (dbAccount != null) {
			if (a.getA_pw().equals(dbAccount.getA_pw())) {
				req.getSession().setAttribute("loginAccount", dbAccount);
				req.getSession().setMaxInactiveInterval(60 * 10);
			} else {
				req.setAttribute("result", "비밀번호 오류");
			}
		} else {
			req.setAttribute("result", "가입하지 않은 회원");
		}

	}
}
