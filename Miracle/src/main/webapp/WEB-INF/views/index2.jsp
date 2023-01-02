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

<!-- ---------------------------------------------------------------------------- -->

<!-- CDN JS 불러오기 -->
<!-- Jquery CDN -->
<script src="https://code.jquery.com/jquery-3.6.3.min.js"
	integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
	crossorigin="anonymous"></script>

<!-- 이벤트 페이지 -->
<script type="text/javascript"
	src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>

<!-- GSAP -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.4/gsap.min.js"></script>

<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- ---------------------------------------------------------------------------- -->

<!-- 팀원 css연결  -->
<link rel="stylesheet" href="resources/css/index.css">
<link rel="stylesheet" href="resources/css/account/account.css">
<link rel="stylesheet" href="resources/css/event/eventMain.css">

<!-- 팀원 js연결 -->
<script src="resources/js/home/nav.js"></script>
<script src="resources/js/account/check.js"></script>
<script src="resources/js/account/go.js"></script>

<!-- ---------------------------------------------------------------------------- -->

<!-- 
    - google font link
  -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Oxanium:wght@400;500;600;700&family=Work+Sans:wght@600&display=swap"
	rel="stylesheet">


<!-- favicon -->
<link rel="shortcut icon" href="favicon.svg" type="image/svg+xml">

<!-- 
    - custom css link
  -->
<link rel="stylesheet" href="resources/assets2/css/style.css">

<!-- 
    - preload images
  -->
<link rel="preload" as="image"
	href="resources/assets2/images/hero-banner.png">
<link rel="preload" as="image"
	href="resources/assets2/images/hero-banner-bg.png">

</head>

<body id="top">

	<!-- - #HEADER-->

	<header class="header active" data-header>
		<div class="container">
			<a href="index.go" class="logo"> <img
				src="resources/assets2/images/logo.svg" width="110" height="53"
				alt="unigine home">
			</a>

			<nav class="navbar" data-navbar>
				<ul class="navbar-list">

					<li class="navbar-item"><a href="#home" class="navbar-link"
						data-nav-link>Top</a></li>

					<li class="navbar-item"><a href="#tournament"
						class="navbar-link" data-nav-link>tournament</a></li>

					<li class="navbar-item"><a href="#news" class="navbar-link"
						data-nav-link>news</a></li>

					<li class="navbar-item"><a href="#" class="navbar-link"
						data-nav-link>contact</a></li>

				</ul>
				<ul class="navbar-list">

					<li class="navbar-item"><a href="index2.go"
						class="navbar-link" data-nav-link>home</a></li>

					<li class="navbar-item"><a href="rec2.main.go"
						class="navbar-link" data-nav-link>Travel Course</a></li>

					<li class="navbar-item"><a href="event2.main.go"
						class="navbar-link" data-nav-link>Event</a></li>

					<li class="navbar-item"><a href="myPage2.main.go"
						class="navbar-link" data-nav-link>MyPage</a></li>
					<li class="navbar-item"><jsp:include page="${loginPage }"></jsp:include></li>

				</ul>
			</nav>

			<a href="account2.login.go" class="btn" data-btn>loginGoGo2</a>

			<button class="nav-toggle-btn" aria-label="toggle menu"
				data-nav-toggler>
				<span class="line line-1"></span><span class="line line-2"></span> <span
					class="line line-3"></span>
			</button>
		</div>
	</header>

	<div>
		<div>
			<div align="center"><jsp:include page="${contentPage }"></jsp:include></div>
		</div>
	</div>

	<!--- #FOOTER -->

	<footer class="footer">

		<div class="section footer-top">
			<div class="container">

				<div class="footer-brand">

					<a href="#" class="logo"> <img
						src="resources/assets2/images/logo.svg" width="150" height="73"
						loading="lazy" alt="Unigine logo">
					</a>

					<p class="footer-text">Our success in creating business
						solutions is due in large part to our talented and highly
						committed team.</p>

					<ul class="social-list">

						<li><a href="#" class="social-link"> <ion-icon
									name="logo-facebook"></ion-icon>
						</a></li>

						<li><a href="#" class="social-link"> <ion-icon
									name="logo-twitter"></ion-icon>
						</a></li>

						<li><a href="#" class="social-link"> <ion-icon
									name="logo-instagram"></ion-icon>
						</a></li>

						<li><a href="#" class="social-link"> <ion-icon
									name="logo-youtube"></ion-icon>
						</a></li>

					</ul>

				</div>

				<div class="footer-list">

					<p class="title footer-list-title has-after">Usefull Links</p>

					<ul>

						<li><a href="#" class="footer-link">Tournaments</a></li>

						<li><a href="#" class="footer-link">Help Center</a></li>

						<li><a href="#" class="footer-link">Privacy and Policy</a></li>

						<li><a href="#" class="footer-link">Terms of Use</a></li>

						<li><a href="#" class="footer-link">Contact Us</a></li>

					</ul>

				</div>

				<div class="footer-list">

					<p class="title footer-list-title has-after">Contact Us</p>

					<div class="contact-item">
						<span class="span">Location:</span>

						<address class="contact-link">153 Williamson Plaza,
							Maggieberg, MT 09514</address>
					</div>

					<div class="contact-item">
						<span class="span">Join Us:</span> <a
							href="mailto:Info@unigine.com" class="contact-link">Info@unigine.com</a>
					</div>

					<div class="contact-item">
						<span class="span">Phone:</span> <a href="tel:+12345678910"
							class="contact-link">+1 (234) 567-8910</a>
					</div>

				</div>

				<div class="footer-list">

					<p class="title footer-list-title has-after">Newsletter Signup</p>

					<form action="resources/index.html" method="get"
						class="footer-form">
						<input type="email" name="email_address" required
							placeholder="Your Email" autocomplete="off" class="input-field">

						<button type="submit" class="btn" data-btn>Subscribe Now</button>
					</form>

				</div>

			</div>
		</div>

		<div class="footer-bottom">
			<div class="container">

				<p class="copyright">&copy; 2022 codewithsadee All Rights
					Reserved.</p>

			</div>
		</div>

	</footer>

	<!-- js연결 -->
	<script src="resources/js/event/eventMain.js"></script>
</body>
</html>