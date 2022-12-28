<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Miracle</title>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
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

	  if(count < itemCount - 1) {
	    count++;
	  } else {
	    count = 0;
	  }

	  items[count].classList.add('active');
	  console.log(count);
	}

	function showPreviousItem() {
	  items[count].classList.remove('active');

	  if(count > 0) {
	    count--;
	  } else {
	    count = itemCount - 1;
	  }

	  items[count].classList.add('active');
	  // Check if working...
	  console.log(count);
	}

	function toggleNavigation(){
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
	  const tokyo = { lat: 35.6894, lng: 139.692 };
	  // The map, centered at Uluru
	  const map = new google.maps.Map(document.getElementById("map"), {
	    zoom: 4,
	    center: tokyo,
	    mapTypeControl: false,
	    mapTypeControlOptions: {
	      style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR,
	      position: google.maps.ControlPosition.TOP_CENTER,
	    },
	    zoomControl: true,
	    zoomControlOptions: {
	      position: google.maps.ControlPosition.RIGHT_CENTER,
	    },
	    scaleControl: true,
	    streetViewControl: true,
	    streetViewControlOptions: {
	      position: google.maps.ControlPosition.RIGHT_BOTTOM,
	    },
	    fullscreenControl: false,
	    styles: [
	        {
	            "featureType": "administrative",
	            "elementType": "labels.text.fill",
	            "stylers": [
	                {
	                    "color": "#444444"
	                }
	            ]
	        },
	        {
	            "featureType": "landscape",
	            "elementType": "all",
	            "stylers": [
	                {
	                    "color": "#f2f2f2"
	                }
	            ]
	        },
	        {
	            "featureType": "poi",
	            "elementType": "all",
	            "stylers": [
	                {
	                    "visibility": "off"
	                }
	            ]
	        },
	        {
	            "featureType": "road",
	            "elementType": "all",
	            "stylers": [
	                {
	                    "saturation": -100
	                },
	                {
	                    "lightness": 45
	                }
	            ]
	        },
	        {
	            "featureType": "road.highway",
	            "elementType": "all",
	            "stylers": [
	                {
	                    "visibility": "simplified"
	                }
	            ]
	        },
	        {
	            "featureType": "road.arterial",
	            "elementType": "labels.icon",
	            "stylers": [
	                {
	                    "visibility": "off"
	                }
	            ]
	        },
	        {
	            "featureType": "transit",
	            "elementType": "all",
	            "stylers": [
	                {
	                    "visibility": "off"
	                }
	            ]
	        },
	        {
	            "featureType": "water",
	            "elementType": "all",
	            "stylers": [
	                {
	                    "color": "#46bcec"
	                },
	                {
	                    "visibility": "on"
	                }
	            ]
	        }
	    ]
	  });
	  // The marker, positioned at Uluru
	  const marker = new google.maps.Marker({
	    position: tokyo,
	    map: map,
	  });
	}

	window.initMap = initMap;

</script>

<style type="text/css">
/* Set the size of the div element that contains the map */
#map {
  height: 800px; /* The height is 400 pixels */
  width: 100%; /* The width is the width of the web page */
  margin-bottom: 10%;
}
</style>
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
<link rel="stylesheet" href="resources/css/home/new.css">
<link rel="stylesheet" href="resources/css/home/menu.css">
<link rel="stylesheet" type="text/css" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/account/account.css">
</head>
<body>
<div id="siteContentArea">
			<div>
				<div align="center"><jsp:include page="${contentPage }"></jsp:include></div>
			</div>
		</div>
		<div id="siteLoginArea">
			<div>
				<div><jsp:include page="${loginPage }"></jsp:include></div>
			</div>
		</div>
		
		
		<!--  -->
		
		<div style="position: relative; z-index: 2;">
<nav class="menu">
   <input type="checkbox" href="#" class="menu-open" name="menu-open" id="menu-open" />
   <label class="menu-open-button" for="menu-open">
    <span class="lines line-1"></span>
    <span class="lines line-2"></span>
    <span class="lines line-3"></span>
  </label>

   <a href="#" class="menu-item blue"> <i class="fa fa-anchor"></i> </a>
   <a href="#" class="menu-item green"> <i class="fa fa-coffee"></i> </a>
   <a href="#" class="menu-item red"> <i class="fa fa-heart"></i> </a>
   <a href="#" class="menu-item purple"> <i class="fa fa-microphone"></i> </a>
   <a href="#" class="menu-item orange"> <i class="fa fa-star"></i> </a>
   <a href="#" class="menu-item lightblue"> <i class="fa fa-diamond"></i> </a>
</nav>
</div>


<!--  -->


	<nav class="flex-nav">
  <div class="container">
    <div class="grid">
      <div class="column-xs-9 column-md-8">
        <p id="logo">Miracle<span id="highlight">.</span></p>
      </div>
      <div class="column-xs-3 column-md-4">
        <a href="#" class="toggle-nav">Menu <i class="ion-navicon-round"></i></a>
        <ul>
          <li><a href="#">코스추천(준우공간)</a></li>
          <li><a href="#">마이페이지(권공간)</a></li>
          <li><a href="regAccount.go">로그인(형규공간)</a></li>
          <li><a href="#">(태형공간)</a></li>
        </ul>
      </div>
    </div>
  </div>
</nav>

<!--  -->


    <!--The div element for the map -->
    <div id="map" style="position: relative; z-index: 1;"></div>
    <!-- 
     The `defer` attribute causes the callback to execute after the full HTML
     document has been parsed. For non-blocking uses, avoiding race conditions,
     and consistent behavior across browsers, consider loading using Promises
     with https://www.npmjs.com/package/@googlemaps/js-api-loader.
    -->
    <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCjGlvNyptuTaaOw4gAhWL_P4aeg0euVU&callback=initMap&v=weekly"
      defer
    ></script>


<!--  -->

<main class="intro-section">
  <div class="container">
    <div class="grid">
      <div class="column-xs-12">
        <ul class="slider">
          <li class="slider-item active">
            <div class="grid vertical">
              <div class="column-xs-12 column-md-2 hide-mobile">
                <div class="intro">
                  <a href="#">
                    <h1 class="title"><span class="underline">Explore Tokyo</span></h1>
                  </a>
                </div>
              </div>
              <div class="column-xs-12 column-md-10">
                <div class="image-holder">
                  <img src="https://source.unsplash.com/cddaZDt6uRw">
                </div>
                <div class="grid">
                  <div class="column-xs-12 column-md-9">
                    <div class="intro show-mobile">
                      <a href="#">
                        <h1 class="title"><span class="underline">Explore Tokyo</span></h1>
                      </a>
                    </div>
                    <p class="description">Tokyo, Japan’s busy capital, mixes the ultramodern and the traditional, from neon-lit skyscrapers to historic temples.</p>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <li class="slider-item">
            <div class="grid vertical">
              <div class="column-xs-12 column-md-2 hide-mobile">
                <div class="intro">
                  <a href="#">
                    <h1 class="title"><span class="underline">Explore Kyoto</span></h1>
                  </a>
                </div>
              </div>
              <div class="column-xs-12 column-md-10">
                <div class="image-holder">
                  <img src="https://source.unsplash.com/Pz3EHf-KJfc">
                </div>
                <div class="grid">
                  <div class="column-xs-12 column-md-9">
                    <div class="intro show-mobile">
                      <a href="#">
                        <h1 class="title"><span class="underline">Explore Kyoto</span></h1>
                      </a>
                    </div>
                    <p class="description">Kyoto is famous for its numerous classical Buddhist temples, gardens, imperial palaces, Shinto shrines and traditional wooden houses.</p>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <li class="slider-item">
            <div class="grid vertical">
              <div class="column-xs-12 column-md-2 hide-mobile">
                <div class="intro">
                  <a href="#">
                     <h1 class="title"><span class="underline">Explore Osaka</span></h1>
                  </a>
                </div>
              </div>
              <div class="column-xs-12 column-md-10">
                <div class="image-holder">
                  <img src="https://source.unsplash.com/peYW3VwICpE">
                </div>
                <div class="grid">
                  <div class="column-xs-12 column-md-9">
                    <div class="intro show-mobile">
                      <a href="#">
                        <h1 class="title"><span class="underline">Explore Osaka</span></h1>
                      </a>
                    </div>
                    <p class="description">Osaka is a large port city and commercial center known for its modern architecture, nightlife and hearty street food.</p>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <li class="slider-item">
            <div class="grid vertical">
              <div class="column-xs-12 column-md-2 hide-mobile">
                <div class="intro">
                  <a href="#">
                    <h1 class="title"><span class="underline">Explore Hokkaido</span></h1>
                  </a>
                </div>
              </div>
              <div class="column-xs-12 column-md-10">
                <div class="image-holder">
                  <img src="https://source.unsplash.com/VmeOZQjTVGE">
                </div>
                <div class="grid">
                  <div class="column-xs-12 column-md-9">
                    <div class="intro show-mobile">
                      <a href="#">
                        <h1 class="title"><span class="underline">Explore Hokkaido</span></h1>
                      </a>
                    </div>
                    <p class="description">Hokkaido, the northernmost of Japan’s main islands, is known for its volcanoes, natural hot springs ("onsen") and ski areas.</p>
                  </div>
                </div>
              </div>
            </div>
          </li>
        </ul>
      <div class="grid">
        <div class="column-xs-12">
          <div class="controls">
              <button class="previous">
                <span class="visually-hidden">Previous</span>
                <span class="icon arrow-left" aria-hidden="true"></span>
              </a>
              <button class="next">
                <span class="visually-hidden">Next</span>
                <span class="icon arrow-right" aria-hidden="true"></span>
              </a>
            </div>
          </div>
      </div>
    </div>
  </div>
 </main>
		
</body>
</html>