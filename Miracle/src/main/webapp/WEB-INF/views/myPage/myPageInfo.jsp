<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>내정보 보기!</h1>


<c:forEach items="${mypages }" var="m">
	ID : ${m.ac_id } <br>
	PW : ${m.ac_pw } <br>
	NAME: ${m.ac_name } <br>
	ADDR: ${m.ac_addr } <br>
	EMAIL: ${m.ac_email } <br>
	PIC : ${m.ac_pic } <br>
</c:forEach>



</body>
</html>