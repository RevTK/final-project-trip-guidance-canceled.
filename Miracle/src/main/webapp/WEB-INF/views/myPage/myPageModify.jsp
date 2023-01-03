<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<br><br><br><br><br><br>
<body>
<h1>내정보 수정하기!</h1>
<form action="myPage.modify.do" method="post" enctype="multipart/form-data" >
	ID : <input name="ac_id" value="${sessionScope.loginAccount.ac_id }">  <br>
	PW : <input name="ac_pw" value="${sessionScope.loginAccount.ac_pw }"> <br>
	NAME: <input name="ac_name" value="${sessionScope.loginAccount.ac_name }">  <br>
	ADDR: <input name="ac_addr" value="${sessionScope.loginAccount.ac_addr }">  <br>
	EMAIL: <input name="ac_email" value="${sessionScope.loginAccount.ac_email }">  <br>
	PIC : <img src="resources/files/${sessionScope.loginAccount.ac_pic }">
	 	  <input type="file" name="ac_newpic"> <br>
	<button>수정하기</button>
	<button onclick="bye();" type="button">탈퇴하기</button>

</form>


</body>
</html>