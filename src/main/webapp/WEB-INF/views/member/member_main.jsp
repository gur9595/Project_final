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
<link href="./../resources/css/layout.css" rel="stylesheet" type="text/css" media="all">
<link href="./../resources/css/match_main.css" rel="stylesheet" type="text/css" media="all">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src="./../resources/js/match_main.js"></script>
</head>
<body id="top">

<!--top-->
<%@ include file="./../include/top.jsp"%>

<!--각 페이지 이미지-->
<div class="bgded overlay" style="background-image:url('./../resources/img/top.png');">
  <div id="breadcrumb" class="hoc clear"> 
    <!--이미지 위에 글쓰는곳-->
  </div>
</div>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <div class="content">
    	<div class="site-section first-section">
			<div class="container">
		        <a name="target"></a>
		        <div class="row mb-5">
		        	<div class="col-md-12 text-center target" data-aos="fade"></div>
		        </div>
	        	<div class="row border-responsive">
					<div class="col-md-4 col-lg-4 mb-4 mb-lg-4 border-right" data-aos="fade-up" data-aos-delay="">
		          		<p class="text-center h2"><small>경기장이 없다면?</small><br /><br />구장 예약</p> 
		            	<div class="text-center" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)"style="cursor: pointer;">
							<img src="./../resources/img/match/match_1.png" id="stadium" alt="" />
							<br /> 
							<h3 class="text-uppercase h4 mb-3">Stadium</h3>
							<span style="cursor: pointer;" class="link" id="football">축구장</span> / 
							<span style="cursor: pointer;" class="link" id="footsal">풋살장</span>
						</div>
					</div> 
					<div class="col-md-4 col-lg-4 mb-4 mb-lg-4 border-right" data-aos="fade-up" data-aos-delay="100">
						<p class="text-center h2"><small>상대가 없다면?</small><br /><br />상대 찾기</p>
						<div class="text-center" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)"style="cursor: pointer;">
							<img src="./../resources/img/match/match_2.png" alt="" />
							<br>
							<h3 class="text-uppercase h4 mb-3">Game</h3>
							<span style="cursor: pointer;" class="link" id="game_apply">매칭 신청</span> / 
							<span style="cursor: pointer;" class="link" id="game_list">게임 목록</span>
						</div>
					</div>
					<div class="col-md-4 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="200">
						<p class="text-center h2"><small>혼자 뛰고싶다면?</small><br /><br />1인 신청</p>
						<div class="text-center" id="player" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)"style="cursor: pointer;">
							<img src="./../resources/img/match/mercenary.png" alt="" /> 
							<br><br />
							<h3 class="text-uppercase h4 mb-3 link">player</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br /><br />
	    <script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=36334fae12132b7c9a4b0c870101ef91&libraries=services"></script>
	    <!-- 메뉴클릭 시 화면이동할 부분 -->
	    <div id="contents_target" style="height: 50px;"></div> 
	    <!-- 메뉴클릭 시 내용 출력 부분 -->
	    <div class="mt-0" id="contents"></div>
	</div>
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
</body>
</html>