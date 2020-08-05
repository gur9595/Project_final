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
		font-size:25px;
        font-family: "nanum";
        
        &::placeholder {
        	font-family: "NanumSquare";
        }
    }
input[type=email]{
	font-size:25px;
}
</style>
	<table border=1>
		<div>

			<div style="background: #FFFFFF;">

				<!-- Header -->
				<header class="member-header">
					<div class="logo"></div>
					<h1 style="font-size: 40px; text-align: center; font-weight:bold;">회원정보 수정</h1>
				</header>
					<br /><br />
					<h2>아이디</h2>
					<input type="text" class="txtBox31" id="m_id" name="m_id" value="${dto.m_id }" readonly>

					<br/>
					
					<h2>비밀번호</h2>
					<input type="password" class="txtBox31" id="m_pw" name="m_pw" minlength="8" placeholder="비밀번호(숫자,영문,특수문자 조합 최소8자)">
		
					<h2>비밀번호 확인</h2>
					<input type="password" class="txtBox31" id="m_pw2" name="m_pw2" autocomplete="new-password" placeholder="비밀번호 재입력">

					<br>
					<h2>이름</h2>
					<input type="text" class="txtBox31" id="m_name" name="m_name" placeholder="이름입력" minlength="2" maxlength="8" value="${dto.m_name }">

					<br>

					<h2>생년월일</h2>
					<input type="text" class="txtBox31" id="m_birth" name="m_birth" maxlength="8" placeholder="예)19970121" value="${dto.m_birth }">


					<br>
					<h2>휴대전화</h2>
					<input type="text" class="txtBox31" id="m_phone" name="m_phone" minlength="4" maxlength="4"
						value="<%=request.getAttribute("phone") %>"" />
					
					<br>
					<h2>이메일</h2>
					<input type="email" class="txtBox31" id="m_email" name="m_email" maxlength="50" placeholder="이메일" value="${dto.m_email }">
					<br>
					

					<h2>주소</h2>
					<div>
						<input type="button" class="btn btn-warning"
							onclick="DaumPostcode()" value="주소 찾기"
							style="width: 130px; height: 50px; display: inline; margin-top: 5px; font-weight: bold" /><br>
                        <input type="hidden" id="postcode" name="zip1" placeholder="우편번호" class="n-input" style="width:100px; margin-top:5px; display:inline;" readonly/>
						<input type="text" id="m_addr1" name="m_addr1" placeholder="주소" class="n-input" style="margin-top: 5px;" readonly
								value="<%=request.getAttribute("addr1") %>" />
						<input type="text" id="m_addr2" name="m_addr2" placeholder="상세주소" class="n-input" style="margin-top: 5px;" 
								value="<%=request.getAttribute("addr2") %>"/>
					</div>

					<br><br>
					
					<div style="margin: auto; width: 20%;">
						<button type="button" class="n-btn btn-secondary" value="다음 페이지" id="nextpage"  style="width:200px;">다음페이지</button>
					</div>
				</div>
			</div>
		</div>
	</table>
</main> 