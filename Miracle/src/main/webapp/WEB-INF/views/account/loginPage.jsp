<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 
<meta name="google-signin-client_id"
	content="567208941336-p92o44c3gigs2a282rhro3p6vni5fetb.apps.googleusercontent.com">
-->
<title>Insert title here</title>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://accounts.google.com/gsi/client" async defer></script>
<!-- <script src="https://apis.google.com/js/platform.js" async defer></script> -->
<script src="https://code.jquery.com/jquery-3.6.3.min.js"
	integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
	crossorigin="anonymous"></script>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="login_area">
		<h1>로그인</h1>
		<form class="login_form" name="loginForm" action="account.login.do"
			method="post">
			<h6>아이디</h6>
			<input name="ac_id" class="input_id" id="idInput">
			<h6>비밀번호</h6>
			<input name="ac_pw" type="password" class="input_pw" id="pwInput"><br>
			<a class="find_id" type="button" href="search.id.go">아이디</a>&nbsp; <a>·</a>&nbsp;
			<a class="find_pw" type="button" href="search.pw.go">비밀번호 찾기</a><br>
			<button id="loginBtn">로그인</button>
			<div class="reg-area">
				<span>회원이 아니세요?</span>&nbsp;&nbsp;&nbsp;<a href="account.reg.go">회원가입</a>
			</div>
			<br>
			<h5>간편 로그인</h5>
			<br>
			<div id="SNS-login-area">
				<a onclick="kakaoLogin()"> <img
					src="https://www.myro.co.kr/myro_image/kakaolink_btn.png"
					width="40" /></a>
				<div id="naver_id_login"></div>
				<div id="g_id_onload"
					data-client_id="567208941336-p92o44c3gigs2a282rhro3p6vni5fetb.apps.googleusercontent.com"
					data-callback="handleCredentialResponse" data-auto_prompt="false"></div>
				<div class="g_id_signin" data-type="icon" data-size="large"
					data-theme="outline" data-text="sign_in_with"
					data-shape="rectangular" data-logo_alignment="left"></div>
			</div>
		</form>
	</div>
	<script>
	function handleCredentialResponse(response) {
	    const responsePayload = parseJwt(response.credential);
		
	    let ac_id = responsePayload.sub;
	    let ac_name = responsePayload.name;
	    let ac_pic = responsePayload.picture;
	    let ac_email = responsePayload.email;
	    
	    console.log(ac_id, ac_name, ac_pic, ac_email);
	    
	    checkInfo(ac_id, ac_name, ac_pic, ac_email);
	    
	}

    function parseJwt (token) {
        var base64Url = token.split('.')[1];
        var base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
        var jsonPayload = decodeURIComponent(atob(base64).split('').map(function(c) {
            return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
        }).join(''));

        return JSON.parse(jsonPayload);
    };
	</script>

	<script>
		var naver_id_login = new naver_id_login("Q141vzvaIl6ZvPN2b4UJ",
				"http://localhost/mp/naverLogin.go");
		var state = naver_id_login.getUniqState();
		naver_id_login.setButton("green", 1, 40);
		naver_id_login.setDomain("http://localhost/mp/naverLogin.go");
		naver_id_login.setState(state);
		naver_id_login.setPopup();
		naver_id_login.init_naver_id_login();
	</script>
</body>
</html>