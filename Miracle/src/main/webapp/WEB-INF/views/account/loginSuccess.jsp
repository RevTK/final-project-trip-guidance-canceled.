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
		<div>
			<div style="height: 70px;">
				<img src="resources/files/${sessionScope.loginAccount.ac_pic }">
			</div>
			<div style="height: 20px;">${sessionScope.loginAccount.ac_id }</div>
		</div>
		<div>
			<div>${sessionScope.loginAccount.ac_name }님 어서오세요</div>
		</div>
		<div>
			<div>
				<button onclick="goAccountInfo()">내 정보</button>
				<button onclick="logout()">로그아웃</button>
			</div>
		</div>
	</div>
</body>
</html>