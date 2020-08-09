<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<head>

<title>B-PRO</title>
<% String placeholder="#태그를 입력해주세요."; %>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="./../resources/css/layout.css" rel="stylesheet" type="text/css" media="all">
<link href="./../resources/css/match_main.css" rel="stylesheet" type="text/css" media="all">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<script src="./../resources/js/match_main.js"></script>

<!-- summernote-lite -->
<script src="./../resources/summernote/summernote-lite.js"></script>
<script src="./../resources/summernote/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="./../resources/summernote/summernote-lite.css" />
<script>
//해시태그(보류)
$(function(){
	
});
</script>
<style>
.table-style{
	border: none;
	border-top: 2px solid black;
	font-size: 1.2em;
}
.table-style td{
	border: 0px solid black;
}
.input-type input{
	display: inline-block;
}
.color-box{
	background-color: #d6f4ff;
	/*border: 1px solid #27b6ea;*/
	border-radius: 5px;
	padding: 10px;
}
.input-text{
	margin-right: 20px;
}
.dropdown-toggle::after {
    display:none;
}
.upload-btn-wrap{
	width: 49.99%; height: 50px; border: 0px solid black; float: right; position: relative;
}
.upload-btn{
	position: absolute;
	bottom: 0;
	right: 0;
	height: 40px;
	background-color: #b0f2ce;
	border: none;
	border-radius: 5px;
	font-weight: bold;
	color: #149e2b;
	padding: 10px;
	width: 100px;
	font-size: 1.1em;
}
.hashTag-box{
	width: 100%;
	height: 30px;
}
.hashTag-style{
	width: auto;
	overflow: hidden;
	display: inline-block;
	height: 100%;
	border-radius: 3px;
	background-color: #eff0f2;
}
.tag-place{
	background-color: transparent;
	border: none;
}
.page-title-wrap{
	float: left; border: 0px solid black; width: 100%; height: 100px; position: relative;
}
.page-title{
	font-size: 40px; color: black; position: absolute; top: 25%; left: 50%; text-align: center; transform: translateX(-50%);
	font-weight: bold;
}
.contents-title{
	font-size: 1.6em;
	font-weight: bold;
	margin: 15px;
	margin-left: 10px;
}
.contents-date{
	font-size: 1.0em;
	margin: 15px;
	margin-left: 10px;
	margin-bottom: 5px;
	color: #8C8C8C;
}
.contents{
	margin-top: 25px;
	border: 1px solid black;
	width: 100%;
	margin-bottom: 40px;
}
</style>
</head>
<body id="top">
<!--top-->
<%@ include file="./../include/top.jsp"%>
<!--각 페이지 이미지-->
<div class="bgded overlay">
  <div id="breadcrumb" class="hoc clear"> 
    <!--이미지 위에 글쓰는곳-->
  </div>
</div>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
	    <div class="container">
	    	<div class="page-title-wrap">
	    		<div class="page-title">이벤트</div>
	    	</div>
			<table class="table-style" style="color: black;">
				<tr>
					<td style="border-bottom: 1px solid #BDBDBD;">
						<div class="contents-title">[${viewRow.e_type }] ${viewRow.e_title }</div>
						<div class="contents-date">${viewRow.e_start } ~ ${viewRow.e_end }</div>
					</td>
				</tr>
				<tr>
					<td style="margin: 0; padding: 0; border-bottom: 1px solid #BDBDBD;">
						<div class="contents">
							${viewRow.e_contents }
						</div>
					</td>
				</tr>
			</table>
	    </div>
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>

<!-- footer -->
<%@ include file="./../include/footer.jsp"%>
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>

<!-- JAVASCRIPTS -->
<script>
</script>

<script src="./../resources/js/jquery.min.js"></script>
<script src="./../resources/js/jquery.backtotop.js"></script>
</body>
</html>