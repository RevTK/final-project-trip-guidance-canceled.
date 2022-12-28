<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Miracle</title>
<link rel="stylesheet" href="resources/css/account.css">
</head>
<body>
${result }
<h1>어서오세요</h1>
<a href="regAccount.go">회원 가입</a>
<div id="siteContentArea">
			<div>
				<div align="center"><jsp:include page="${contentPage }"></jsp:include></div>
			</div>
		</div>
		<div id="siteLoginArea">
			<div>
				<div><jsp:include page="${loginPage }"></jsp:include></div>
			</div>
		</div>
</body>
</html>