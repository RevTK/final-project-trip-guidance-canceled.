function makeTestData() {
	let form = document.searchIdForm;
	form.ac_name.value = 'test';
	form.ac_email.value = 'test@gmail.com';
}

function searchIdForm() {
	form.ac_name.value = form.ac_name.value.trim();
	let nameInput = document.searchIdForm.ac_name;
	let emailInput = document.searchIdForm.ac_email;
	if (isEmpty(nameInput)) {
		alert('이름을 입력해주세요.');
		nameInput.focus();
		return false;
	}
	form.ac_email.value = form.ac_email.value.trim();
	if (isEmpty(emailInput)) {
		alert('이메일을 입력해주세요.');
		emailInput.focus();
		return false;
	}
}