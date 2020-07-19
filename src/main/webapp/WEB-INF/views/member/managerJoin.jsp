<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>B-PRO</title>

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script> -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="./../resources/css/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<style>
h2 { font-size : 24px; color:#000066; line-height:30px; font-family : Nanum Pen Script;
	margin:52px auto 10px 0px;
	padding : 2px 10px 2px 0px;
	border-bottom : 3px solid #000066;
}

.box select {
  background-color: #FFFFFF;
  color: black;
  padding: 12px;
  width: 250px;
  border: none;
  font-size: 20px;
  box-shadow: 0 5px 25px rgba(0, 0, 0, 0.2);
  -webkit-appearance: button;
  appearance: button;
  outline: none;
}

.box::before {
  content: "\f13a";
  font-family: FontAwesome;
  position: absolute;
  top: 0;
  right: 0;
  width: 20%;
  height: 100%;
  text-align: center;
  font-size: 28px;
  line-height: 45px;
  color: rgba(255, 255, 255, 0.5);
  background-color: rgba(255, 255, 255, 0.1);
  pointer-events: none;
}

.box:hover::before {
  color: rgba(255, 255, 255, 0.6);
  background-color: rgba(255, 255, 255, 0.2);
}

.box select option {
  padding: 30px;
}
input[type=checkbox], input[type=radio]
{
	width : 20px; height : 20px; cursor: pointer;
}
label {
    cursor: pointer; font-size : 18px;
}
#file { display:none; } 

</style>

</head>
<body id="top">
<!--top-->
<%@ include file="./../include/top.jsp"%>
<!--각 페이지 이미지-->
<div class="bgded overlay">
	<div id="breadcrumb" class="hoc clear"> 
	  <!-- 이미지 위에 글쓰는곳 -->
	</div>
</div>
	<main class="hoc container clear">
	    <div class="container">
	    <h1 class="title-join" style="font-size:40px; font-weight:bold; text-align:center; font-family : Musinsa">매니저 지원</h1>
	    <form action="/member/v2/join/complete" method="post" id="myForm" novalidate>
			<!-- Header -->
			<header class="member-header">
			    <div class="logo">
			
			    </div>
			</header>
			<!-- //Header -->
	        
	        <h2>지원 동기</h2>
			<div class="box" style="width: 100%; height: 300px;">
			    <textarea style="width: 100%; height: 100%;"></textarea>
			</div>
	        
			<h2>현재 하는 일</h2>
			<div class="box" style="width: 100%; height: 300px;">
			    <textarea style="width: 100%; height: 100%;"></textarea>
			</div>
	        
			<h2>주요 경력</h2>
			<div class="box" style="width: 100%; height: 300px;">
			    <textarea style="width: 100%; height: 100%;"></textarea>
			</div>
	          
	        <h2>활동할 수 있는 지역</h2>
	        <table class="table table-borderless">
				<tr>
		          	<td width="20px;"><input type="checkbox" name="location" id="location_" value="강서구"/></td>
		          	<td><label for="location_">강서구</label></td>
		            <td width="20px;"><input type="checkbox" name="location" id="ST" value="강동구"/></td>
		            <td><label for="ST">강동구</label></td>
		            <td width="20px;"><input type="checkbox" name="location" id="RW" value="강남구"/></td>
		            <td><label for="RW">강남구</label></td>
		        </tr>
				<tr>
		          	<td><input type="checkbox" name="location" id="SPG" value="성북구"/></td>
		          	<td><label for="SPG">성북구</label></td>
		            <td><input type="checkbox" name="location" id="JG" value="중구"/></td>
		            <td><label for="JG">중구</label></td>
		            <td><input type="checkbox" name="location" id="EP" value="은평구"/></td>
		            <td><label for="EP">은평구</label></td>
		        </tr>
				<tr>
		          	<td ><input type="checkbox" name="location" id="GC" value="금천구"/></td>
		          	<td ><label for="GC">금천구</label></td>
		            <td ><input type="checkbox" name="location" id="KJ" value="광진구"/></td>
		            <td ><label for="KJ">광진구</label></td>
		            <td ><input type="checkbox" name="location" id="SD" value="서대문구"/></td>
		            <td ><label for="SD">서대문구</label></td>
		        </tr>
		  		<tr>
		          	<td ><input type="checkbox" name="location" id="JRG" value="중랑구"/></td>
		          	<td ><label for="JRG">중랑구</label></td>
		            <td ><input type="checkbox" name="location" id="GB" value="강북구"/></td>
		            <td ><label for="GB">강북구</label></td>
		            <td ><input type="checkbox" name="location" id="GA" value="관악구"/></td>
		            <td ><label for="GA">관악구</label></td>
		        </tr>
		        <tr>
		          	<td ><input type="checkbox" name="location" id="GR" value="구로구"/></td>
		          	<td ><label for="GR">구로구</label></td>
		            <td ><input type="checkbox" name="location" id="YD" value="영등포구"/></td>
		            <td ><label for="YD">영등포구</label></td>
		            <td ><input type="checkbox" name="location" id="MP" value="마포구"/></td>
		            <td ><label for="MP">마포구</label></td>
		        </tr>
		        <tr>
		          	<td ><input type="checkbox" name="location" id="JR" value="종로구"/></td>
		          	<td ><label for="JR">종로구</label></td>
		            <td ><input type="checkbox" name="location" id="DB" value="도봉구"/></td>
		            <td ><label for="DB">도봉구</label></td>
		            <td ><input type="checkbox" name="location" id="YS" value="용산구"/></td>
		            <td ><label for="YS">용산구</label></td>
		        </tr>
		        <tr>
		          	<td ><input type="checkbox" name="location" id="DJ" value="동작구"/></td>
		          	<td ><label for="DJ">동작구</label></td>
		            <td ><input type="checkbox" name="location" id="SC" value="서초구"/></td>
		            <td ><label for="SC">서초구</label></td>
		            <td ><input type="checkbox" name="location" id="SP" value="송파구"/></td>
		            <td ><label for="SP">송파구</label></td>
		        </tr>
		        <tr>
		          	<td ><input type="checkbox" name="location" id="NO" value="노원구"/></td>
		          	<td ><label for="NO">노원구</label></td>
		            <td ><input type="checkbox" name="location" id="SDG" value="성동구"/></td>
		            <td ><label for="SDG">성동구</label></td>
		            <td ><input type="checkbox" name="location" id="YC" value="양천구"/></td>
		            <td ><label for="YC">양천구</label></td>
		        </tr>
		        <tr>
		          	<td ><input type="checkbox" name="location" id="LB" value="동대문구"/></td>
		          	<td ><label for="LB">동대문구</label></td>
		          	<td ></td>
		          	<td ></td>
		          	<td ></td>
		          	<td ></td>
		        </tr>
	        </table>
	        
	        <h2>활동 가능 기간</h2>
			<table class="table table-borderless">
				<tr>
		          	<td width="20px;"><input type="checkbox" name="period" id="period_3" value="3"/></td>
		          	<td><label for="period_3">3개월</label></td>
		            <td width="20px;"><input type="checkbox" name="period" id="period_6" value="6"/></td>
		            <td><label for="period_6">6개월</label></td>
		            <td width="20px;"><input type="checkbox" name="period" id="period_12" value="12"/></td>
		            <td><label for="period_12">12개월</label></td>
		        </tr>
	        </table>

	        <div style="text-align:center">
		        <button class="btn btn-outline-success" style="font-size:20px;">지원 하기</button>
	        </div>
	    	</form>
		</div>
		<div class="clear"></div>
	</main>
	<!-- footer -->
	
<%@ include file="./../include/footer.jsp"%>
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="./../resources/js/jquery.min.js"></script>
<script src="./../resources/js/jquery.backtotop.js"></script>
<script src="./../resources/js/jquery.mobilemenu.js"></script>


</body>  
</html> 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  