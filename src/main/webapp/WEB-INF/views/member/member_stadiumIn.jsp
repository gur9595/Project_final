<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>B-PRO</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
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
		<table border=1>
			<div>
				<h1 class="n-hidden">Be-Pro</h1>

				<!-- Member -->
				<div style="background: #FFFFFF;">

					<form
						action="<c:url value="/member/member_stadiumInsert.do" />" method="post">
						<!-- Header -->
						<header>
							<div class="logo"></div>
							<h2 style="font-size: 40px; text-align: center;">구장 등록</h2>
						</header>

						<div class="join-form">

							<div class="n-form-set">

								<h2>사업자등록번호(아이디)</h2>
								 <input class="form-control" type="text"
									id="s_id" name="s_id"
									placeholder="사업자등록번호" maxlength="20"
									style="width: 400px;">
							</div>

							<div class="n-form-set">
								<h2>비밀번호</h2>
								<div class="n-form-icon">
									<input class="form-control" type="password"id="s_pw"maxlength="20"
										name="s_pw" autocomplete="new-password" style="width: 400px;"
										placeholder="비밀번호(숫자,영문,특수문자 조합 최소8자)">

								</div>
								<div class="n-form-icon">
									<input class="form-control" type="password" style="width: 400px;"
										id="confirmPassword" name="confirmPassword" maxlength="20"
										autocomplete="new-password" placeholder="비밀번호 확인">

								</div>
							</div>

							<div class="n-form-set">
							
								<h2>구장 이름</h2>
								<input class="form-control" type="text"id="s_name"maxlength="20"
									name="s_name" placeholder="구장이름입력" style="width: 400px;">
								
								
							</div>

							

							<div class="n-form-set" id="input-div">
								<h2>주소</h2>
								<div>
									<input class="form-control" type="text" id="postcode" name="zip1" placeholder="우편번호"maxlength="20"
										style="width: 400px;" margin-top: 5px; display: inline;"
										readonly /> <input type="button" class="btn btn-warning "
										onclick="DaumPostcode()" value="우편번호 찾기"
										style="width: 400px; height: 50px; display: inline; margin-top: 5px; color: #424242; font-weight: bold" /><br>
									<input class="form-control" type="text" id="address" name="s_addr1" placeholder="주소"
										style="width: 400px;" maxlength="20"/> <input class="form-control"
										type="text" id="detailAddress" name="s_addr2" placeholder="상세주소"maxlength="20"
										style="width: 400px;" /> <input class="form-control"
										type="text" id="extraAddress" name="s_gu" placeholder="구"maxlength="20"
										style="width: 400px; margin-top: 5px;" />
									<p class="n-validation" id="searchValidPhone"
										style="display: none">주소형식이 올바르지 않습니다.</p>
								</div>
							</div>

							<div class="n-form-set" id="input-div">

								<h2>휴대전화</h2> <input class="form-control"maxlength="20"
									type="tel" id="s_phone" name="s_phone" style="width: 400px;"
									placeholder="휴대전화 입력(-없이)" maxlength="11">
							</div>

							<div class="n-form-set" id="input-div">

								<h2>구장크기</h2> <input class="form-control"maxlength="20"
									type="tel" id="s_size" name="s_size" style="width: 400px;"
									placeholder="00x00으로 입력" maxlength="11">
							</div>

							
							
							<div class="n-form-set" id="input-div">

								<h2>구장 대표 사진</h2> 
								<input type="file" class="form-control" id="s_pic" name="s_pic">
							</div>

							
							
							<div class="n-form-set" id="input-div">

								<h2>오픈시간</h2> <input
									type="tel" class="form-control"id="s_starttime" name="s_starttime"style="width: 400px;"
									placeholder="00:00" maxlength="11">
									
								<h2>마감시간</h2> <input
									type="tel" class="form-control" id="s_endtime" name="s_endtime"style="width: 400px;"
									placeholder="00:00" maxlength="11">
								
							</div>
							
							
				
							<div class="n-form-set">
							<h2>구장 종류</h2>
								<table class="table table-borderless">
									<tr>
										<td width="20px;"><input type="radio" name="s_type"
											id="sc" value="축구"></td>
										<td><label for="sc">축구장</label></td>
										<td width="20px;"><input type="radio" name="s_type"
											id="ft" value="풋살"></td>
										<td><label for="ft">풋살장</label></td>
									</tr>
								</table>
							</div>
							
							<div class="n-form-set" id="input-div">
								<h2>편의 시설</h2>
								<table class="table table-borderless">
									<tr>
										<td width="20px;"><input type="checkbox"
											name="s_cv" id="shower " value="샤워장" /></td>
										<td><label for="shower">샤워장</label></td>
										
										<td width="20px;"><input type="checkbox"
											name="s_cv" id="parking" value="주차장" /></td>
										<td><label for="parking">주차장</label></td>
										
										<td width="20px;"><input type="checkbox"
											name="s_cv" id="shose" value="신발대여" /></td>
										<td><label for="shose">신발대여</label></td>
										
										<td width="20px;"><input type="checkbox"
											name="s_cv" id="sportswear" value="운동복대여" /></td>
										<td><label for="sportswear">운동복대여</label></td>
									</tr>
								</table>
							</div>
							
							<div class="n-form-set" id="input-div">

								<h2>상세 내용</h2> 
								<textarea style=" width: 100%; height: 400px;" name="s_memo"></textarea>

							</div>
							
							<div class="n-form-set" id="input-div">

								<h2>가격</h2> <input
									type="tel" class="form-control" id="s_price" name="s_price" style="width: 400px;"
									placeholder=",없이 숫자만 입력" maxlength="11">
							</div>

							<div id="agreementDivArea" class="agreement">
							<h2>이용 약관</h2>
								<div>
								<table>
									<tr>
										<td><input type="checkbox" class="n-check" id="checkAll"/></td>
										<td><label for="checkAll">약관 전체동의</label></td>
									
										<td><input type="checkbox" class="n-check" id="agreeCheckbox" name="agreeCheckbox"/></td>
										<td><label for="agreeCheckbox">개인정보 수집 이용동의(필수)</label>
											<button type="button" class="link" onclick="privacyAgreeUsagePopBtnClickHandler()">약관보기</button>
										</td>
									
										<td><input type="checkbox" class="n-check agree-item required-agree-item" id="useTermsCheckbox" name="useTermsCheckbox"/></td>
										<td><label for="useTermsCheckbox">축구장 이용약관(필수)</label>
											<button type="button" class="link" onclick="serviceAgreementPopBtnClickHandler()">약관보기</button>
										</td>
									</tr>
								
								</table>

								</div>
							</div>
						</div>

						<div id="joinBtnDiv" class="member-btn">
							<input type="submit" class="n-btn btn-primary" onsubmit=""
								value="등록" />
						</div>
					</form>

				</div>
			</div>
		</table>
		<!-- / main body -->
		<div class="clear"></div>
	</main>
	<!-- footer -->
	
<%@ include file="./../include/footer.jsp"%>
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="./../resources/js/jquery.min.js"></script>
<script src="./../resources/js/jquery.backtotop.js"></script>


</body>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function DaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우
                    addr = data.jibunAddress;
                }
    	
                /* if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = extraAddr;
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("extraAddress").value = '';
                } */
                
                var gu = addr.split(" ");
               
                document.getElementById("extraAddress").value = gu[1]; 
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddress").focus();
            }
        }).open();
    }

    </script>  
</html> 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  