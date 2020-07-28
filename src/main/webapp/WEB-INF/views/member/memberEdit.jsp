<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<main class="hoc container clear" id="main" > 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<script src="./../resources/js/mypage_main.js"></script>

	<table border=1>
		<div class="musinsa-wrapper wrapper-member">

			<!-- Member -->
			<div class="n-member-area form-area" style="background: #FFFFFF;">

				<!-- Header -->
				<header class="member-header">
					<div class="logo"></div>
					<h2 style="font-size: 40px; text-align: center;">회원정보 수정</h2>
				</header>

				<div class="join-form">
					<div class="n-form-set">

						<label for="m_id" class="n-form-label">아이디<span
							class="essential">필수 입력</span></label><br /> <input type="text"
							class="n-input" id="m_id" name="m_id" value="${dto.m_id }"
							style="width: 400px;">

						<p class="n-validation" id="hLayerid"></p>
					</div>
					<br>
					<div class="n-form-set">
						<label for="password">비밀번호 <span class="essential"></span></label>
						<div class="n-form-icon">
							<input type="password" class="n-input input" id="m_pw"
								name="m_pw" minlength="8" autocomplete="new-password"
								placeholder="비밀번호(숫자,영문,특수문자 조합 최소8자)">
							<p class="n-validation" id="passwordValidMessage"></p>

						</div>
						<br>
						<div class="n-form-icon">
							<input type="password" class="n-input input"
								id="confirmPassword" name="confirmPassword"
								autocomplete="new-password" placeholder="비밀번호 확인">
							<p class="n-validation" id="passwordConfirmValidMessage"></p>

						</div>
					</div>
					<br>
					<div class="n-form-set">

						<label for="name">이름 <span class="essential"></span></label> <input
							type="text" class="n-input input" id="m_name" name="m_name"
							placeholder="이름입력" minlength="2" maxlength="8"
							value="${dto.m_name }">
						<p class="n-validation" id="hLayername"></p>
					</div>
					<br>
					<div class="n-form-set">

						<label for="birth">생년월일 <span class="essential"></span></label>
						<input type="text" class="n-input input" id="m_birth"
							name="m_birth" maxlength="8" placeholder="예)19970121"
							value="${dto.m_birth }">
						<p class="n-validation" id="hLayerjumin"></p>
					</div>
					<br>
					<div class="n-form-set" id="input-div">

						<label for="tel">휴대전화 <span class="essential"></span></label> <input
							type="tel" class="n-input" id="m_phone" name="m_phone"
							placeholder="휴대전화 입력(-없이)" minlength="10" maxlength="11"
							value="${dto.m_phone }">
						<p class="n-validation" id="searchValidPhone"
							style="display: none">번호 형식이 올바르지 않습니다</p>
					</div>
					<br>
					<div class="n-form-set">
						<label for="email">이메일 <span class="essential"></span></label>
						<div class="n-form-layer" id="emailFromLayer">
							<input type="email" class="n-input" id="m_email" name="m_email"
								maxlength="50" placeholder="이메일" value="${dto.m_email }">
							<p class="n-validation" id="hLayeremail"></p>
							<ul id="emailDomainList" class="layer">
								<li><button type="button">
										<span></span><em>naver.com</em>
									</button></li>
								<li><button type="button">
										<span></span><em>gmail.com</em>
									</button></li>
								<li><button type="button">
										<span></span><em>hanmail.net</em>
									</button></li>
								<li><button type="button">
										<span></span><em>nate.com</em>
									</button></li>
								<li><button type="button">
										<span></span><em>daum.net</em>
									</button></li>
							</ul>
						</div>
					</div>
					<br>
					<div class="n-form-set" id="input-div">
						<label for="address">주소<span class="essential"></span></label>
						<div>
						
							<input type="button" class="btn btn-warning "
								onclick="DaumPostcode()" value="주소 찾기"
								style="width: 130px; height: 50px; display: inline; margin-top: 5px; color: #424242; font-weight: bold" /><br>
                            <input type="hidden" id="postcode" name="zip1" placeholder="우편번호" class="n-input" style="width:100px; margin-top:5px; display:inline;" readonly/>
							<input type="text" id="m_addr1" name="m_addr1" placeholder="주소"
								class="n-input" style="margin-top: 5px;" readonly
									value="<%=request.getAttribute("addr1") %>" /> <input type="text" id="m_addr2"
								name="m_addr2" placeholder="상세주소" class="n-input" style="margin-top: 5px;" 
									value="<%=request.getAttribute("addr2") %>"/>
							<p class="n-validation" id="searchValidPhone"
								style="display: none">주소형식이 올바르지 않습니다.</p>

						</div>
					</div>
					<br><br>
					<div id="joinBtnDiv" class="member-btn">
						<input type="button" class="n-btn btn-primary" value="다음" id="nextpage" />
					</div>
				</div>
			</div>
		</div>
	</table>
	
	<!-- / main body -->
	<div class="clear"></div>

<script>

$('#nextpage').click(function() {
	console.log("ㅅㅂ");
	alert("tq");

	var m_id = $("#m_id").val();
	var m_pw = $("#m_pw").val();
	var m_name = $("m_name").val();
	var m_birth = $("#m_birth").val();
	var m_phone = $("#m_phone").val();
	var m_email = $("#m_email").val();
	var m_addr1 = $("#m_addr1").val();
	var m_addr2 = $("#m_addr2").val();
	
	$("#contents").load("memberEdit2.do?m_id=" + m_id + "&m_pw="+ m_pw + "&m_name="+ m_name + "&m_birth="+ m_birth + 
			"&m_phone="+ m_phone + "&m_email="+ m_email + "&m_addr1="+ m_addr1 + "&m_addr2=" + m_addr2 + " #main");
 
    
});

</script>
</main> 