<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">

<link rel="stylesheet" href="./../resources/css/member_join2.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<script src="./../resources/js/mypage_main.js"></script>
<style>
h2 { 
	font-size : 30px; color:#000066; line-height:30px;
	margin:35px auto 10px 0px;
	padding : 2px 10px 2px 0px;
	border-bottom : 3px solid #000066;
}
input[type=text]{
	font-size:25px;
}
.tr-hover th{
	border: none;
}
.tr-hover {
	border: none;
}
.tr-hover:hover {
	background: #EAEAEA;
}
.con {
	max-width:600px;
	margin-left:auto; margin-right:auto;
}
p{
	 display:inline;
}
</style>

<main class="hoc container clear" style="max-width:1200px;">
	<div class="con">
		<table style="border: 0;">
			<div style="background: #FFFFFF;">
			<!-- Header -->
			<header class="member-header">
				<div class="logo"></div>
				<h1 style="font-size: 40px; text-align: center; font-weight:bold;">${dto.m_name }회원님의 전적</h1>
			</header>
				<br />
				<h2>총 전적</h2>
				<br />
				<div style="font-size: 30px;">총 ${total }회 매치 ${goal }골 ${assist }어시</div>
				
				<br />
				<br />	
				<h2>내게 어시스트 한 BEST 3</h2>
				<table style="border: none; font-size: 30px;" >
				    
				    <c:forEach items="${goalAssistLists }" var="row" varStatus="status" begin="0" end="2">
				    <!-- var="row" : row는 iterator과 같은넘. row가 쭉 움직이면서 데이터 가져옴. -->
				    <tbody>
				      	<tr class="tr-hover">
				        	<th>
				        	<c:choose>
				        		<c:when test="${status.count==1 }"><p>🥇</p></c:when>
				        		<c:when test="${status.count==2 }"><p>🥈</p></c:when>
				        		<c:when test="${status.count==3 }"><p>🥉</p></c:when>
				        	</c:choose>
				        	 &nbsp;${row.name } &nbsp;&nbsp; ${row.count }회 </th>
				    	</tr>
				    </tbody>
					</c:forEach>
				</table>
				<h2>내 패스로 골을 넣은 BEST 3</h2>
				<table style="border: none; font-size: 30px;" >
				    
				    <c:forEach items="${assistGoalLists }" var="row" varStatus="status" begin="0" end="2">
				    <!-- var="row" : row는 iterator과 같은넘. row가 쭉 움직이면서 데이터 가져옴. -->
				    <tbody>
				      	<tr class="tr-hover">
				        	<th>
				        	<c:choose>
				        		<c:when test="${status.count==1 }"><p>🥇</p></c:when>
				        		<c:when test="${status.count==2 }"><p>🥈</p></c:when>
				        		<c:when test="${status.count==3 }"><p>🥉</p></c:when>
				        	</c:choose>
				        	&nbsp;${row.name } &nbsp;&nbsp; ${row.count }회</th>
				    	</tr>
				    </tbody>
					</c:forEach>
				</table>
			</div>
		</table>
	</div>
</main> 