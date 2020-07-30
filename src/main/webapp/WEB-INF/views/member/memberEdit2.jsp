<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<main class="hoc container clear" id="main">
<script src="./../resources/js/mypage_main.js"></script>
    <div class="container">
    	<h1 class="title-join" style="font-size:40px; font-weight:bold; text-align:center; font-family : Musinsa">정&nbsp;보&nbsp;수&nbsp;정</h1>
    	<form action="../member/memberEditAction.do" enctype="multipart/form-data" method="post"id="myForm" name="form"  >
		
			<input type="hidden" name="m_id" value="${dto.m_id }"/>
			<input type="hidden" name="m_pw" value="${dto.m_pw }"/>
			<input type="hidden" name="m_name" value="${dto.m_name }"/>
			<input type="hidden" name="m_birth" value="${dto.m_birth }"/>
			<input type="hidden" name="m_phone" value="${dto.m_phone }"/>
			<input type="hidden" name="m_email" value="${dto.m_email }"/>
			<input type="hidden" name="m_addr" value="${dto.m_addr }"/>
			<input type="hidden" id="sex" value="${dto.m_sex }"/>
			<input type="hidden" id="position" value="${dto.m_position }"/>
			<input type="hidden" id="foot" value="${dto.m_foot }"/>
			<input type="hidden" id="abil" value="${dto.m_abil }"/>
			<input type="hidden" id="pic" value="${dto.m_pic }"/>
			
			<header class="member-header">
			    <div class="logo">
			
			    </div>
			</header>
		
        	<h2>성별 체크</h2>
	        <table class="table table-borderless">
	        	<tr>
					<td width="20px;">
						<input type="radio" name="m_sex" id="man" value="남자">
					</td>
					<td><label for="man">남자</label></td>
					<td width="20px;"><input type="radio" name="m_sex" id="woman" value="여자"></td>
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
			<table style="text-align: center; vertical-align: middle;">
				<tr >
					<th>업로드된 파일</th>
					<th colspan="2">변경할 파일</th>
				</tr>
				<tr>
					<td width="40%"><img src="./../resources/uploadsFile/${dto.m_pic }" alt="" style="width: 150px; height: 200px;"/></td>
					<td width="20%"><input type="file" name="file" accept="image/*" onchange="setPic(event)" style="margin-left: 30%;" /></td>
					<td width="40%">
						<div id="image_container" style="width: 150px; height: 220px;" align="center"></div>
					</td>
				</tr>
			</table>

	        <div style="text-align:center">

	        	<button type="button" class="btn btn-outline-info" style="font-size:20px;" onclick="location.href= 'memberEidt.do'">이전페이지</button>  
		        <button class="btn btn-outline-success" type="submit" style="font-size:20px;">가입완료!!</button>

	        </div>
    	</form>
	</div>
</main>
</html> 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  