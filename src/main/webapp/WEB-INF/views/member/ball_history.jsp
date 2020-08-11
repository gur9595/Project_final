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
</style>

<main class="hoc container clear" style="max-width:1200px;">
	<div class="con">
		<table style="border: 0;">
			<div style="background: #FFFFFF;">
			<!-- Header -->
			<header class="member-header">
				<div class="logo"></div>
				<h1 style="font-size: 40px; text-align: center; font-weight:bold;">회원님의 Ball 거래 내역</h1>
			</header>
				<br />
				<h2>회원 아이디</h2>
				<input type="text" style="width: 500px; border: 0; margin-left: 18px;" class="ballHistory" id="m_id" name="m_id" value="ID :  ${m_id }" readonly>
				
				<h2>현재 보유 Ball</h2>
				<input type="text" style="width: 550px; border: 0; margin-left: 18px;" id="cash" name="cash" value="회원님의 현재 보유량은  ${cash }Ball 입니다." readonly>
				<br />
				<br />	
				<h2>Ball 거래 내역</h2>
				<table style="text-align: center; font-size: 20px; border: none;" >
					<thead>
				      	<tr>
				        	<th style="width: 50%; border: none;">거래 일시</th>
				        	<th style="width: 50%; border: none;">거래 내역</th>
				      	</tr>
				    </thead>
				    
				    <c:forEach items="${lists }" var="row" varStatus="status" begin="0" end="9">
				    <!-- var="row" : row는 iterator과 같은넘. row가 쭉 움직이면서 데이터 가져옴. -->
				    <tbody>
				      	<tr class="tr-hover">
				        	<th>${row.cs_date }</th>
				        	<th>
								<c:choose>
									<c:when test="${row.cs_type =='spend' }">
										<b style="color: red"> - ${row.cs_money } </b>
									</c:when>
									
									<c:when test="${row.cs_type =='charge' }">
										<b style="color: blue"> + ${row.cs_money } </b>
									</c:when>
								</c:choose>
								Ball
							</th>
				    	</tr>
				    </tbody>
					</c:forEach>
				</table>
			</div>
		</table>
	</div>
</main> 