<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${path}/account/search_result_id" method="post">
	<div>
		<input id="me_name" name="me_name" placeholder="이름을 입력해주세요">
	</div>
	<div>
		<input id="me_email" name="me_email" placeholder="이메일을 입력해주세요">
	</div>
	<a href="javascript:void(0)" onclick="fnSubmit(); return false;">아이디
		찾기</a>
	<div>
		<a href="/account/accountReg">아직 회원이 아니신가요? 회원 가입</a>
	</div>
	<div>
		<a href="/account/loginPage">이미 회원이신가요? 로그인</a>
	</div>
</form>
</body>
</html>