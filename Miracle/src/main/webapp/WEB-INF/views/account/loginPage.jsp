<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="login-area">
	<h1>로그인</h1>
	<form class="login-form" action="account.login.do" method="post">
	<input name="ac_id" class="input_id" id="idInput" placeholder="아이디"> <p>
	<input name="ac_pw" type="password" class="input_pw" id="pwInput" placeholder="비밀번호"> <p>
	<div class="button_area">
	<button>로그인</button>
	</div>
	<a href="account.reg.go">회원가입</a>
</form>
</div>
</body>
</html>