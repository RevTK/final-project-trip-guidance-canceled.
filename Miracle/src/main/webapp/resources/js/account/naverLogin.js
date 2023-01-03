// AJAX	
	$.ajax({
		url : "naverLoginCheck.do",
		type : "GET",
		dataType : "text",
		data : {
			"ac_id" : ac_id
		},
		success : function(getData) {
		console.log(getData);
		if (getData >= 1) {
		window.close();
		window.opener.location.href = "http://localhost/main/naverlogin.do?ac_id="+ ac_id;
					} else {
						alert('회원가입을 도와드리겠습니다.');
						window.close();
						window.opener.location.href = "http://localhost/main/naverjoin.go?ac_id="
								+ ac_id
								+ "&ac_email="
								+ ac_email
								+ "&ac_name="
								+ ac_name
					}
				},
				error : function(request, status, error) {
					console.log("code:" + request.status + "\n" + "message:"
							+ request.responseText + "\n" + "error:" + error);
				}
			});
