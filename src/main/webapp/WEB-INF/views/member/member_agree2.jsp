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
	    <h1 class="title-join" style="font-size:40px; font-weight:bold; text-align:center; font-family : Musinsa">회&nbsp;원&nbsp;가&nbsp;입</h1>
	    <form action="../member/memberJoin2.do" method="post" enctype="multipart/form-data" id="myForm" name="form"  >
			<!-- Header -->
			
			<input type="hid den" name="m_id" value="<%=request.getAttribute("m_id") %>"/>
			<input type="hid den" name="m_pw" value="<%=request.getAttribute("m_pw") %>"/>
			<input type="hid den" name="m_name" value="<%=request.getAttribute("m_name") %>"/>
			<input type="hid den" name="m_birth" value="<%=request.getAttribute("m_birth") %>"/>
			<input type="hid den" name="m_phone" value="<%=request.getAttribute("m_phone") %>"/>
			<input type="hid den" name="m_email" value="<%=request.getAttribute("m_email") %>"/>
			<input type="hid den" name="m_addr" value="<%=request.getAttribute("m_addr") %>"/>
			
			<header class="member-header">
			    <div class="logo">
			
			    </div>
			</header>
			<!-- //Header -->
	        <h2>성별 체크</h2>
	        <table class="table table-borderless">
	        	<tr>
					<td width="20px;"><input type="radio" name="m_sex" id="man" value="남자" ></td>
					<td><label for="man">남자</label></td>
					<td width="20px;"><input type="radio" name="m_sex" id="wowan" value="여자"></td>
					<td><label for="wowan">여자</label></td>
				</tr>
	        </table>
	        
			<h2>주 포지션 체크</h2>
			<table class="table table-borderless">
				<tr>
		          	<td width="20px;"><input type="checkbox" name="m_position" id="LW" value="LW"/></td>
		          	<td><label for="LW">LW</label></td>
		            <td width="20px;"><input type="checkbox" name="m_position" id="ST" value="ST"/></td>
		            <td><label for="ST">ST</label></td>
		            <td width="20px;"><input type="checkbox" name="m_position" id="RW" value="RW"/></td>
		            <td><label for="RW">RW</label></td>
		        </tr>
				<tr>
		          	<td><input type="checkbox" name="m_position" id="LM" value="LM"/></td>
		          	<td><label for="LM">LM</label></td>
		            <td><input type="checkbox" name="m_position" id="AM" value="AM"/></td>
		            <td><label for="AM">AM</label></td>
		            <td><input type="checkbox" name="m_position" id="RM" value="RM"/></td>
		            <td><label for="RM">RM</label></td>
		        </tr>
				<tr>
		          	<td ><input type="checkbox" name="m_position" id="CM" value="CM"/></td>
		          	<td ><label for="CM">CM</label></td>
		            <td ><input type="checkbox" name="m_position" id="CB" value="CB"/></td>
		            <td ><label for="CB">CB</label></td>
		            <td ><input type="checkbox" name="m_position" id="DM" value="DM"/></td>
		            <td ><label for="DM">DM</label></td>
		        </tr>
		  		<tr>
		          	<td ><input type="checkbox" name="m_position" id="LB" value="LB"/></td>
		          	<td ><label for="LB">LB</label></td>
		            <td ><input type="checkbox" name="m_position" id="GK" value="GK"/></td>
		            <td ><label for="GK">GK</label></td>
		            <td ><input type="checkbox" name="m_position" id="RB" value="RB"/></td>
		            <td ><label for="RB">RB</label></td>
		        </tr>
	        </table>
	        
			<h2>주관적인 실력</h2>
			<table class="table table-borderless">
				<tr>
					<td width="20px;"><input type="radio" name="m_abil" id="best" value="best" ></td>
					<td><label for="best">최상</label></td>
					<td width="20px;"><input type="radio" name="m_abil" id="top" value="top"></td>
					<td><label for="top">상</label></td>
					<td width="20px;"><input type="radio" name="m_abil" id="mediumhigh" value="mediumhigh"></td>
					<td><label for="mediumhigh">중상</label></td>
				</tr>
				<tr>
					<td><input type="radio" name="m_abil" id="medium" value="medium"></td>
					<td><label for="medium">중</label></td>
					<td><input type="radio" name="m_abil" id="mediumlow" value="mediumlow"></td>
					<td><label for="mediumlow">중하</label></td>
					<td><input type="radio" name="m_abil" id="low" value="low"></td>
					<td><label for="low">하</label></td>
				</tr>
			</table>
	          
	        <h2>주로쓰는 발</h2>
	        <table class="table table-borderless">
	        	<tr>
	        		<td width="20px;"><input type="radio" name="m_foot" id="LF" value="LF"></td>
	        		<td><label for="LF">왼발</label></td>
	        		<td width="20px;"><input type="radio" name="m_foot" id="RF" value="RF"></td>
	        		<td><label for="RF">오른발</label></td>
					<td width="20px;"><input type="radio" name="m_foot" id="ALL" value="ALL"></td>
					<td><label for="ALL">양발</label></td>
	        	</tr>
			</table>
	        
	        <h2>프로필 등록하기</h2>
			<table>
				<tr >
					<td>
						<input type="text" style="width:200px; height:200px;">
					</td>
					<td>
						<input type="file" name="m_pic" />
					</td>
				</tr>
			</table>

	        <div style="text-align:center">
	        	<button type="button" class="btn btn-outline-info" style="font-size:20px;" onclick="location.href= 'memberAgree.do'">이전페이지</button>  
		        <button class="btn btn-outline-success" type="submit" style="font-size:20px;">가입완료!!</button>
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
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  