<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>B-PRO</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="./../resources/css/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top"> 
<!--top-->
<%@ include file="./../include/top.jsp"%>
<!--각 페이지 이미지-->
<div class="bgded overlay" style="background-image:url('../images/demo/backgrounds/01.png');">
  <div id="breadcrumb" class="hoc clear"></div>
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
          <div class="col-md-4 col-lg-3 mb-4 mb-lg-4 border-right" data-aos="fade-up" data-aos-delay="" id="clubSearch">
            <div class="text-center" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)"style="cursor: pointer;">
              <i class='fas fa-search d-block ' style='font-size:62px;'></i>
              <br />
              <h3 class="text-uppercase h4 mb-3">클럽 검색</h3>
            </div>
          </div>
          <div class="col-md-4 col-lg-3 mb-4 mb-lg-4 border-right" data-aos="fade-up" data-aos-delay="100"  id="clubMyList">
            <div class="text-center" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)" style="cursor: pointer;">
              <i class='fas fa-tshirt d-block' style='font-size:62px;'></i>
              <br>              
              <h3 class="text-uppercase h4 mb-3">내 클럽</h3>
            </div>
          </div>
          <div class="col-md-4 col-lg-3 mb-4 mb-lg-4 border-right" data-aos="fade-up" data-aos-delay="100" id="clubCreate"> 
            <div class="text-center" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)" style="cursor: pointer;">
              <i class='fas fa-pen d-block' style='font-size:62px;'></i>
              <br>              
              <h3 class="text-uppercase h4 mb-3">클럽 생성</h3>
            </div>
          </div>

          <div class="col-md-4 col-lg-3 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="200" id="clubRanking">
            <div class="text-center" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)"style="cursor: pointer;">
              <i class='fas fa-trophy d-block' style='font-size:62px'></i>
              <br>
              <h3 class="text-uppercase h4 mb-3">클럽 랭킹</h3>
              <span style="cursor: pointer;" class="link" id="clubTotalRanking">전체 랭킹</span>/
              <span style="cursor: pointer;" class="link" id="clubGuRanking">구별 랭킹</span>
            </div>
          </div>
        </div>
      </div>
    </div>    
    <br /><br />    
    <!-- 메뉴클릭 시 화면이동할 부분 -->
    <div id="contents_target" style="height: 50px;"></div> 
    <!-- 메뉴클릭 시 내용 출력 부분 -->
    <div class="mt-0" id="contents" style="margin-right:auto; margin-left:auto;"></div>    	   	   	
    </div>
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- footer -->
<%@ include file="./../include/footer.jsp"%>
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src="./../resources/js/jquery.min.js"></script>
<script src="./../resources/js/jquery.backtotop.js"></script>
<script src="./../resources/js/moving.js"></script>
</body>
</html>