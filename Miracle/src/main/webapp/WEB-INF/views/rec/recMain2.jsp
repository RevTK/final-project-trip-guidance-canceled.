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
            width: 500px;
            height: 500px;
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

<br><br><br><br><br>

<div class="hotel-search">
      <div id="findhotels">Find hotels in:</div>

      <div id="locationField">
        <input id="autocomplete" placeholder="Enter a city" type="text" />
      </div>

      <div id="controls">
        <select id="country">
          <option value="all">All</option>
          <option value="au">Australia</option>
          <option value="br">Brazil</option>
          <option value="ca">Canada</option>
          <option value="fr">France</option>
          <option value="de">Germany</option>
          <option value="mx">Mexico</option>
          <option value="nz">New Zealand</option>
          <option value="it">Italy</option>
          <option value="za">South Africa</option>
          <option value="es">Spain</option>
          <option value="pt">Portugal</option>
          <option value="us" selected>U.S.A.</option>
          <option value="uk">United Kingdom</option>
        </select>
      </div>
    </div>
    
    <div id="map">
    </div>
 
 
  <div id="listing">
      <table id="resultsTable">
        <tbody id="results"></tbody>
      </table>
    </div>

    <div style="display: none">
      <div id="info-content">
        <table>
          <tr id="iw-url-row" class="iw_table_row">
            <td id="iw-icon" class="iw_table_icon"></td>
            <td id="iw-url"></td>
          </tr>
          <tr id="iw-address-row" class="iw_table_row">
            <td class="iw_attribute_name">Address:</td>
            <td id="iw-address"></td>
          </tr>
          <tr id="iw-phone-row" class="iw_table_row">
            <td class="iw_attribute_name">Telephone:</td>
            <td id="iw-phone"></td>
          </tr>
          <tr id="iw-rating-row" class="iw_table_row">
            <td class="iw_attribute_name">Rating:</td>
            <td id="iw-rating"></td>
          </tr>
          <tr id="iw-website-row" class="iw_table_row">
            <td class="iw_attribute_name">Website:</td>
            <td id="iw-website"></td>
          </tr>
        </table>
      </div>
    </div>
    
    
    <!-- Google Map API -->
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCjGlvNyptuTaaOw4gAhWL_P4aeg0euVU&callback=initMap&language=en&libraries=places&v=weekly">
    </script>
    
    
<script type="text/javascript">
$(function() {
	

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
     


window.initMap = initMap;

});
</script>
    
</body>
</html>