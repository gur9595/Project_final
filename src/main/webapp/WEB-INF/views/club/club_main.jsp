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
<link href="./../resources/css/club.css" rel="stylesheet" /> 
</head>
<body id="top"> 
<!--top-->
<%@ include file="./../include/top.jsp"%>
<!--각 페이지 이미지-->
<div class="bgded overlay" style="background-image:url('../images/demo/backgrounds/01.png');">
  <div id="breadcrumb" class="hoc clear"> 
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">Club</a></li>
    </ul>
  </div>
</div>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <div class="content"> 
    	
    	<div class="club">
	    	<div class="clubBtn clubButton1">
	    		<div style="height:20%;"></div>
	    		<div style="height:20%; font-size:60px">클럽 검색</div>
	    		<div style="height:20%;">
					<i class='fas fa-search' style='font-size:120px;'></i>
				</div>
	    		<div style="height:20%;"></div>
	    		<div style="height:20%;"></div>
	    	</div>
	    	<div class="clubBtn clubButton2">
	    		<div style="height:20%;"></div>
	    		<div style="height:20%; font-size:60px">내 클럽</div>
	    		<div style="height:20%;">
					<i class='fas fa-tshirt' style='font-size:120px;'></i>
				</div>
	    		<div style="height:20%;"></div>
	    		<div style="height:20%;"></div>
	    	</div>
	    	<div class="clubBtn clubButton3"> 
	    		<div style="height:20%;"></div>
	    		<div style="height:20%; font-size:60px">클럽 생성</div>
	    		<div style="height:20%;">
					<i class='fas fa-pen' style='font-size:120px;'></i>
				</div>
	    		<div style="height:20%;"></div>
	    		<div style="height:20%;"></div>
	    	</div>
	    	<div class="clubBtn clubButton4">
	    		<div style="height:20%;"></div>
	    		<div style="height:20%; font-size:60px">클럽 랭킹</div>
	    		<div style="height:20%;">
					<i class='fas fa-trophy' style='font-size:120px;'></i>
				</div>
	    		<div style="height:20%;"></div>
	    		<div style="height:20%;"></div>
	    	</div>
    	</div>
    	
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
<script src="./../resources/js/jquery.mobilemenu.js"></script>
<script src="./../resources/js/choices.js"></script>
</body>
</html>