<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Miracle</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"
	integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
	crossorigin="anonymous"></script>
<script type="text/javascript">
	$(function() {

		const items = document.querySelectorAll('.slider-item');
		const itemCount = items.length;
		const nextItem = document.querySelector('.next');
		const previousItem = document.querySelector('.previous');
		const navItem = document.querySelector('a.toggle-nav');
		let count = 0;

		function showNextItem() {
			items[count].classList.remove('active');

			if (count < itemCount - 1) {
				count++;
			} else {
				count = 0;
			}

			items[count].classList.add('active');
			console.log(count);
		}

		function showPreviousItem() {
			items[count].classList.remove('active');

			if (count > 0) {
				count--;
			} else {
				count = itemCount - 1;
			}

			items[count].classList.add('active');
			// Check if working...
			console.log(count);
		}

		function toggleNavigation() {
			this.nextElementSibling.classList.toggle('active');
		}

		function keyPress(e) {
			e = e || window.event;

			if (e.keyCode == '37') {
				showPreviousItem();
			} else if (e.keyCode == '39') {
				showNextItem();
			}
		}

		nextItem.addEventListener('click', showNextItem);
		previousItem.addEventListener('click', showPreviousItem);
		document.addEventListener('keydown', keyPress);
		navItem.addEventListener('click', toggleNavigation);

	});
</script>
<script type="text/javascript">
	//Initialize and add the map
	function initMap() {
		// The location of Uluru
		const tokyo = {
			lat : 35.6894,
			lng : 139.692
		};
		// The map, centered at Uluru
		const map = new google.maps.Map(document.getElementById("map"), {
			zoom : 4,
			center : tokyo,
			mapTypeControl : false,
			mapTypeControlOptions : {
				style : google.maps.MapTypeControlStyle.HORIZONTAL_BAR,
				position : google.maps.ControlPosition.TOP_CENTER,
			},
			zoomControl : true,
			zoomControlOptions : {
				position : google.maps.ControlPosition.RIGHT_CENTER,
			},
			scaleControl : true,
			streetViewControl : true,
			streetViewControlOptions : {
				position : google.maps.ControlPosition.RIGHT_BOTTOM,
			},
			fullscreenControl : false,
			styles : [ {
				"featureType" : "administrative",
				"elementType" : "labels.text.fill",
				"stylers" : [ {
					"color" : "#444444"
				} ]
			}, {
				"featureType" : "landscape",
				"elementType" : "all",
				"stylers" : [ {
					"color" : "#f2f2f2"
				} ]
			}, {
				"featureType" : "poi",
				"elementType" : "all",
				"stylers" : [ {
					"visibility" : "off"
				} ]
			}, {
				"featureType" : "road",
				"elementType" : "all",
				"stylers" : [ {
					"saturation" : -100
				}, {
					"lightness" : 45
				} ]
			}, {
				"featureType" : "road.highway",
				"elementType" : "all",
				"stylers" : [ {
					"visibility" : "simplified"
				} ]
			}, {
				"featureType" : "road.arterial",
				"elementType" : "labels.icon",
				"stylers" : [ {
					"visibility" : "off"
				} ]
			}, {
				"featureType" : "transit",
				"elementType" : "all",
				"stylers" : [ {
					"visibility" : "off"
				} ]
			}, {
				"featureType" : "water",
				"elementType" : "all",
				"stylers" : [ {
					"color" : "#46bcec"
				}, {
					"visibility" : "on"
				} ]
			} ]
		});
		// The marker, positioned at Uluru
		const marker = new google.maps.Marker({
			position : tokyo,
			map : map,
		});
	}

	window.initMap = initMap;
</script>

<style type="text/css">
/* Set the size of the div element that contains the map */
#map {
	margin-top: -5%;
	height: 900px; /* The height is 400 pixels */
	width: 100%; /* The width is the width of the web page */
	margin-bottom: 10%;
}
</style>
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
<link rel="stylesheet" href="resources/css/home/home.css">
<link rel="stylesheet" href="resources/css/home/navCircle.css">
<link rel="stylesheet" type="text/css"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
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
						<a id="logo" href="index.go">Miracle<span id="highlight">.</span>
						</a>
					</div>
					<div class="column-xs-9 column-md-9">
						<a href="#" class="toggle-nav">menu<i
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