<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Miracle</title>

<!-- CDN CSS 불러오기 -->
<!-- 이벤트페이지 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.1/css/all.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat&amp;display=swap"
	rel="stylesheet">

<!-- CDN JS 불러오기 -->
<!-- 이벤트페이지 -->
<script type="text/javascript"
	src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.3.3/gsap.min.js"></script>

<!-- css연결  -->
<link rel="stylesheet" href="resources/css/index.css">
<link rel="stylesheet" href="resources/css/account/account.css">
<link rel="stylesheet" href="resources/css/event/eventMain.css">

<!-- js연결 -->
<script src="resources/js/home/nav.js"></script>
<script src="resources/js/account/check.js"></script>
<script src="resources/js/account/go.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>

<body>
	<header>
		<a id="logo" href="index.go">Miracle<span id="highlight">.</span>
		</a>

		<div>
			<a href="rec.main.go">코스추천(준우공간)&nbsp;&nbsp;&nbsp;</a> <a
				href="myPage.main.go">마이페이지(권공간)&nbsp;&nbsp;&nbsp;</a> <a><jsp:include
					page="${loginPage }"></jsp:include>&nbsp;&nbsp;&nbsp;</a> <a
				href="event.main.go">이벤트페이지(태형공간)&nbsp;&nbsp;&nbsp;</a>
		</div>
	</header>

	<hr>

	<div id="siteContentArea">
		<div>
			<div align="center"><jsp:include page="${contentPage }"></jsp:include></div>
		</div>
	</div>

	<footer>
		<hr>
		<div>내정보</div>
		<div>보기</div>
		<div>수정</div>
		<div>내글</div>
	</footer>

	<!-- js연결 -->
	<script src="resources/js/event/eventMain.js"></script>

</body>
</html>