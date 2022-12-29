<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.2.js" integrity="sha256-pkn2CUZmheSeyssYw3vMp1+xyub4m+e+QK4sQskvuo4=" crossorigin="anonymous"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1950a2b56dd3863d5c5f75c779612745"></script>
<script type="text/javascript">
$(function() {
	
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(37.541, 126.986), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};

	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	
	
	var roadviewContainer = document.getElementById('roadview'); //로드뷰를 표시할 div
	var roadview = new kakao.maps.Roadview(roadviewContainer); //로드뷰 객체
	var roadviewClient = new kakao.maps.RoadviewClient(); //좌표로부터 로드뷰 파노ID를 가져올 로드뷰 helper객체

	var position = new kakao.maps.LatLng(37.541, 126.986);

	// 특정 위치의 좌표와 가까운 로드뷰의 panoId를 추출하여 로드뷰를 띄운다.
	roadviewClient.getNearestPanoId(position, 50, function(panoId) {
	    roadview.setPanoId(panoId, position); //panoId와 중심좌표를 통해 로드뷰 실행
	});
	
	// https://dapi.kakao.com/v2/local/search/keyword.json?y=37.514322572335935&x=127.06283102249932&radius=20000
	// Authorization: KakaoAK b3b59d08ecab5f29dabec3baf9644fd6
	// query 
	
	$("#search").keyup(function(e) {
			// enter의 키코드는 13
			// enter를 눌렸다 땠을때
		if(e.keyCode == 13){
			let search = $(this).val();
			$.ajax({
				url : "https://dapi.kakao.com/v2/local/search/keyword.json",
				data : {query : search},
				beforeSend : function(req) {
					req.setRequestHeader("Authorization", "KakaoAK b3b59d08ecab5f29dabec3baf9644fd6")
				},
				success : function(result) {
					// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
				 	// marker.setMap(null); 
					
					
					//console.log(result);
					let newX = result.documents[0].x;
					let newY = result.documents[0].y;
					/* console.log(newX);
					console.log(newY); */
					
					// 이동할 위도 경도 위치를 생성합니다 
				    var moveLatLon = new kakao.maps.LatLng(newY, newX);
				    
				    // 지도 중심을 이동 시킵니다
				    map.setCenter(moveLatLon);
				    
				 // 특정 위치의 좌표와 가까운 로드뷰의 panoId를 추출하여 로드뷰를 띄운다.
				    roadviewClient.getNearestPanoId(moveLatLon, 50, function(panoId) {
				        roadview.setPanoId(panoId, moveLatLon); //panoId와 중심좌표를 통해 로드뷰 실행
				    });
				 
				 	
				    $.each(result.documents, function(i, obj) {
						
				    	console.log(obj.place_name); // 출력한 결과의 이름들
				    	
				    	// 마커들 찍기
				    	// 마커를 생성합니다
					    var marker = new kakao.maps.Marker({
					        position: new kakao.maps.LatLng(obj.y, obj.x)
					    });

					 	// 마커가 지도 위에 표시되도록 설정합니다
					    marker.setMap(map);
					 	
						// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
						$("#search").keyup(function(e) {
							if(e.keyCode == 13){
					 	 	marker.setMap(null);  
							}
						});
					 
					});
				}
				
			});
		}
	});
	
	
	
});
</script>
</head>
<body>
<input id="search" placeholder="검색">
<hr>
<hr>


<div id="map" style="width:500px;height:400px;"></div><br>

<!-- 로드뷰를 표시할 div 입니다 -->
<div id="roadview" style="width:100%;height:500px;"></div>
</body>
</html>