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
.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 350px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

#placesList li {
	list-style: none;
}

#placesList .item {
	position: relative;
	border-bottom: 1px solid #888;
	overflow: hidden;
	cursor: pointer;
	min-height: 65px;
}

#placesList .item span {
	display: block;
	margin-top: 4px;
}

#placesList .item h5, #placesList .item .info {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#placesList .item .info {
	padding: 10px 0 10px 55px;
}

#placesList .info .gray {
	color: #8a8a8a;
}

#placesList .info .jibun {
	padding-left: 26px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
		no-repeat;
}

#placesList .info .tel {
	color: #009900;
}

#placesList .item .markerbg {
	float: left;
	position: absolute;
	width: 36px;
	height: 37px;
	margin: 10px 0 0 10px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png)
		no-repeat;
}

#placesList .item .marker_1 {
	background-position: 0 -10px;
}

#placesList .item .marker_2 {
	background-position: 0 -56px;
}

#placesList .item .marker_3 {
	background-position: 0 -102px
}

#placesList .item .marker_4 {
	background-position: 0 -148px;
}

#placesList .item .marker_5 {
	background-position: 0 -194px;
}

#placesList .item .marker_6 {
	background-position: 0 -240px;
}

#placesList .item .marker_7 {
	background-position: 0 -286px;
}

#placesList .item .marker_8 {
	background-position: 0 -332px;
}

#placesList .item .marker_9 {
	background-position: 0 -378px;
}

#placesList .item .marker_10 {
	background-position: 0 -423px;
}

#placesList .item .marker_11 {
	background-position: 0 -470px;
}

#placesList .item .marker_12 {
	background-position: 0 -516px;
}

#placesList .item .marker_13 {
	background-position: 0 -562px;
}

#placesList .item .marker_14 {
	background-position: 0 -608px;
}

#placesList .item .marker_15 {
	background-position: 0 -654px;
}

#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	cursor: default;
	color: #777;
}
</style>


<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script>
	$(document).ready( function() {
		
        $('#close').hide();
        
        $('#close').click(function() {
          $("#contents").html("");
          $('#close').toggle();
          $('html, body').stop().animate({
            scrollTop : $('.target span').offset().top
          });
        });

        $('#football').click(function() {
            $("#contents").load("stadiumMain.do", {"keyword" : "축구장"});
            $('html, body').stop().animate({
              scrollTop : $('#contents_target').offset().top
            });
            
            $('#close').show();
            
        });
        
        $('#footsal').click(function() {
        	$("#contents").load("stadiumMain.do", {"keyword" : "풋살장"});
            $('html, body').stop().animate({
              scrollTop : $('#contents_target').offset().top
            });
            
            $('#close').show();
            
        });

        $('#edit').click(function() {
          $("#contents").load("edit.html #edit");
          $('html, body').stop().animate({
            scrollTop : $('#contents_target').offset().top
          });

          $('#close').show();
        });
        
        $('#order_tracking').click(function() {
          $("#contents").load("order_tracking.html #order_tracking");
          $('html, body').stop().animate({
            scrollTop : $('#contents_target').offset().top
          });

          $('#close').show();
        });


      });

      // 배송조회
      var company_code = "";
      function companySelect(){
        var company_name = document.getElementById("company");
        var c_code = document.getElementById("c_code");
        company_code = company_name.options[company_name.selectedIndex].value;
      }
      function deliverySearch() {
        var d_num = document.getElementById("delivery_number").value;

        if(company_code == "" || d_num == ""){
          alert("택배회사와 운송장 번호를 입력하세요.");
          return;
        }
        else {
          window.open('https://tracker.delivery/#/' + company_code + '/' + d_num, 'name', 'resizable=no width=700 height=550');
        }
      }

      // 메뉴 줌 인/아웃
      function zoomIn(event) {
        event.target.style.transform = "scale(1.2)";
        event.target.style.zIndex = 0.5;
        event.target.style.transition = "all 0.5s";
      }
      function zoomOut(event) {
        event.target.style.transform = "scale(1)";
        event.target.style.zIndex = 0;
        event.target.style.transition = "all 0.5s";
      }

      // 메뉴로 이동
      function menu_move(){
        $('html, body').stop().animate({
            scrollTop : $('.target span').eq(0).offset().top
        });
      }

    </script>
    <style>
      .link {
        color: black;
      }
      .link:hover {
        color: #71BC42;
      }
      #close {
        color: black;
      }
      #close:hover {
        color: rgb(255, 0, 0);
      }
    </style>
</head>
<body id="top">
<!--top-->
<%@ include file="./../include/top.jsp"%>
<!--각 페이지 이미지-->
<div class="bgded overlay" style="background-image:url('../images/demo/backgrounds/01.png');">
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
          <div class="col-md-12 text-center target" data-aos="fade">
            
          </div>
        </div>

        <div class="row border-responsive">
          
          <div class="col-md-6 col-lg-6 mb-4 mb-lg-4 border-right" data-aos="fade-up" data-aos-delay="">
          	<p class="text-center h2"><small>경기장이 없다면?</small><br /><br />구장 예약</p> 
            <div class="text-center" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)"style="cursor: pointer;">
              <img src="./../resources/img/match/match_1.png" alt="" />
              <br /> 
              <h3 class="text-uppercase h4 mb-3">Stadium</h3>
              <span style="cursor: pointer;" class="link" id="football">축구장</span> / 
              <span style="cursor: pointer;" class="link" id="footsal">풋살장</span>
            </div>
          </div> 
          
          <div class="col-md-6 col-lg-6 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="200">
          	<p class="text-center h2"><small>상대가 없다면?</small><br /><br />상대 찾기</p>
            <div class="text-center" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)"style="cursor: pointer;">
              <img src="./../resources/img/match/match_2.png" alt="" />
              <br>
              <h3 class="text-uppercase h4 mb-3">Game</h3>
              <span style="cursor: pointer;" class="link" id="game_apply">게임 신청</span> / 
              <span style="cursor: pointer;" class="link" id="game_list">게임 목록</span>
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
<script src="./../resources/js/jquery.mobilemenu.js"></script>



</body>
</html>