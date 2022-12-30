function logout() {
	let ok = confirm("로그아웃 하시겠습니까?")
	if(ok){
		location.href='account.logout.do';
	}
}

function goAccountInfo() {
		location.href='account.info';
}


