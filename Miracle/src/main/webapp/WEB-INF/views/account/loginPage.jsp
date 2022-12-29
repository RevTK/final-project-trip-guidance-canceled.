<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
$(function() {
	$("#loginBtn").click(function() {
		let idInput = document.loginForm.ac_id;
		let pwInput = document.loginForm.ac_pw;
		
		if (isEmpty(idInput)) {
			alert('아이디를 입력해주세요');
			idInput.focus();
			return false;
		}
		if (isEmpty(pwInput)) {
			alert('비밀번호를 입력해주세요');
			pwInput.focus();
			return false;
		}
		return true;
	}
}
</script>
</head>
<body>
	<div class="login_area">
		<h1>로그인</h1>
		<form class="login_form" name="loginForm" action="account.login.do" method="post">
			<h6>아이디</h6>
			<input name="ac_id" class="input_id" id="idInput">
			<h6>비밀번호</h6>
			<input name="ac_pw" type="password" class="input_pw" id="pwInput"><br>
				<a class="find_id" type="button" href="">아이디</a>&nbsp;
				<a>·</a>&nbsp; 
				<a class="find_pw" type="button" href="">비밀번호 찾기</a><br>
				<button id="loginBtn">로그인</button>
			<div>
				<span>회원이 아니세요?</span>&nbsp;&nbsp;&nbsp;<a href="account.reg.go">회원가입</a>
			</div>
			<div>
				<h6>간편 로그인</h6>
				<img style="height: 40px"
					src="https://www.myro.co.kr/myro_image/kakaolink_btn.png"> <img
					style="height: 40px"
					src="https://www.myro.co.kr/myro_image/naver_btn.png"> <img
					style="height: 40px"
					src="https://www.myro.co.kr/myro_image/google_btn.png">
			</div>
		</form>
	</div>
</body>
</html>