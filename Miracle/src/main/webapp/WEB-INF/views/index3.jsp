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
    - favicon
  -->
<link rel="shortcut icon" href="favicon.svg" type="image/svg+xml">

<!-- 
    - google font link
  -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">

<!-- 
    - custom css link
  -->
<link rel="stylesheet" href="resources/assets3/css/style.css">

<!-- 
    - preload images
  -->
<link rel="preload" as="image"
	href="resources/assets3/images/hero-banner.png">
<link rel="preload" as="image"
	href="resources/assets3/images/pattern-2.svg">
<link rel="preload" as="image"
	href="resources/assets3/images/pattern-3.svg">


</head>

<body>
	<header class="header" data-header>
		<div class="container">

			<a href="index.go" class="logo"> <img
				src="resources/assets3/images/logo.svg" width="119" height="37"
				alt="Wren logo">
			</a>

			<nav class="navbar" data-navbar>

				<div class="navbar-top">
					<a href="index.go" class="logo"> <img
						src="resources/assets3/images/logo.svg" width="119" height="37"
						alt="Wren logo">
					</a>

					<button class="nav-close-btn" aria-label="close menu"
						data-nav-toggler>
						<ion-icon name="close-outline" aria-hidden="true"></ion-icon>
					</button>
				</div>

				<ul class="navbar-list">

					<li><a href="index3.go" class="navbar-link hover-1"
						data-nav-toggler>Home</a></li>

					<li><a href="rec3.main.go" class="navbar-link hover-1"
						data-nav-toggler>Travel Course</a></li>

					<li><a href="event3.main.go" class="navbar-link hover-1"
						data-nav-toggler>Event Page</a></li>

					<li><a href="myPage3.main.go" class="navbar-link hover-1"
						data-nav-toggler>My Page</a></li>

									<li><jsp:include page="${loginPage }"></jsp:include></li>

				</ul>

				<div class="navbar-bottom">

					<div class="profile-card">
						<img src="resources/assets3/images/author-1.png" width="48"
							height="48" alt="Steven" class="profile-banner">

						<div>
							<p class="card-title">Hello Steven !</p>

							<p class="card-subtitle">You have 3 new messages</p>
						</div>
					</div>

					<ul class="link-list">

						<li><a href="#" class="navbar-bottom-link hover-1">Profile</a>
						</li>

						<li><a href="#" class="navbar-bottom-link hover-1">Articles
								Saved</a></li>

						<li><a href="#" class="navbar-bottom-link hover-1">Add
								New Post</a></li>

						<li><a href="#" class="navbar-bottom-link hover-1">My
								Likes</a></li>

						<li><a href="#" class="navbar-bottom-link hover-1">Account
								Setting</a></li>

						<li><a href="#" class="navbar-bottom-link hover-1">Sign
								Out</a></li>

					</ul>

				</div>

				<p class="copyright-text">Copyright 2022 © Wren - Personal Blog
					Template. Developed by codewithsadee</p>

			</nav>

			<a href="account3.login.go" class="btn btn-primary">loginGoGo3</a>

			<button class="nav-open-btn" aria-label="open menu" data-nav-toggler>
				<ion-icon name="menu-outline" aria-hidden="true"></ion-icon>
			</button>

		</div>
	</header>

	<div id="siteContentArea">
		<div>
			<div align="center"><jsp:include page="${contentPage }"></jsp:include></div>
		</div>
	</div>

	<!-- 
    - #FOOTER
  -->

	<footer>
		<div class="container">

			<div class="card footer">

				<div class="section footer-top">

					<div class="footer-brand">

						<a href="#" class="logo"> <img
							src="resources/assets3/images/logo.svg" width="119" height="37"
							loading="lazy" alt="Wren logo">
						</a>

						<p class="footer-text">When an unknown prnoto sans took a
							galley and scrambled it to make specimen book not only five When
							an unknown prnoto sans took a galley and scrambled it to five
							centurie.</p>

						<p class="footer-list-title">Address</p>

						<address class="footer-text address">
							123 Main Street <br> New York, NY 10001
						</address>

					</div>

					<div class="footer-list">

						<p class="footer-list-title">Categories</p>

						<ul>

							<li><a href="#" class="footer-link hover-2">Action</a></li>

							<li><a href="#" class="footer-link hover-2">Business</a></li>

							<li><a href="#" class="footer-link hover-2">Adventure</a></li>

							<li><a href="#" class="footer-link hover-2">Canada</a></li>

							<li><a href="#" class="footer-link hover-2">America</a></li>

							<li><a href="#" class="footer-link hover-2">Curiosity</a></li>

							<li><a href="#" class="footer-link hover-2">Animal</a></li>

							<li><a href="#" class="footer-link hover-2">Dental</a></li>

							<li><a href="#" class="footer-link hover-2">Biology</a></li>

							<li><a href="#" class="footer-link hover-2">Design</a></li>

							<li><a href="#" class="footer-link hover-2">Breakfast</a></li>

							<li><a href="#" class="footer-link hover-2">Dessert</a></li>

						</ul>

					</div>

					<div class="footer-list">

						<p class="footer-list-title">Newsletter</p>

						<p class="footer-text">Sign up to be first to receive the
							latest stories inspiring us, case studies, and industry news.</p>

						<div class="input-wrapper">
							<input type="text" name="name" placeholder="Your name" required
								class="input-field" autocomplete="off">

							<ion-icon name="person-outline" aria-hidden="true"></ion-icon>
						</div>

						<div class="input-wrapper">
							<input type="email" name="email_address"
								placeholder="Emaill address" required class="input-field"
								autocomplete="off">

							<ion-icon name="mail-outline" aria-hidden="true"></ion-icon>
						</div>

						<a href="#" class="btn btn-primary"> <span class="span">Subscribe</span>

							<ion-icon name="arrow-forward" aria-hidden="true"></ion-icon>
						</a>

					</div>

				</div>

				<div class="footer-bottom">

					<p class="copyright">
						&copy; Developed by <a href="#" class="copyright-link">codewithsadee.</a>
					</p>

					<ul class="social-list">

						<li><a href="#" class="social-link"> <ion-icon
									name="logo-twitter"></ion-icon> <span class="span">Twitter</span>
						</a></li>

						<li><a href="#" class="social-link"> <ion-icon
									name="logo-linkedin"></ion-icon> <span class="span">LinkedIn</span>
						</a></li>

						<li><a href="#" class="social-link"> <ion-icon
									name="logo-instagram"></ion-icon> <span class="span">Instagram</span>
						</a></li>

					</ul>

				</div>

			</div>

		</div>
	</footer>
</body>
</html>