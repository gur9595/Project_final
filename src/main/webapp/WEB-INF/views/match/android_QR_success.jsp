<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<link href="./../resources/css/create.css" rel="stylesheet"	type="text/css" media="all">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<script>
/* window.onload = function () { 
	var result = document.getElementById("result").value;
    if(result == "success"){
    	self.close();
    }
} */
</script>
<style type="text/css">
	.layer {
		position: absolute;
		text-align: center;
		width: 100%;
		height: 100%;
		top: 0;
		left: 0;
		font-size: 50px;
	}
	.layer .content {
		/* display: inline-block; */
		vertical-align: middle
	}
	.layer .blank {
		/* display: inline-block; */
		width: 0;
		height: 100%;
		vertical-align: middle
	}
</style>

<body>
	<div class="layer">
		<div class="content"><img src="./../resources/img/bprologo2.png" style="width: 500px; height: 500px;"/></div>
		<br /> 
		<span class="blank">경기가 종료되었습니다.</span>
	</div>
</body>

</html>