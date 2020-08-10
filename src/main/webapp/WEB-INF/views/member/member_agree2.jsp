<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>B-PRO</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="./../resources/css/layout.css" rel="stylesheet" type="text/css" media="all">
<link href="./../resources/css/join2.css" rel="stylesheet" type="text/css" media="all">


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
<div class="wrapper row3" >
	<main class="hoc clear">
	    <div class="container" style="margin-left:auto; margin-right:auto;">
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

          	<input type="checkbox" name="m_position" id="LW" value="LW" style="display:inline;"/>
          	<label for="LW" style= "padding-right:200px;">LW</label>
            <input type="checkbox" name="m_position" id="ST" value="ST" style="display:inline;"/>
            <label for="ST" style= "padding-right:200px;">ST</label>
            <input type="checkbox" name="m_position" id="RW" value="RW" style="display:inline;"/>
            <label for="RW">RW</label>
			<br /><br />
          	<input type="checkbox" name="m_position" id="LM" value="LM" style="display:inline;"/>
          	<label for="LM" style="padding-right:200px;">LM</label>
            <input type="checkbox" name="m_position" id="AM" value="AM" style="display:inline;"/>
            <label for="AM" style=padding-right:195px;">AM</label>
            <input type="checkbox" name="m_position" id="RM" value="RM" style="display:inline;"/>
            <label for="RM">RM</label>
			<br /><br />
          	<input type="checkbox" name="m_position" id="CM" value="CM" style="display:inline;"/>
          	<label for="CM" style="padding-right:200px;">CM</label>
            <input type="checkbox" name="m_position" id="CB" value="CB" style="display:inline;"/>
            <label for="CB" style="padding-right:198px;">CB</label>
            <input type="checkbox" name="m_position" id="DM" value="DM" style="display:inline;"/>
            <label for="DM">DM</label>
			<br /><br />
          	<input type="checkbox" name="m_position" id="LB" value="LB" style="display:inline;"/>
          	<label for="LB" style="padding-right:205px;">LB</label>
            <input type="checkbox" name="m_position" id="GK" value="GK" style="display:inline;"/>
            <label for="GK" style="padding-right:200px;">GK</label>
            <input type="checkbox" name="m_position" id="RB" value="RB" style="display:inline;"/>
            <label for="RB">RB</label>

	        
			<h2>성별 체크</h2>
			<input type="radio" name="m_sex" id="man" value="남자" style="display:inline;">
			<label for="man" style="padding-right:220px;">남자</label>
			<input type="radio" name="m_sex" id="wowan" value="여자" style="display:inline;">
			<label for="wowan">여자</label>

			
			<h2>주관적인 실력</h2>

			<input type="radio" name="m_abil" id="best" value="최상" style="display:inline;">
			<label for="best" style="padding-right:200px;">최상</label>

			<input type="radio" name="m_abil" id="tops" value="상" style="display:inline;">
			<label for="tops" style="padding-right:200px;">상</label>
				
			<input type="radio" name="m_abil" id="mediumhigh" value="중상" style="display:inline;">
			<label for="mediumhigh">중상</label>
			<br /><br /> 
			<input type="radio" name="m_abil" id="medium" value="중" style="display:inline;">
			<label for="medium" style="padding-right:215px;">중</label>
			
			<input type="radio" name="m_abil" id="mediumlow" value="중하" style="display:inline;">
			<label for="mediumlow" style="padding-right:186px;">중하</label>
			
			<input type="radio" name="m_abil" id="low" value="하" style="display:inline;">
			<label for="low">하</label>

	          
	        <h2>주로쓰는 발</h2>

       		<input type="radio" name="m_foot" id="LF" value="왼발" style="display:inline;">
       		<label for="LF" style="padding-right:200px;">왼발</label>
       		<input type="radio" name="m_foot" id="RF" value="오른발" style="display:inline;">
       		<label for="RF" style="padding-right:170px;">오른발</label>
			<input type="radio" name="m_foot" id="ALL" value="양발" style="display:inline;">
			<label for="ALL">양발</label>

			
			<div class="n-form-set" id="input-div">
                <h2>주소</h2>
                <div>                                     
                    <input type="hidden" id="postcode" name="zip1" placeholder="우편번호" class="n-input" style="width:130px; height:50px; margin-top:5px; display:inline;" readonly/>
                    <button type="button" onclick="DaumPostcode()" style="height:50px; display:inline; margin-top:5px; font-weight: bold" >주소찾기</button><br>                       
                    <input type="text" id="m_addr1" name="m_addr" placeholder="주소"  class="n-input" style="margin-top: 5px; width:600px; height:50px; font-size:20px; " readonly/>
                    <input type="text" id="m_addr2" name="m_addr" placeholder="상세주소"  class="n-input" style="margin-top: 5px; width:600px; height:50px; font-size:20px;" /> 
                </div>
            </div>
            
	        <h2>프로필 등록하기</h2>
			<table style="text-align: center; vertical-align: middle;">
				<tr>
					<th colspan="2">프로필을 등록할 파일</th>
				</tr>
				<tr>
					<td width="30%" style="border:1px solid black"><input type="file" name="file" accept="image/*" onchange="setPic(event)" style="margin-left: 10%;" /></td>
					<td width="35%">
						<div id="image_container" style="width: 250px; height: 300px;" align="center"></div>
					</td>
				</tr>
			</table>
            <div id="agreementDivArea" class="agreement">
				<div>
                   <input type="checkbox" id="all" name="all" class="check-all" style="display:inline;">
                   <label for="all">약관 전체동의</label>
               	</div>
               	<br />
               	<div>
                   <input type="checkbox"  id="checkbox1" name="agreeCheckbox" class="ab" style="display:inline;">
                   <label for="checkbox1">개인정보 수집 이용동의(필수)</label>
                   <input type="button" class="button_base b01_simple_rollover" onclick="privacyAgreeUsagePopBtnClickHandler()" style="display:inline;" value="약관보기">
               	</div>
				<br />
				<div>
				    <input type="checkbox" id="useTermsCheckbox" name="useTermsCheckbox" class="ab"  style="display:inline;">
					<label for="useTermsCheckbox">축구장 이용약관(필수)</label>
					<input type="button" class="button_base b01_simple_rollover" onclick="serviceAgreementPopBtnClickHandler()" style="display:inline;" value="약관보기">
				</div>
			</div>
			<br/><br/>
	        <div style="text-align:center">
	        	<button type="button"  style="font-size:20px; display:inline;" onclick="javascript:goBack();">이전페이지</button>&ensp;&ensp;
		        <button type="submit" style="font-size:20px; display:inline;">가입완료!!</button>
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

    window.open('./../member/article.do', '_blank', "toolbar=yes,scrollbars=yes,resizable=yes,top=200,left=550,width=700,height=600");
}

function serviceAgreementPopBtnClickHandler() {

    window.open('./../member/article.do', '_blank', "toolbar=yes,scrollbars=yes,resizable=yes,top=200,left=550,width=700,height=600");
}

$( document ).ready(function() {
    $( '.check-all' ).click( function() {
      $( '.ab' ).prop( 'checked', this.checked );
    } );
});
  
  
function setPic(event) {
	var reader = new FileReader();
	
	reader.onload = function(event) {
		if(document.getElementById('newImg')){
			var el = document.getElementById('newImg');
			el.remove();
		}
		
		var img = document.createElement("img");
		img.style.align = "center";
		img.setAttribute("width", 250);
		img.setAttribute("height", 250);
		img.setAttribute("id", "newImg");
		img.setAttribute("src", event.target.result);
		document.querySelector("#image_container").appendChild(img);
	};
	reader.readAsDataURL(event.target.files[0]);
}
</script>

</body>  
</html> 
  