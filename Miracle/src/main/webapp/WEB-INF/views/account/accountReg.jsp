<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 가입</h1>
	<form action="account.reg.do" method="post"
		enctype="multipart/form-data"
		>
		<div id="regArea">
			<div class="id1">아이디</div>
			<div class="id2">
				<input id="idInput" name="ac_id">
			</div>
			<div class="pw1">비밀번호</div>
			<div class="pw2">
				<input type="password" id="pwInput" name="ac_pw">
			</div>
			<div class="pw1">비밀번호 확인</div>
			<div class="pw2">
				<input type="password" id="pwInput2">
				<font id="pwConfirm" size="2"></font>
			</div>
			<div class="name1">이름</div>
			<div class="name2">
				<input id="nameInput" name="ac_name">
			</div>
			<div class="addr">주소</div>
			<div>
			<span id="addrSearchBtn">검색</span>
			<input id="addrInput" name="ac_addr">
			</div>
			<div class="like">좋아하는 관광지</div>
			<div>
			전체<input type="checkbox" id="like" name="ac_like" onclick="selectAll(this);">
			유럽<input type="checkbox" id="like" name="ac_like" value="europe">
			아시아<input type="checkbox" id="like" name="ac_like" value="asia">
			아메리카<input type="checkbox" id="like" name="ac_like" value="america">
			오세아니아<input type="checkbox" id="like" name="ac_like" value="oceania">
			아프리카<input type="checkbox" id="like" name="ac_like" value="africa">
			</div>
			<div class="pic1">사진</div>
			<div class="pic2">
				<input name="ac_pic" type="file">
			</div>
			<button>가입</button>
		</div>
	</form>
</body>
</html>