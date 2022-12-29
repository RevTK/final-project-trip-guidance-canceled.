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
  height: 800px; /* The height is 400 pixels */
  width: 100%; /* The width is the width of the web page */
}
</style>

<script type="text/javascript">
//Initialize and add the map
function initMap() {
  // The location of Uluru
  const seoul = { lat: 37.541, lng: 126.986 };
  // The map, centered at Uluru
  const map = new google.maps.Map(document.getElementById("map"), {
    zoom: 4,
    center: seoul,
  });
  const malls = [
	    { label: "C", name: "코엑스몰", lat: 37.5115557, lng: 127.0595261 },
	    { label: "G", name: "고투몰", lat: 37.5062379, lng: 127.0050378 },
	    { label: "D", name: "동대문시장", lat: 37.566596, lng: 127.007702 },
	    { label: "I", name: "IFC몰", lat: 37.5251644, lng: 126.9255491 },
	    { label: "L", name: "롯데월드타워몰", lat: 37.5125585, lng: 127.1025353 },
	    { label: "M", name: "명동지하상가", lat: 37.563692, lng: 126.9822107 },
	    { label: "T", name: "타임스퀘어", lat: 37.5173108, lng: 126.9033793 },
	  ];
  
  		const bounds = new google.maps.LatLngBounds();
  		const infowindow = new google.maps.InfoWindow();
  		
	  malls.forEach(({ label, name, lat, lng }) => {
	    const marker = new google.maps.Marker({
	      position: { lat, lng },
	      label,
	      map: map,
	    });
	    bounds.extend(marker.position);
	  });
  // The marker, positioned at Uluru
  const marker = new google.maps.Marker({
    position: seoul,
    map: map,
  });
  map.fitBounds(bounds);
};

window.initMap = initMap;
</script>
</head>
<body>
   <h3>My Google Maps Demo</h3>
    <!--The div element for the map -->
    <div id="map"></div>

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
</body>
</html>