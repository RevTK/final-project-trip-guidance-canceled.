<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<br><br><br><br><br><br>
<body>

<h1>내정보 보기!</h1>

	ID : ${sessionScope.loginAccount.ac_id } <br>
	PW : ${sessionScope.loginAccount.ac_pw } <br>
	NAME: ${sessionScope.loginAccount.ac_name } <br>
	ADDR: ${sessionScope.loginAccount.ac_addr } <br>
	EMAIL: ${sessionScope.loginAccount.ac_email } <br>
	PIC : ${sessionScope.loginAccount.ac_pic } <br>


</body>
</html>