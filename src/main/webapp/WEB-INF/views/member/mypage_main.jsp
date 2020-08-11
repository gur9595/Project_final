<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>B-PRO</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link href="./../resources/css/layout.css" rel="stylesheet" type="text/css" media="all">
<link href="./../resources/css/match_main.css" rel="stylesheet" type="text/css" media="all">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>


<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="./../resources/js/mypage_main.js"></script>
<link rel="stylesheet" href="./../resources/css/mypage_main.css">
</head>
<style>
.container{
	max-width : 900px;
}
</style>
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
		          		<p class="text-center h2">정보수정</p> <br />
		            	<div class="text-center" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)"style="cursor: pointer;" id="profile" >
							<img src="./../resources/img/mypage/editprofile.png" alt="" />
							<br /> <br> 
							<h3 class="text-uppercase h4 mb-3 link">profile</h3>
						</div>
					</div>
					<div class="col-md-4 col-lg-4 mb-4 mb-lg-4 border-right" data-aos="fade-up" data-aos-delay="100">
						<p class="text-center h2">경기기록</p> <br />
						<div class="text-center" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)"style="cursor: pointer;" id="history">
							<img src="./../resources/img/mypage/gamehistory.png" alt="" />
							<br><br>
							<h3 class="text-uppercase h4 mb-3 link">history</h3>
						</div>
					</div>
					<div class="col-md-4 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="200">
						<p class="text-center h2">Ball 거래내역</p> <br />
						<div class="text-center" id="ball" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)"style="cursor: pointer;">
							<img src="./../resources/img/mypage/charge.png" alt="" /> 
							<br><br />
							<h3 class="text-uppercase h4 mb-3 link">ball</h3>
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