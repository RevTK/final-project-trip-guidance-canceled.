function loginCheck() {
	var idInput = document.loginForm.ac_id;
	var pwInput = document.loginForm.ac_pw;

	if (isEmpty(idInput) || isEmpty(pwInput)) {
		alert("?");
		idInput.value = "";
		pwInput.value = "";
		idInput.focus();
		return false;
	}

	return true;
}