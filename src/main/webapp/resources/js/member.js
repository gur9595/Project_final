
//아이디찾기
function id_search(f) {
	
	if(f.id_name.value == ""){
		alert("이름을 입력하세요.");
		f.id_name.focus();
		return false;
	}
	if(f.id_email.value == ""){
		alert("이메일를 입력하세요.");
		f.id_email.focus();
		return false;
	}
	
	alert("입력하신 메일로 아이디를 전송해 드렸습니다!");
}

//비밀번호 찾기
function pw_search(f) {
	
	if(f.pw_id.value == ""){
		alert("아이디를 입력하세요.");
		f.pw_id.focus();
		return false;
	}
	if(f.pw_email.value == ""){
		alert("이메일를 입력하세요.");
		f.pw_email.focus();
		return false;
	}
	
	alert("입력하신 메일로 비밀번호를 전송해 드렸습니다!");
}






























