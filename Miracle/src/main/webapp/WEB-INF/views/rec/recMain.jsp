<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
<style type="text/css">
/* Set the size of the div element that contains the map */
#map {
            width: 100%;
            height: 800px;
            margin: 0;
            padding: 0
        }
#search-panel {
             position: absolute;
            top: 10px;
            left: 80%;
            z-index: 5;
            background-color: #FFFFFF;
            padding: 5px;
            border: 1px solid black;
            text-align: center;
            padding: left: 10px
        }
</style>
<script src="resources/js/rec/map.js"></script>
</head>
<body>
    
    <div id="map">
    </div>
 
    <!-- Google Map API -->
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCjGlvNyptuTaaOw4gAhWL_P4aeg0euVU&callback=initMap">
    </script>
    
    <div>
<strong>Start: </strong>
<select id="start" onchange="calcRoute();">
  <option value="oklahoma city, ok">Oklahoma City</option>
  <option value="amarillo, tx">Amarillo</option>
  <option value="gallup, nm">Gallup, NM</option>
  <option value="flagstaff, az">Flagstaff, AZ</option>
  <option value="winona, az">Winona</option>
  <option value="kingman, az">Kingman</option>
  <option value="barstow, ca">Barstow</option>
  <option value="san bernardino, ca">San Bernardino</option>
  <option value="los angeles, ca">Los Angeles</option>
</select>
<strong>End: </strong>
<select id="end" onchange="calcRoute();">
  <option value="oklahoma city, ok">Oklahoma City</option>
  <option value="amarillo, tx">Amarillo</option>
  <option value="gallup, nm">Gallup, NM</option>
  <option value="flagstaff, az">Flagstaff, AZ</option>
  <option value="winona, az">Winona</option>
  <option value="kingman, az">Kingman</option>
  <option value="barstow, ca">Barstow</option>
  <option value="san bernardino, ca">San Bernardino</option>
  <option value="los angeles, ca">Los Angeles</option>
</select>
</div>
    
<script type="text/javascript">
//Initialize and add the map
function initMap() {
	 
    /**
     * 맵을 설정한다.
     * 1번째 파라미터 : 구글 맵을 표시할 위치. 여기서는 #google-map
     * 2번째 파라미터 : 맵 옵션.
     *      ㄴ zoom : 맵 확대 정도
     *      ㄴ center : 맵 중심 좌표 설정
     *              ㄴ lat : 위도 (latitude)
     *              ㄴ lng : 경도 (longitude)
     */
     const directionsService = new google.maps.DirectionsService();
     const directionsRenderer = new google.maps.DirectionsRenderer();
     
     const myLatlng = new google.maps.LatLng(37.541,126.986);
     
     const map = new google.maps.Map(document.getElementById('map'), {
         zoom: 7,
         center: myLatlng,
         mapTypeId: google.maps.MapTypeId.ROADMAP,
         mapTypeControl: false,
         mapTypeControlOptions: {
             style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR,
             position: google.maps.ControlPosition.BOTTOM_CENTER
         },
         panControl: false,
         panControlOptions: {
             position: google.maps.ControlPosition.TOP_RIGHT
         },
         zoomControl: false,
         zoomControlOptions: {
             style: google.maps.ZoomControlStyle.LARGE,
             position: google.maps.ControlPosition.LEFT_CENTER
         },
         scaleControl: false,
         scaleControlOptions: {
             position: google.maps.ControlPosition.TOP_LEFT
         },
         streetViewControl: false,
         streetViewControlOptions: {
             position: google.maps.ControlPosition.LEFT_TOP
         },
         mapTypeId: google.maps.MapTypeId.ROADMAP,
         styles: [
        	    {
        	        "featureType": "all",
        	        "elementType": "all",
        	        "stylers": [
        	            {
        	                "saturation": "32"
        	            },
        	            {
        	                "lightness": "-3"
        	            },
        	            {
        	                "visibility": "on"
        	            },
        	            {
        	                "weight": "1.18"
        	            }
        	        ]
        	    },
        	    {
        	        "featureType": "administrative",
        	        "elementType": "labels",
        	        "stylers": [
        	            {
        	                "visibility": "on"
        	            }
        	        ]
        	    },
        	    {
        	        "featureType": "landscape",
        	        "elementType": "labels",
        	        "stylers": [
        	            {
        	                "visibility": "off"
        	            }
        	        ]
        	    },
        	    {
        	        "featureType": "landscape.man_made",
        	        "elementType": "all",
        	        "stylers": [
        	            {
        	                "saturation": "-70"
        	            },
        	            {
        	                "lightness": "14"
        	            }
        	        ]
        	    },
        	    {
        	        "featureType": "poi",
        	        "elementType": "labels",
        	        "stylers": [
        	            {
        	                "visibility": "off"
        	            }
        	        ]
        	    },
        	    {
        	        "featureType": "road",
        	        "elementType": "labels",
        	        "stylers": [
        	            {
        	                "visibility": "off"
        	            }
        	        ]
        	    },
        	    {
        	        "featureType": "transit",
        	        "elementType": "labels",
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
        	                "saturation": "100"
        	            },
        	            {
        	                "lightness": "-14"
        	            }
        	        ]
        	    },
        	    {
        	        "featureType": "water",
        	        "elementType": "labels",
        	        "stylers": [
        	            {
        	                "visibility": "off"
        	            },
        	            {
        	                "lightness": "12"
        	            }
        	        ]
        	    }
        	]
     });

     map.addListener("click", (e) => {
    	    placeMarkerAndPanTo(e.latLng, map);
    	  });
     
  // Create the initial InfoWindow.
     let infoWindow = new google.maps.InfoWindow({
       content: "Click the map to get Lat/Lng!",
       position: myLatlng,
     });

     infoWindow.open(map);
     // Configure the click listener.
     map.addListener("click", (mapsMouseEvent) => {
       // Close the current InfoWindow.
       infoWindow.close();
       // Create a new InfoWindow.
       infoWindow = new google.maps.InfoWindow({
         position: mapsMouseEvent.latLng,
       });
       console.log(mapsMouseEvent);
       let aa = "asdasd" + mapsMouseEvent.latLng.toJSON();
       infoWindow.setContent(
         
    		   JSON.stringify(aa, null, 2)
         
       );
       infoWindow.open(map);
     });
     
} 
	function placeMarkerAndPanTo(latLng, map) {
	  new google.maps.Marker({
	    position: latLng,
	    map: map,
	  });
	  map.panTo(latLng);
	}
     
     directionsRenderer.setMap(map);
     
     const onChangeHandler = function () {
    	    calculateAndDisplayRoute(directionsService, directionsRenderer);
    	  };

    	  
    	  document.getElementById("start").addEventListener("change", onChangeHandler);
    	  document.getElementById("end").addEventListener("change", onChangeHandler);
    	
    	
function calculateAndDisplayRoute(directionsService, directionsRenderer) {
	  directionsService
	    .route({
	      origin: {
	        query: document.getElementById("start").value,
	      },
	      destination: {
	        query: document.getElementById("end").value,
	      },
	      travelMode: google.maps.TravelMode.DRIVING,
	    })
	    .then((response) => {
	      directionsRenderer.setDirections(response);
	    })
	    .catch((e) => window.alert("Directions request failed due to " + status));
	}

window.initMap = initMap;
</script>
    
</body>
</html>