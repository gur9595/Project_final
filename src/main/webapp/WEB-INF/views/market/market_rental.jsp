<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>B-PRO</title>
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
<link href="./../resources/css/layout.css" rel="stylesheet"
	type="text/css" media="all">

<style>
.divborder {
	border: 1px solid black;	
}

.side_bar {
	background-color: black; 
	padding: 30px; 
	width: 175px; 
	height: auto; 
	cursor: pointer; 
	font-size: 20px; 
	color: white;	
}
</style>
</head>

<body id="top">
	<!--top-->
	<%@ include file="./../include/top.jsp"%>
	<!--각 페이지 이미지-->
	<div class="bgded overlay"
		style="background-image: url('../images/demo/backgrounds/01.png');">
		<div id="breadcrumb" class="hoc clear">
			<!--이미지 위에 글쓰는곳-->
		</div>
	</div>
	<div class="wrapper row3">
		<main class="hoc container clear">
			<!-- main body -->
			<div class="content">
				<div class="container">
					<div class="row">
					
						<!-- 영역 1. 사이드바 -->
						<div class="divborder col-2" style="height:5000px; ">
							<div class="side_menu" style="position: fixed; margin-top: 50px;">
								<div class="side_bar" onclick="location.href='./../market/marketMain.do';">PRODUCTS</div> &nbsp							
								<div class="side_bar" onclick="location.href='./../market/marketUniform.do';">CUSTOM-UNIFORM</div> &nbsp
								<div class="side_bar" onclick="location.href='./../market/marketRental.do';">RENTAL</div> &nbsp
								<div class="side_bar" onclick="location.href='./../market/marketBasket.do';">SHOPPING BASKET</div>
							</div>
						</div>
						<!-------------------------------------------------------------------------------------->

						<!-- 영역 2. 미리보기 -->
						<div class="divborder col-6" style="height:px; ">
							
						</div>
						
						
						
						
						<!-------------------------------------------------------------------------------------->
						
						<!-- 영역 3. 아이템 -->
						<div class="divborder col-4" style="height:;">  
						
						</div>
				</div>
			</div>
	</div>

</body>





<!-- / main body -->
<div class="clear"></div>
</main>
</div>
<!-- footer -->
<%@ include file="./../include/footer.jsp"%>
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="./../resources/js/jquery.min.js"></script>
<script src="./../resources/js/jquery.backtotop.js"></script>
<script src="./../resources/js/jquery.mobilemenu.js"></script>
</body>
</html>