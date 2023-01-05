<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br><br><br><br><br>
<script type="text/javascript">
$(function() {
		
			// 인코딩
		let trip = encodeURIComponent('여행');
		// alert(trip);
		
		let newsUrl = "https://openapi.naver.com/v1/search/news.json?query=" + trip + "&display=10&sort=sim";
		
		$.ajax(
				{
					url : newsUrl,
					type : "GET",
					beforeSend : function(req) {
						req.setRequestHeader("X-Naver-Client-Id", "KvO7Dl7LHxZBKpoeR18V");
						req.setRequestHeader("X-Naver-Client-Secret", "1iWxDUwLyI");
					},
					success : function(data) {
						successCall(data);
						console.log(data);
					}
				});
		
});
</script>

</body>
</html>