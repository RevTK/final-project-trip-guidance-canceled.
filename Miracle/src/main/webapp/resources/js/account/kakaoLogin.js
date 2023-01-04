function kakaoLogin() {
	Kakao.init('558a779b58860e521372474a218e5c56');
	console.log(Kakao.isInitialized());

	Kakao.Auth.login({
		success : function(authObj) {
			console.log(authObj);
			Kakao.Auth.setAccessToken(authObj.access_token);

			getInfo();
		},
		
		fail : function(err) {
			console.log(err);
		}
	});
}

function getInfo() {
	Kakao.API.request({
		url : '/v2/user/me',
		success : function(res) {
			console.log(res);
			var ac_name = res.kakao_account.profile.nickname;
			var ac_email = res.kakao_account.email;
			var ac_pic = res.kakao_account.profile.thumbnail_image_url;

			checkEmail(ac_name, ac_email, ac_pic);

			console.log(ac_name, ac_email, ac_pic);
		},
		
		fail : function(error) {
			alert('카카오 로그인에 실패했습니다. 관리자에게 문의하세요.' + JSON.stringify(error));
		}
	});
}

function checkEmail(ac_name, ac_email, ac_pic) {

	$.ajax({
		url : "kakaoLogin.check",
		type : "POST",
		data : {
			"ac_name" : ac_name,
			"ac_email" : ac_email,
			"ac_pic" : ac_pic,
		},
		success : function(data) {
			console.log(data)
			if (data == 1) {
				console.log('good')
				location.reload()
			}
		}
	});
}