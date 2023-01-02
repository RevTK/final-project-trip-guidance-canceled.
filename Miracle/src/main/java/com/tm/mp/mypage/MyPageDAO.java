package com.tm.mp.mypage;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.URLEditor;
import org.springframework.stereotype.Service;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.tm.mp.account.AccountDAO;
import com.tm.mp.account.AccountDTO;

@Service
public class MyPageDAO {
	
	@Autowired
	private SqlSession ss;

	public void myPageUpdate(HttpServletRequest req) {
		
		
		
		String path = req.getSession().getServletContext().getRealPath("resources/files");
		MultipartRequest mr = null;
		AccountDTO loginMember = (AccountDTO) req.getSession().getAttribute("loginAccount");
		System.out.println("2222");
		System.out.println(loginMember.toString());
		String oldFile = loginMember.getAc_pic();
		System.out.println("1111");
		String newFile = null;
		
		/*private String ac_id;
		private String ac_pw;
		private String ac_name;
		private String ac_addr;
		private String ac_email;
		private String ac_pic;*/
		
		
			try {
				mr = new MultipartRequest(req, path, 10 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
				newFile = mr.getFilesystemName("ac_newpic");
				
				String ac_id = mr.getParameter("ac_id");
				String ac_pw = mr.getParameter("ac_pw");
				String ac_name = mr.getParameter("ac_name");
				String ac_addr = mr.getParameter("ac_addr");
				String ac_email = mr.getParameter("ac_email");
				String ac_newpic = newFile;
				
				AccountDTO ac = new AccountDTO();
				
				ac.setAc_id(ac_id);
				ac.setAc_pw(ac_pw);
				ac.setAc_name(ac_name);
				ac.setAc_addr(ac_addr);
				ac.setAc_email(ac_email);
				ac.setAc_pic(ac_newpic);
				
				if (ss.getMapper(MyPageMapper.class).myPageUpdate(ac) == 1) {
					req.setAttribute("result", "수정성공");
					req.getSession().setAttribute("loginMember", ac);
					
					if (!oldFile.equals(newFile)) {
						oldFile = URLDecoder.decode(oldFile,"utf-8");
						new File(path +"/" + oldFile).delete();
					}
				}else {
					req.setAttribute("result", "수정실패");
					if (!oldFile.equals(newFile)) {
						newFile = URLDecoder.decode(newFile,"utf-8");
						new File(path + "/" + newFile).delete();
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
				req.setAttribute("result", "수정실패");
				if (!oldFile.equals(newFile)) {
					try {
						newFile = URLDecoder.decode(newFile,"utf-8");
					} catch (UnsupportedEncodingException e1) {

					}
					new File(path + "/" + newFile).delete();
				}
			}
		
	}

	

	


	
	

}
