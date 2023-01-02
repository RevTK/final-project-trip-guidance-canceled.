package com.tm.mp.account;

import java.io.UnsupportedEncodingException;

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

	public void accountRegDo(AccountDTO a, HttpServletRequest req) {
		String path = req.getSession().getServletContext().getRealPath("resources/files");
		MultipartRequest mr = null;
		try {
			mr = new MultipartRequest(req, path, 10 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());

			String ac_id = mr.getParameter("ac_id");
			String ac_pw = mr.getParameter("ac_pw");
			String ac_name = mr.getParameter("ac_name");
			String ac_addr = mr.getParameter("ac_addr");
			String ac_email = mr.getParameter("ac_email");
			String ac_pic = mr.getFilesystemName("ac_pic");

			a.setAc_id(ac_id);
			a.setAc_pw(ac_pw);
			a.setAc_name(ac_name);
			a.setAc_addr(ac_addr);
			a.setAc_email(ac_email);
			a.setAc_pic(ac_pic);

			if (ss.getMapper(AccountMapper.class).regAccount(a) == 1) {
				req.setAttribute("result", "가입성공");
			} else {
				req.setAttribute("result", "가입실패");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void accountLoginDo(AccountDTO a, HttpServletRequest req) {
		AccountDTO dbAccount = ss.getMapper(AccountMapper.class).getAccountByID(a);

		if (dbAccount != null) {
			if (a.getAc_pw().equals(dbAccount.getAc_pw())) {
				req.getSession().setAttribute("loginAccount", dbAccount);
				req.getSession().setMaxInactiveInterval(60 * 10);
			} else {
				req.setAttribute("result", "비밀번호 오류");
			}
		} else {
			req.setAttribute("result", "가입하지 않은 회원");
		}

	}

	public void accountLogoutDo(AccountDTO a, HttpServletRequest req) {
		req.getSession().setAttribute("loginAccount", null);
	}

}
