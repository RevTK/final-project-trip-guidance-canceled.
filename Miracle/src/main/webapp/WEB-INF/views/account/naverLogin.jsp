<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
var naver_id_login = new naver_id_login("2jeVrVkpRS6rJdiED3cm", "http://localhost/mp/account/naverLogin");
alert(naver_id_login.oauthParams.access_token);
naver_id_login.get_naver_userprofile("naverSignInCallback()");

function naverSignInCallback() {
	let ac_email = naver_id_login.getProfileData('email');
	let ac_id = ac_email.split('@');
	ac_id = ac_id[0];
	let ac_name = naver_id_login.getProfileData('name');
}
</script>
</head>
<body>
</body>
</html>