<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link href="./../resources/css/memberEdit.css" rel="stylesheet"
	type="text/css" media="all">
<link href="./../resources/css/layout.css" rel="stylesheet"
	type="text/css" media="all">
<script src="./../resources/js/mypage_main.js"></script>
<style>
label {
	display: inline;
}
</style>
	<form action="../member/memberEditAction.do"
		enctype="multipart/form-data" method="post" id="myForm" name="form">
	<main class="hoc container clear" id="main">
	
		<div style="background: #FFFFFF; margin-left: auto; margin-right: auto;">
			<header class="member-header">
				<div class="logo"></div>
				<h1 style="font-size: 40px; text-align: center; font-weight: bold;">회원정보
					수정</h1>
			</header>
			
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
         
			<div class="first one_half">
				<h2>아이디</h2>
				<input type="text" class="txtBox31" id="m_id" name="m_id"
					value="${dto.m_id }" readonly> <br />
 
				<h2>비밀번호</h2>
				<input type="password" class="txtBox31" id="m_pw" name="m_pw"
					minlength="8" placeholder="비밀번호(숫자,영문,특수문자 조합 최소8자)">

				<h2>비밀번호 확인</h2>
				<input type="password" class="txtBox31" id="m_pw2" name="m_pw2"
					autocomplete="new-password" placeholder="비밀번호 재입력"
					style="font-size: 25px;"> <br>
				<h2>이름</h2>
				<input type="text" class="txtBox31" id="m_name" name="m_name"
					placeholder="이름입력" minlength="2" maxlength="8"
					value="${dto.m_name }"> <br>

				<h2>생년월일</h2>
				<input type="text" class="txtBox31" id="m_birth" name="m_birth"
					maxlength="8" placeholder="예)19970121" value="${dto.m_birth }">


				<br>
				<h2>휴대전화</h2>
				<input type="text" class="txtBox31" id="m_phone" name="m_phone"
					minlength="8" maxlength="8"
					value="<%=request.getAttribute("phone")%>" /> <br>
								
				<h2>이메일</h2>
				<input type="email" class="txtBox31" id="m_email" name="m_email"
					maxlength="50" placeholder="이메일" value="${dto.m_email }"> <br>

				<h2>주소</h2>
				<div>
					<input type="text" id="postcode" name="zip1" placeholder="우편번호"
						style="width: 100px; margin-top: 5px; display: inline;" readonly />
					<button type="btn btn-warning" onclick="DaumPostcode()"
						style="color:yellow; width:110px; height:35px; display: inline; margin-top: 5px; font-weight: bold">주소찾기</button>
					<input type="text" id="m_addr1" name="m_addr1" placeholder="주소"
						style="margin-top: 5px; width: 500px;" readonly
						value="<%=request.getAttribute("addr1")%>" /> <input type="text"
						id="m_addr2" name="m_addr2" placeholder="상세주소" class="n-input"
						style="margin-top: 5px; width: 500px;"
						value="<%=request.getAttribute("addr2")%>" />
				</div>

			</div>
			<div class="one_half" style="font-size: 20px; height: 1091px;">


				<h2>성별 체크</h2>
				<input type="radio" name="m_sex" id="man" value="남자"
					style="display: inline;"> <label for="man"
					style="padding-right: 320px;">남자</label> <input type="radio"
					name="m_sex" id="wowan" value="여자" style="display: inline;">
				<label for="wowan">여자</label> <br />
				<br />
				<h2>주 포지션 체크</h2>
				<input type="checkbox" name="m_position" id="LW" value="LW" style="display: inline;" />
				<label for="LW" style="padding-right: 230px;">LW</label>
				<input type="checkbox" name="m_position" id="ST" value="ST" style="display: inline;" />
				<label for="ST" style="padding-right: 230px;">ST</label> 
				<input type="checkbox" name="m_position" id="RW" value="RW" style="display: inline;" />
				<label for="RW">RW</label>
				<br /><br />
				<input type="checkbox" name="m_position" id="LM" value="LM"style="display: inline;" /> 
				<label for="LM" style="padding-right: 230px;">LM</label> 
				<input type="checkbox" name="m_position" id="AM" value="AM" style="display: inline;" />
				<label for="AM" style="padding-right: 230px;"">AM</label> 
				<input type="checkbox" name="m_position" id="RM" value="RM" style="display: inline;" />
				<label for="RM">RM</label>
				<br /><br /> 
				<input type="checkbox" name="m_position" id="CM" value="CM" style="display: inline;" />
				<label for="CM" style="padding-right: 230px;">CM</label> 
				<input type="checkbox" name="m_position" id="CB" value="CB" style="display: inline;" />
				<label for="CB" style="padding-right: 230px;">CB</label> 
				<input type="checkbox" name="m_position" id="DM" value="DM" style="display: inline;" />
				<label for="DM">DM</label>
				<br /><br /> 
				<input type="checkbox" name="m_position" id="LB" value="LB" style="display: inline;" />
				<label for="LB" style="padding-right: 230px;">LB</label> 
				<input type="checkbox" name="m_position" id="GK" value="GK" style="display: inline;" />
				<label for="GK" style="padding-right: 230px;">GK</label> 
				<input type="checkbox" name="m_position" id="RB" value="RB" style="display: inline;" /> 
				<label for="RB">RB</label>
				<br /><br />
				
				
				<h2>주관적인 실력</h2>
				<input type="radio" name="m_abil" id="best" value="최상"
					style="display: inline;"> <label for="best"
					style="padding-right: 230px;">최상</label> <input type="radio"
					name="m_abil" id="tops" value="상" style="display: inline;">
				<label for="tops" style="padding-right: 230px;">상</label> <input
					type="radio" name="m_abil" id="mediumhigh" value="중상"
					style="display: inline;"> <label for="mediumhigh">중상</label>
				<br />
				<br /> <input type="radio" name="m_abil" id="medium" value="중"
					style="display: inline;"> <label for="medium"
					style="padding-right: 230px;">중</label> <input type="radio"
					name="m_abil" id="mediumlow" value="중하" style="display: inline;">
				<label for="mediumlow" style="padding-right: 230px;">중하</label> <input
					type="radio" name="m_abil" id="low" value="하"
					style="display: inline;"> <label for="low">하</label> <br />
				<br />
				<h2>주로쓰는 발</h2>
				<input type="radio" name="m_foot" id="LF" value="왼발"
					style="display: inline;"> <label for="LF"
					style="padding-right: 230px;">왼발</label> <input type="radio"
					name="m_foot" id="RF" value="오른발" style="display: inline;">
				<label for="RF" style="padding-right: 220px;">오른발</label> <input
					type="radio" name="m_foot" id="ALL" value="양발"
					style="display: inline;"> <label for="ALL">양발</label> <br />
				<br />
				<h2>프로필 변경하기</h2>
				<table style="border:3px solid #000066; text-align: center; vertical-align: middle;">
					<tr>
						<th style="width: 50%;">업로드된 파일</th>
						<th style="width: 50%;">변경할 파일</th>
					</tr>
					<tr>
						<td><img src="./../resources/uploadsFile/${dto.m_pic }"
							alt="" style="" /></td>
						<td>
							<div id="image_container" style="" align="center"></div>
						</td>
					</tr>
					<tr>
						<td colspan='2' style="border: 0; border-top: 1px solid #000066;"><input
							type="file" name="file" accept="image/*" onchange="setPic(event)"
							style="margin-left: 10%;" /></td>
					</tr>
				</table> 

			</div>
		</div>
		<br /><br />
	</main>
	<div style="display:table; margin-left:auto; margin-right:auto;">
		<div style="text-align: center; display:table-cell;">
			<button type="submit" id="correct" style="color:yellow; font-size: 30px; display:inline-block;">수정하기</button>
		</div>
	</div>
	</form>