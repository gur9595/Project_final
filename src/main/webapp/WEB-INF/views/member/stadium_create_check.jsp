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
	
	if(result == "fail"){
		alert("경기장 등록에 실패했습니다.\n다시 시도해주세요.");
		location.href="../member/memberSelect.do";
	}
	else if(result == "success"){
		alert("경기장 등록에 성공했습니다!");
		location.href="../";
	}
	
	
});
</script>
</head>
<body>
<input type="hidden" id="result" value="${result }" />
</body>
</html>