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
    <div id="search-panel">
        <input id="address" type="text" value="" />
        <button id="submit" type="button" value="Geocode">지도 검색</button>
    </div>
    <div id="map">
    </div>
 
    <!-- Google Map API -->
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCjGlvNyptuTaaOw4gAhWL_P4aeg0euVU&callback=initMap">
    </script>
    
<script type="text/javascript">
//Initialize and add the map
function initMap() {
	console.log('Map is initialized.');
	 
    /**
     * 맵을 설정한다.
     * 1번째 파라미터 : 구글 맵을 표시할 위치. 여기서는 #google-map
     * 2번째 파라미터 : 맵 옵션.
     *      ㄴ zoom : 맵 확대 정도
     *      ㄴ center : 맵 중심 좌표 설정
     *              ㄴ lat : 위도 (latitude)
     *              ㄴ lng : 경도 (longitude)
     */
     var myLatlng = new google.maps.LatLng(37.541,126.986);
     
     var myOptions = new google.maps.Map(document.getElementById('map'), {
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
     
     

   //마커 이미지
     var customicon = 'http://drive.google.com/uc?export=view&id=1tZgPtboj4mwBYT6cZlcY36kYaQDR2bRM'
    		 
   //인포윈도우
     var infowindow = new google.maps.InfoWindow();
   
   
   
     /**
      * Google Geocoding. Google Map API에 포함되어 있다.
      */
     var geocoder = new google.maps.Geocoder();

     // submit 버튼 클릭 이벤트 실행
     document.getElementById('submit').addEventListener('click', function() {
         console.log('submit 버튼 클릭 이벤트 실행');

         // 여기서 실행
         geocodeAddress(geocoder, map);
     });

     /**
      * geocodeAddress
      * 
      * 입력한 주소로 맵의 좌표를 바꾼다.
      */
  	

     function geocodeAddress(geocoder, resultMap) {
         console.log('geocodeAddress 함수 실행');

         // 주소 설정
         var address = document.getElementById('address').value;

         /**
          * 입력받은 주소로 좌표에 맵 마커를 찍는다.
          * 1번째 파라미터 : 주소 등 여러가지. 
          *      ㄴ 참고 : https://developers.google.com/maps/documentation/javascript/geocoding#GeocodingRequests
          * 
          * 2번째 파라미터의 함수
          *      ㄴ result : 결과값
          *      ㄴ status : 상태. OK가 나오면 정상.
          */
         geocoder.geocode({'address': address}, function(result, status) {
             console.log(result);
             console.log(status);

             if (status === 'OK') {
                 // 맵의 중심 좌표를 설정한다.
                 resultMap.setCenter(result[0].geometry.location);
                 // 맵의 확대 정도를 설정한다.
                 resultMap.setZoom(6);
                 // 맵 마커
                 var marker = new google.maps.Marker({
                     map: resultMap,
                     position: result[0].geometry.location
                 });

                 // 위도
                 console.log('위도(latitude) : ' + marker.position.lat());
                 // 경도
                 console.log('경도(longitude) : ' + marker.position.lng());
             } else {
                 alert('지오코드가 다음의 이유로 성공하지 못했습니다 : ' + status);
             }
         });
     }
     
     map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
     
     google.maps.event.addListener(map, 'click', function(event) {
       placeMarker(event.latLng);
     });
   }
     
   function placeMarker(location) {
     var marker = new google.maps.Marker({
         position: location, 
         map: map
     });

     map.setCenter(location);
 }
 
window.initMap = initMap;
</script>
    
</body>
</html>