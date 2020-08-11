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
function getParam(sname) {

    var params = location.search.substr(location.search.indexOf("?") + 1);

    var sval = "";

    params = params.split("&");

    for (var i = 0; i < params.length; i++) {

        temp = params[i].split("=");

        if ([temp[0]] == sname) { sval = temp[1]; }

    }

    return sval;

}


$(document).ready(function(){
	
	var check = getParam("check");
	var c_idx = getParam("c_idx");
	if(check=='0'){
	window.open("../club/clubViewMatch.do?c_idx="+c_idx, '_blank',
			"width=1200,height=720, toolbar=no, menubar=no, resizable=no");
	location.href="../";
	}
	else{
	window.open("../club/clubView.do?c_idx="+c_idx, '_blank',
		"width=1200,height=720, toolbar=no, menubar=no, resizable=no");
	location.href="../";
	}
	
});
</script>
</head>
<body>

</body>
</html>