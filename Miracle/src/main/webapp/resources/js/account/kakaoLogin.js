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
			var ac_id = res.id;
			var ac_name = res.kakao_account.profile.nickname;
			var ac_pic = res.kakao_account.profile.thumbnail_image_url;

			console.log(ac_id, ac_name, ac_pic);

			checkInfo(ac_id, ac_name, ac_pic);

		},

		fail : function(error) {
			alert('카카오 로그인에 실패했습니다. 관리자에게 문의하세요.' + JSON.stringify(error));
		}
	});
}

function checkInfo(ac_id, ac_name, ac_pic) {
	$.ajax({
		url : "kakaoLogin.check",
		type : "GET",
		dataType :"text",
		data : {"ac_id" : ac_id,
				"ac_name" : ac_name,
				"ac_pic" : ac_pic
		},
		success : function(data) {
			console.log(data)
			console.log(ac_id)
			console.log(ac_name)
			console.log(ac_pic)
			if (data >= 1) {
				let kakaoLoginUrl = `kakaoLogin.do?ac_id=${ac_id}`;
				console.log(kakaoLoginUrl);
				location.replace(kakaoLoginUrl);
			}else{
				alert('회원가입을 도와드리겠습니다.');
				let kakaoJoinUrl = `kakaoJoin.go?ac_id=+${ac_id}+&ac_name=+${ac_name}+&ac_pic=+${ac_pic}`;
				console.log(kakaoJoinUrl);
				location.replace(kakaoJoinUrl);
			}
		},
		error : function(request,status,error) {
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			
		}
	});
}