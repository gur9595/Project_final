<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이틀</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script>

$(document).ready(function(){
	var result = document.getElementById("result").value;
	var idx = document.getElementById("idx").value;
	
	if(result == "fail"){
		alert("신청 실패.\n다시 시도해주세요.");
		location.href="../club/clubMain.do";
	}
	else if(result == "success"){
		alert("클럽 가입 신청 성공!");
		location.href="../club/clubMain.do";
	}
	else if(result == "fail2"){
		alert("생성 실패.\n다시 시도해주세요.");
		location.href="../club/clubMain.do";
	}
	else if(result == "success2"){
		alert("클럽 생성 성공!");
		window.open("../club/clubView.do?c_idx="+idx, '_blank',
		"width=1280,height=800, toolbar=no, menubar=no, resizable=no");
		location.href="../club/clubMain.do";
	}
	
	
});
</script>
</head>
<body>
<input type="hidden" id="result" value="${result }" />
</body>
</html>