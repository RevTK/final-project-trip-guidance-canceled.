<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="loginSuccessArea">
		<div class="welcome">
			<div>${sessionScope.loginAccount.ac_name }님 어서오세요</div>
		</div>
		<div class="info-area">
			<div class="info-area">
				<button onclick="goMyPage()">마이페이지</button>
				<button onclick="logout()">로그아웃</button>
			</div>
		</div>
	</div>
</body>
</html>