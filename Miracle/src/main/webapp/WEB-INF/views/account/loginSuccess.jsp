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
			<div>
				<img src="resources/files/${sessionScope.loginMember.a_pic }">
			</div>
			<div>${sessionScope.loginMember.a_id }</div>
		</div>
		<div>
			<div>(${sessionScope.loginMember.a_name })</div>
		</div>
		<div>
			<div>
				<button onclick="goMemberInfo()">내 정보</button>
				<button onclick="logout()">로그아웃</button>
			</div>
		</div>
	</div>
</body>
</html>