<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--
Template Name: Chillaid
Author: <a href="https://www.os-templates.com/">OS Templates</a>
Author URI: https://www.os-templates.com/
Copyright: OS-Templates.com
Licence: Free to use under our free template licence terms
Licence URI: https://www.os-templates.com/template-terms
-->
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>B-PRO</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="./resources/css/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<!-- ############################## T O P############################################################ -->
<%@ include file="./include/top.jsp"%>
<!-- ################################################################################################ -->
<div class="jb-box">

	<video autoplay muted loop id="myVideo">
	  <source src="./resources/videos/testmov002.mp4" type="video/mp4">
	</video>
	
  <div class="jb-text"> 
    <!-- ################################################################################################ -->
    <article>
      <p>나는 프로지...ㅎ</p>
    </article>
    <!-- ################################################################################################ -->
  </div>
  
</div>
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ############################### 메 뉴 아 이 콘 ######################################## -->
    <section id="introblocks">
      <ul class="nospace group btmspace-80 elements elements-four">
        <li class="one_quarter">
          <article><a href="./club/clubMain.do"><i class="fas fa-trophy"></i></a>
            <h6 class="heading">Club</h6> 
            <p>클럽에 가입하여 함께 즐겨봐요!!</p>
          </article>
        </li>
        <li class="one_quarter">
          <article><a href="./match/matchMain.do"><i class="fas fa-chess-queen"></i></a>
            <h6 class="heading">Matching</h6>
            <p>경기장을 예약하여 보다 편하게!!</p>
          </article>
        </li>
        <li class="one_quarter">
          <article><a href="./game/gameMain.do"><i class="fas fa-futbol"></i></a>
            <h6 class="heading">Game</h6>
            <p>회원님의 경기를 확인할 수 있어요!!</p>
          </article>
        </li>
        <li class="one_quarter">
          <article><a href="./market/marketMain.do"><i class="fas fa-shopping-cart"></i></a>
            <h6 class="heading">Market</h6>
            <p>장비가 없어요? 여기에요 여기!!</p>
          </article>
        </li>
      </ul>
    </section>
    <!-- ################################################################################################ -->
    <section class="group shout">
      <figure class="one_half first"><img src="images/demo/546x356.png" alt="">
        <figcaption class="heading"><a href="#">Club Ranking</a></figcaption>
        	
      </figure>
      <figure class="one_half"><img src="images/demo/546x356.png" alt="">
        <figcaption class="heading"><a href="#">Notice</a></figcaption>
        	
      </figure>
    </section>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    
  </main>
</div>
<!-- ######################################## footer ########################################### -->
<%@ include file="./include/footer.jsp"%>
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="./resources/js/jquery.min.js"></script>
<script src="./resources/js/jquery.backtotop.js"></script>
<script src="./resources/js/jquery.mobilemenu.js"></script>
<!-- Homepage specific -->
<script src="./resources/js/jquery.easypiechart.min.js"></script>
<!-- / Homepage specific -->
</body>
</html>

