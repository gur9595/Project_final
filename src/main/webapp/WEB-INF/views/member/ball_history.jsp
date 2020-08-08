<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<main class="hoc container clear" id="main" >
<link rel="stylesheet" href="./../resources/css/member_join2.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>



<script src="./../resources/js/mypage_main.js"></script>
<style>

.txtBox31 { border-style: solid; border-width: 2px 2px 2px 8px; padding: 12px; word-break: break-all; }
.txtBox31 { border-color: DodgerBlue; width: 350px; }
.hoc{max-width:1100px;}

input[type=text]{
	font-size:25px;
}
input[type=password] {
		font-size:15px;
        font-family: "nanum";
        
        &::placeholder {
        	font-family: "NanumSquare";
        }
    }
input[type=email]{
	font-size:25px;
}
</style>

	<table style="border: 0">
		<div>
			<div style="background: #FFFFFF;">
				<!-- Header -->
				<header class="member-header">
					<div class="logo"></div>
					<h1 style="font-size: 40px; text-align: center; font-weight:bold;">회원님의 Ball 거래 내역</h1>
				</header>
					<br />
					<h2>회원 아이디</h2>
					<input type="text" style="width: 500px; border: 0;" class="ballHistory" id="m_id" name="m_id" value="접속중인 아이디 :  ${m_id }" readonly>
					
					<h2>현재 보유 Ball</h2>
					<input type="text" style="width: 500px; border: 0;" class="ballHistory" id="cash" name="cash" value="회원님의 현재 보유량은  ${cash } Ball 입니다." readonly>
					
					<h2>Ball 거래 내역</h2>
					<div class="container" style="">
					<table class="table table-hover" style="text-align: center; font-size: 20px; border: 0;">
						<thead>
					      	<tr>
					        	<th style="width: 50%">거래 일시</th>
					        	<th style="width: 50%">거래 내역</th>
					      	</tr>
					    </thead>
					    
					    <c:forEach items="${lists }" var="row" varStatus="status" begin="0" end="9">
					    <tbody>
					      	<tr style="border: 0;">
					        	<th>${row.cs_date }</th>
					        	<th>
									<c:choose>
										<c:when test="${row.cs_type =='spend' }">
											-
										</c:when>
										
										<c:when test="${row.cs_type =='charge' }">
											+
										</c:when>
									</c:choose>
									${row.cs_money } Ball
								</th>
					    	</tr>
					    </tbody>
						</c:forEach>
					</table>
					</div>
				</div>
				
			</div>
		</div>
	</table>
</main> 