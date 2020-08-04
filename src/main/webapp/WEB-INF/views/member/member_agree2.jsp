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

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
    	
                if(data.userSelectedType === 'R'){
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
                        extraAddr = ' (' + extraAddr + ')';
                    }
                  
                
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("m_addr1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("m_addr2").focus();
            }
        }).open();
    }
</script>
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


a {
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	display: block;
	margin: 20px auto;
	max-width: 180px;
	text-decoration: none;
	border-radius: 4px;
	padding: 20px 30px;
}

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
.row{
	margin-right: auto;
	margin-left: auto;
}
</style>

<script>
	function setPic(event) {
		var reader = new FileReader();
		
		reader.onload = function(event) {
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result);
			document.querySelector("div#image_container").appendChild(img);
		};
		reader.readAsDataURL(event.target.files[0]);
	}
	

</script>


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
	    <h1 style="font-size:40px; font-weight:bold; text-align:center;">회&nbsp;원&nbsp;가&nbsp;입</h1>
	    <form action="../member/memberJoin2.do" enctype="multipart/form-data" method="post"id="myForm" name="form"  >
			<!-- Header -->
			
			<input type="hidden" name="m_id" value="<%=request.getAttribute("m_id") %>"/>
			<input type="hidden" name="m_pw" value="<%=request.getAttribute("m_pw") %>"/>
			<input type="hidden" name="m_name" value="<%=request.getAttribute("m_name") %>"/>
			<input type="hidden" name="m_birth" value="<%=request.getAttribute("m_birth") %>"/>
			<input type="hidden" name="m_phone" value="<%=request.getAttribute("m_phone") %>"/>
			<input type="hidden" name="m_email" value="<%=request.getAttribute("m_email") %>"/>
			
			<header class="member-header">
			    <div class="logo">
			
			    </div>
			</header>
			<!-- //Header -->

	        
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
		          	<td><input type="checkbox" name="m_position" id="CM" value="CM"/></td>
		          	<td><label for="CM">CM</label></td>
		            <td><input type="checkbox" name="m_position" id="CB" value="CB"/></td>
		            <td><label for="CB">CB</label></td>
		            <td><input type="checkbox" name="m_position" id="DM" value="DM"/></td>
		            <td><label for="DM">DM</label></td>
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
	        
			<h2>성별 체크</h2>
			<table class="table table-borderless">
				<tr>
					<td width="20px;"><input type="radio" name="m_sex" id="man" value="남자" ></td>
					<td><label for="man">남자</label></td>
					<td width="20px;"><input type="radio" name="m_sex" id="wowan" value="여자"></td>
					<td><label for="wowan">여자</label></td>
				</tr>
			</table>
	        
			<h2>주관적인 실력</h2>
			<table class="table table-borderless">
				<tr>
					<td width="20px;"><input type="radio" name="m_abil" id="best" value="최상" ></td>
					<td><label for="best">최상</label></td>

					<td width="20px;"><input type="radio" name="m_abil" id="tops" value="상" ></td>
					<td><label for="tops">상</label></td>
						
					<td width="20px;"><input type="radio" name="m_abil" id="mediumhigh" value="중상"></td>
					<td><label for="mediumhigh">중상</label></td>
				</tr>
				<tr>
					<td><input type="radio" name="m_abil" id="medium" value="중"></td>
					<td><label for="medium">중</label></td>
					<td><input type="radio" name="m_abil" id="mediumlow" value="중하"></td>
					<td><label for="mediumlow">중하</label></td>
					<td><input type="radio" name="m_abil" id="low" value="하"></td>
					<td><label for="low">하</label></td>
				</tr>
			</table>
	          
	        <h2>주로쓰는 발</h2>
	        <table class="table table-borderless">
	        	<tr>
	        		<td width="20px;"><input type="radio" name="m_foot" id="LF" value="왼박"></td>
	        		<td><label for="LF">왼발</label></td>
	        		<td width="20px;"><input type="radio" name="m_foot" id="RF" value="오른발"></td>
	        		<td><label for="RF">오른발</label></td>
					<td width="20px;"><input type="radio" name="m_foot" id="ALL" value="양발"></td>
					<td><label for="ALL">양발</label></td>
	        	</tr>
			</table>
			
			<div class="n-form-set" id="input-div">
                <h2>주소</h2>
                <div>                                     
                    <input type="hidden" id="postcode" name="zip1" placeholder="우편번호" class="n-input" style="width:130px; height:50px; margin-top:5px; display:inline;" readonly/>
                    <input type="button" class="btn btn-warning" onclick="DaumPostcode()" value="주소 찾기" style="width:130px; height:50px; display:inline; margin-top:5px; color: #424242; font-weight: bold" /><br>                       
                    <input type="text" id="m_addr1" name="m_addr" placeholder="주소"  class="n-input" style="margin-top: 5px; width:600px; height:50px; font-size:20px; " readonly/>
                    <input type="text" id="m_addr2" name="m_addr" placeholder="상세주소"  class="n-input" style="margin-top: 5px; width:600px; height:50px; font-size:20px;" /> 
                </div>
            </div>
            
	        <h2>프로필 등록하기</h2>
			<table>
				<tr>
					<td>
						<div id="image_container" style="width: 300px; height: 180px"></div>
					</td>
					<td>
						<input type="file" name="file"  accept="image/*" onchange="setPic(event)"/>
					</td>
				</tr>
			</table>
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

	        <div style="text-align:center">
	        	<button type="button" class="btn btn-outline-info" style="font-size:20px;" onclick="javascript:goBack();">이전페이지</button>  
		        <button class="btn btn-outline-success" type="submit" style="font-size:20px;">가입완료!!</button>
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
<script>
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
  
</script>

</body>  
</html> 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  