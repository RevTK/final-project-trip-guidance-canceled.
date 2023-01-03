
function bye() {
	var ok = confirm("정말 탈퇴 하시겠습니까?");
	if (ok) {
		location.href = "myPage.delete.go";
	}
}