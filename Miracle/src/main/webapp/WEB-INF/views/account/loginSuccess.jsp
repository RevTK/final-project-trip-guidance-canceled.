<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="loginSuccessArea" style="height: 20px;">${sessionScope.loginAccount.ac_id }</div>
	<button onclick="goAccountInfo()">내 정보</button>
	<button onclick="logout()">로그아웃</button>
</body>
</html>