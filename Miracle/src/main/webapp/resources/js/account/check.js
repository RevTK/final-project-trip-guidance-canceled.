// javaScript
function searchIdForm() {
	let nameInput = document.searchIdForm.ac_name;
	let emailInput = documnet.searchIdForm.ac_email;

	if (isEmpty(nameInput)) {
		alert("이름을 입력해주세요.");
		nameInput.focus();
		nameInput.value = "";
		return false;
	}
	if (isEmpty(emailInput)) {
		alert('이메일을 입력해주세요.');
		emailInput.focus();
		emailInput.value = "";
		return false;
	}
	return true;
}

function changePw() {
	let pw = $('#change-pw-pw').val();
	let pwConfirm = $('#change-pw-pwConfirm').val();

	if (pw != pwConfirm) {
		alert('비밀번호가 다릅니다.');
		return false;
	}
	return true;
}

function searchPw(){
	let email = $('#search_ac_email').val();
	let inputNum = $(this).val();
	if (inputNum == $('#valid').val()) {
		alert('인증 번호가 성공적으로 인증되었습니다.');
		let id = $('#search_ac_id').val();
		console.log(email);
		console.log(inputNum);
		console.log(id);
		return true;
	} else {
		alert('인증 번호가 일치하지 않습니다.');
		return false;
	}
}

// jQuery
$(function() {
	$('#email_check').click(function() {
		let email = $('#search_ac_email').val();
		console.log(email);
		let checkNum = $('#email_num');

		$.ajax({
			url : "emailCheck.do",
			type : "GET",
			dataType : "text",
			data : {
				"ac_email" : email
			},
			success : function(data) {
				checkNum.attr('disabled', false);
				$('#valid').val(data);
				alert('인증번호가 전송되었습니다.')
			}
		});
	});
});
