<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Miracle</title>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<script src="https://assets.codepen.io/16327/gsap-latest-beta.min.js"></script>
<script src="https://assets.codepen.io/16327/Observer.min.js"></script>
<script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/SplitText3.min.js"></script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
<script src="resources/js/navCircle.js"></script>
<link rel="stylesheet" href="resources/css/home/home.css">
<link rel="stylesheet" href="resources/css/home/navCircle.css">
<link rel="stylesheet" type="text/css" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/account/account.css">
</head>
<body>




	<!--  -->

	<div id="navCircle" style="position: relative; z-index: 2;">
		<nav class="navCircle">
			<input type="checkbox" href="#" class="navCircle-open" name="navCircle-open"
				id="navCircle-open" /> <label class="navCircle-open-button" for="navCircle-open">
				<span class="lines line-1"></span> <span class="lines line-2"></span>
				<span class="lines line-3"></span>
			</label> <a href="rec.main.go" class="navCircle-item blue"> <i class="fa fa-anchor"></i>
			</a> <a href="myPage.main.go" class="navCircle-item green"> <i class="fa fa-coffee"></i>
			</a> <a href="#" class="navCircle-item red"> <i class="fa fa-heart"></i>
			</a> <a href="event.main.go" class="navCircle-item purple"> <i
				class="fa fa-microphone"></i>
			</a> <a href="#" class="navCircle-item orange"> <i class="fa fa-star"></i>
			</a> <a href="#" class="navCircle-item lightblue"> <i
				class="fa fa-diamond"></i>
			</a>
		</nav>
	</div>
<div class="inline-block sticky" style="z-index: 3;">
	<div id="header">
		<nav class="flex-nav">
			<div class="container">
				<div class="grid">
					<div class="column-xs-3 column-md-3">
					</div>
					<div class="column-xs-9 column-md-9">
						<a href="#" class="toggle-nav">메뉴<i
							class="ion-navicon-round"></i></a>
						<ul style="background-color:transparent;">
							<li><a href="rec.main.go">코스추천(준우공간)</a></li>
							<li><a href="myPage.main.go">마이페이지(권공간)</a></li>
							<li><a><jsp:include page="${loginPage }"></jsp:include></a></li>
							<li><a href="event.main.go">이벤트페이지(태형공간)</a></li>
						</ul>

					</div>
				</div>
			</div>
		</nav>
	</div>
</div>

	<div id="siteContentArea">
		<div>
			<div align="center"><jsp:include page="${contentPage }"></jsp:include></div>
		</div>
	</div>
	
	<hr>
	
	<div id="footer">footer</div>
	
</body>
</html>