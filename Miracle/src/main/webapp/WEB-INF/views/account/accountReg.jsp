<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>
	<h1>회원 가입</h1>
	<form action="regAccount.do" method="post"
		enctype="multipart/form-data" name="joinForm"
		onsubmit="return regCheck();">
		<div id="regArea">
			<div class="id1">ID</div>
			<div class="id2">
				<input id="idInput" name="a_id">
			</div>
			<div class="pw1">PW</div>
			<div class="pw2">
				<input id="pwInput" name="a_pw">
			</div>
			<div class="pw1">PW</div>
			<div class="name1">이름</div>
			<div class="name2">
				<input id="nameInput" name="a_name">
			</div>
			<div class="addr1">주소</div>
			<div></div>
			<div class="like1">좋아하는 관광지</div>
			<div></div>
			<div class="pic1">사진</div>
			<div class="pic2">
				<input name="a_pic" type="file">
			</div>
			<button>가입</button>
		</div>
	</form>
</body>
</html>