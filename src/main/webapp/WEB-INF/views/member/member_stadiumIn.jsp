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
<style>

h2 { font-size : 24px; color:#000066; line-height:30px;
	margin:52px auto 10px 0px;
	padding : 2px 10px 2px 0px;
	border-bottom : 3px solid #000066;
}

label {
    cursor: pointer; font-size : 18px;
}
.hoc{max-width:1100px;}

.txtBox31 { border-style: solid; border-width: 2px 2px 2px 8px; padding: 12px; word-break: break-all; }
.txtBox31 { border-color: DodgerBlue; width: 350px; }

input[type=text]{
	font-size:25px;
}

td{
	border:none;
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

#file { display:none; } 

.button {
	color: rgba(30, 22, 54, 0.6);
	box-shadow: rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset;
	height:30px;
	background-color: white;
}

.button:hover {
	color: rgba(255, 255, 255, 0.85);
	box-shadow: rgba(30, 22, 54, 0.7) 0 0px 0px 40px inset;
}

.button2 {
	color: rgba(30, 22, 54, 0.6);
	box-shadow: rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset;
	height:30px;
	background-color: white;
}

.button2:hover {
	color: rgba(255, 255, 255, 0.85);
	box-shadow: rgba(30, 22, 54, 0.7) 0 80px 0px 2px inset;
}
#mainav{
	margin-right:0px; max-width:100%;
}
input[type=password] {
	font-size:15px;
	font-family: "nanum";
	
	&::placeholder {
		font-family: "NanumSquare";
		 
	}
}
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
<div class="wrapper row3">
	<main class="hoc container clear">
		<div class="container">
			<h1 style="font-size: 40px; text-align: center;">구장 등록</h1>
			<form name="stadiumInFrm" action="<c:url value="/member/member_stadiumInsert.do" />" method="post">
				<header class="member-header">
				    <div class="logo">
				
				    </div>
				</header>
	
				<h2>사업자등록번호(아이디)</h2>
					<input type="text" class="txtBox31" id="s_id" name="s_id" placeholder="사업자등록번호" maxlength="20" >
	
				<h2>비밀번호</h2>
					<input type="password" class="txtBox31" id="s_pw" name="s_pw" maxlength="20"
						 placeholder="비밀번호(숫자,영문,특수문자 조합 최소8자)" style="width:350px;">
	
				
						
				<h2>비밀번호 확인</h2>
					<input type="password" class="txtBox31" 
						id="confirmPassword" name="confirmPassword" maxlength="20" placeholder="비밀번호 확인">
	
				<h2>구장 이름</h2>
					<input type="text" class="txtBox31" id="s_name" maxlength="20" name="s_name" placeholder="구장이름입력">
	
				
				<h2>주소</h2>
					<input class="form-control" type="text" id="postcode" name="zip1" placeholder="우편번호"maxlength="20"
						style="width: 200px; height: 50px; margin-top: 5px; display:inline;" readonly />
					<input type="button" class="btn btn-warning " onclick="DaumPostcode()" value="우편번호 찾기"
						style="width: 200px; height: 50px; display: inline; margin-top: 5px; color: #424242; font-weight: bold"  /><br>
					<input class="form-control" type="text" id="address" name="s_addr1" placeholder="주소" 
						style="width: 400px; height:50px; margin-top:10px;" maxlength="20" readonly/>
						
					<!-- 좌표 값을 받는 hidden폼 -->
					<input type="hidden" value="" id="latitude" name="latitude" />
					<input type="hidden" value="" id="longitude" name="longitude" />
						
					<input class="form-control"
						type="text" id="detailAddress" name="s_addr2" placeholder="상세주소"maxlength="20"
						style="width: 400px; height:50px; margin-top: 10px;"" />
					<input class="form-control"
						type="hidden" id="extraAddress" name="s_gu" placeholder="구"maxlength="20"
						style="width: 400px; margin-top: 5px;" />
	
	
				<h2>휴대전화</h2> <input class="txtBox31"maxlength="20"
					type="tel" id="s_phone" name="s_phone" style="width: 350px;"
					placeholder="휴대전화 입력(-없이)" maxlength="11">
	
				<h2>구장크기</h2> <input class="txtBox31"maxlength="20"
					type="tel" id="s_size" name="s_size" style="width: 350px;"
					placeholder="00x00으로 입력" maxlength="11">
	
				<h2>구장 대표 사진</h2> 
					<input type="file" class="txtBox31" id="s_pic" name="s_pic">
	
				<h2>오픈시간</h2> <input type="tel" class="txtBox31"id="s_starttime" name="s_starttime"style="width: 350px;"
					placeholder="00:00" maxlength="11">
					
				<h2>마감시간</h2> <input type="tel" class="txtBox31" id="s_endtime" name="s_endtime"style="width: 350px;"
					placeholder="00:00" maxlength="11">
	
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
			
				<h2>편의 시설</h2>
				<table class="table table-borderless">
					<tr>
						<td width="20px;"><input type="checkbox"
							name="s_cv" id="shower" value="샤워장" /></td>
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

				<h2>상세 내용</h2> 
				<textarea style=" width: 100%; height: 400px;" name="s_memo"></textarea>
	
				<h2>가격</h2> <input
					type="tel" class="txtBox31" id="s_price" name="s_price" 
					placeholder=",없이 숫자만 입력" maxlength="11" style="width:350px;">
				
				<br/> <br/>

				<h2>구장크기</h2> <input class="txtBox31"maxlength="20"
					type="tel" id="s_size" name="s_size" style="width: 400px;"
					placeholder="00x00으로 입력" maxlength="11">

				<h2>구장 대표 사진</h2> 
					<input type="file" class="txtBox31" id="s_pic" name="s_pic">

				<h2>오픈시간</h2> <input type="tel" class="txtBox31"id="s_starttime" name="s_starttime"style="width: 400px;"
					placeholder="00:00" maxlength="11">
					
				<h2>마감시간</h2> <input type="tel" class="txtBox31" id="s_endtime" name="s_endtime"style="width: 400px;"
					placeholder="00:00" maxlength="11">

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
					
				<h2>편의 시설</h2>
				<table class="table table-borderless">
					<tr>
						<td width="20px;"><input type="checkbox"
							name="s_cv" id="shower" value="샤워장" /></td>
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

				<h2>상세 내용</h2> 
				<textarea style=" width: 100%; height: 400px;" name="s_memo"></textarea>


				<h2>가격</h2> <input
					type="tel" class="txtBox31" id="s_price" name="s_price" "
					placeholder=",없이 숫자만 입력" maxlength="11">
				
				<br/> <br/>

				<div id="agreementDivArea" class="agreement">
					<div>
	                   <input type="checkbox" id="all" name="all" class="check-all" style="display:inline;">
	                   <label for="all" style="display:inline;">약관 전체동의</label>
	               	</div>
	               	<br />
	               	<div>
	                   <input type="checkbox"  id="checkbox1" name="agreeCheckbox" class="ab" style="display:inline;">
	                   <label for="checkbox1" style="display:inline;">개인정보 수집 이용동의(필수)</label>
	                   <button type="button"  onclick="privacyAgreeUsagePopBtnClickHandler()" style="display:inline;" class="button2">약관보기</button>
	               	</div>
					<br />
					<div>
					    <input type="checkbox" id="useTermsCheckbox" name="useTermsCheckbox" class="ab"  style="display:inline;">
						<label for="useTermsCheckbox" style="display:inline;" >축구장 이용약관(필수)</label>
						<button type="button"  onclick="serviceAgreementPopBtnClickHandler()" style="display:inline;" class="button">약관보기</button>
					</div>
				</div>
				<br />
				<div id="joinBtnDiv" class="member-btn" style="text-align:center">
					<button type="button" class="btn btn-outline-info" style="font-size:20px;" onclick="javascript:goBack();">이전페이지</button> 
					
					<!-- 가입완료 버튼 클릭시 주소 - 좌표변환 이루어짐 -->
					<button type="button" onclick="getCoords();" class="btn btn-outline-success" style="font-size:20px;">가입완료!!</button>
				</div>
			</form>
			</div>
		<div class="clear"></div>
	</main>
</div>
	<!-- footer -->
	
<%@ include file="./../include/footer.jsp"%>
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="./../resources/js/jquery.min.js"></script>
<script src="./../resources/js/jquery.backtotop.js"></script>


</body>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=36334fae12132b7c9a4b0c870101ef91&libraries=services"></script>
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
	
    function goBack() {
    	history.go(-1);
    }
    function privacyAgreeUsagePopBtnClickHandler() {
    	var popSizeOnMobile = '';
    	    if(false) {
    	        popSizeOnMobile = 'width=100%,height=100%,';
    	    }
    	    window.open('./../member/article.do', '_blank', "toolbar=yes,scrollbars=yes,resizable=yes,top=200,left=550,width=700,height=600");
    	}

    	function serviceAgreementPopBtnClickHandler() {
    	    var popSizeOnMobile = '';
    	    if(false) {
    	        popSizeOnMobile = 'width=100%,height=100%,';
    	    }
    	    window.open('./../member/article.do', '_blank', "toolbar=yes,scrollbars=yes,resizable=yes,top=200,left=550,width=700,height=600");
    	}

    	$( document ).ready(function() {
    	    $( '.check-all' ).click( function() {
    	      $( '.ab' ).prop( 'checked', this.checked );
    	    } );
    	  } );
    	
    	
    	
    	
//----------------카카오맵API를 이용한 주소-좌표변환 START-----------------------
    	
   	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	var frm = document.stadiumInFrm;
   	
   	function getCoords(){
   		// 주소로 좌표를 검색합니다
   		geocoder.addressSearch($('#address').val(), function(result, status) {
   			// 정상적으로 검색이 완료됐으면 
   	     	if (status === kakao.maps.services.Status.OK) {
   	        	//console.log("위도 lat : " + result[0].y);
   	        	//console.log("경도 lng : " + result[0].x);
   	        	$('#latitude').val(result[0].y);
   	        	$('#longitude').val(result[0].x);
   			}
   	     	else{ 
   	     		alert("인풋값 미달");
   	     		return false;
   	     	}
   	     	stadiumInFrm.submit();
   		});
   	}
    	
    	
//----------------카카오API END--------------------------------------------------
    	
    </script>  
</html> 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  