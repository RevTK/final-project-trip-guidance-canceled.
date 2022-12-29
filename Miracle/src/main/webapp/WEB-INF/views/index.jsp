<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Miracle</title>

<!-- CDN CSS 불러오기 -->
<link rel="stylesheet" type="text/css"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">

<!-- CDN JS 불러오기 -->
<script src="https://code.jquery.com/jquery-3.6.3.js"
	integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
	crossorigin="anonymous"></script>
<script src="https://assets.codepen.io/16327/gsap-latest-beta.min.js"></script>
<script src="https://assets.codepen.io/16327/Observer.min.js"></script>
<script
	src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/SplitText3.min.js"></script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
<script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.3.3/gsap.min.js"></script>

<!-- css연결  -->
<link rel="stylesheet" href="resources/css/index.css">
<link rel="stylesheet" href="resources/css/home/nav.css">
<link rel="stylesheet" href="resources/css/account/account.css">
<link rel="stylesheet" href="resources/css/event/eventMain.css">

<!-- js연결 -->
<script src="resources/js/home/nav.js"></script>
<script src="resources/js/account/check.js"></script>
<script src="resources/js/account/go.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body id="mainBody">
<a id="logo" href="index.go">Miracle<span id="highlight">.</span>
							</a>
							
							<br><br><br>
<div>
<a href="rec.main.go">코스추천(준우공간)&nbsp;&nbsp;&nbsp;</a>
<a href="rec.kakao.go">카카오맵(준우공간2)&nbsp;&nbsp;&nbsp;</a>
<a href="myPage.main.go">마이페이지(권공간)&nbsp;&nbsp;&nbsp;</a>
<a><jsp:include page="${loginPage }"></jsp:include>&nbsp;&nbsp;&nbsp;</a>
<a href="event.main.go">이벤트페이지(태형공간)&nbsp;&nbsp;&nbsp;</a>
</div>
	<div id="siteContentArea">
		<div>
			<div align="center"><jsp:include page="${contentPage }"></jsp:include></div>
		</div>
	</div>
	
	<div id="footer">
	<hr>
	<div>내정보</div>
	<div>보기</div>
	<div>수정</div>
	<div>내글</div>
	</div>

<!-- js연결 -->
	<script src="resources/js/home/home.js"></script>
	<script src="resources/js/event/eventMain.js"></script>

</body>
</html>