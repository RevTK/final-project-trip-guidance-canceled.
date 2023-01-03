<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="login_area">
		<h1>로그인</h1>
		<form class="login_form" name="loginForm" action="account.login.do"
			method="post">
			<h6>아이디</h6>
			<input name="ac_id" class="input_id" id="idInput">
			<h6>비밀번호</h6>
			<input name="ac_pw" type="password" class="input_pw" id="pwInput"><br>
			<a class="find_id" type="button" href="search.id.go">아이디</a>&nbsp; <a>·</a>&nbsp;
			<a class="find_pw" type="button" href="search.pw.go">비밀번호 찾기</a><br>
			<button id="loginBtn">로그인</button>
			<div class="reg-area">
				<span>회원이 아니세요?</span>&nbsp;&nbsp;&nbsp;<a href="account.reg.go">회원가입</a>
			</div>
			<br>
				<h5>간편 로그인</h5>
			<br>
			<div id="SNS-login-area">
				<img style="height:40px; cursor:pointer" src="https://www.myro.co.kr/myro_image/kakaolink_btn.png">
				<div id="naver_id_login">
				<script>
				var naver_id_login = new window.naver_id_login("2jeVrVkpRS6rJdiED3cm", "http://localhost/mp/account/naverLogin");
				var state = naver_id_login.getUniqState();
				naver_id_login.setButton("green", 1, 40);
				naver_id_login.setDomain("http://localhost/mp/account/loginPage");
				naver_id_login.setState(state);
				naver_id_login.setPopup();
				naver_id_login.init_naver_id_login();
				</script>
				</div>
				<img style="height:40px; cursor:pointer" src="https://www.myro.co.kr/myro_image/google_btn.png">
			</div>
		</form>
	</div>
</body>
</html>