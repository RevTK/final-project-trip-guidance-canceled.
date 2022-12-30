function loginCheck() {
	let idInput = document.loginForm.idInput;
	let pwInput = document.loginForm.pwInput;
	
	if (isEmpty(idInput)) {
		alert('아이디를 입력해주세요');
		idInput.focus();
		return false;
	}
	if (isEmpty(pwInput)) {
		alert('비밀번호를 입력해주세요');
		pwInput.focus();
		return false;
	}
	return true;
}

function idCheck() {
	let name = document.findId.name;
	let email = document.findId.email;

	if (lessThan(name, 1)) {
		alert('이름을 입력해주세요');
		name.focus();
		return false;
	}

	if (lessThan(email, 1)) {
		alert('이메일을 입력해주세요');
		email.focus();
		return false;
	}
	
	if(!checkEmail(email.value)){
		alert('이메일 형식이 잘못되었습니다');
		email.focus();
		return false;
	}

	return true;
}

function selectAll(selectAll)  {
	  const checkboxes 
	       = document.getElementsById('like');
	  
	  checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked;
	  })
	}