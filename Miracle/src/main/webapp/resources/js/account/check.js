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

function selectAll(selectAll)  {
	  const checkboxes 
	       = document.getElementsById('like');
	  
	  checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked;
	  })
	}