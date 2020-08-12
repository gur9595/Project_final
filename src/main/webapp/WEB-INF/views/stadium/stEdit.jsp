<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="../../assets/images/favicon.png">
<title>B-PRO STADIUM</title>
<!-- Custom CSS -->
<link rel="stylesheet" type="text/css"
	href="./../resources/admin_css/multicheck.css">
<link href="./../resources/admin_css/dataTables.bootstrap4.css"
	rel="stylesheet">
<link href="./../resources/admin_css/style.min.css" rel="stylesheet">
</head>

<style>

h2 { font-size : 24px; color:#000066; line-height:30px;
	margin:52px auto 10px 0px;
	padding : 2px 10px 2px 0px;
	border-bottom : 3px solid #000066;
}

label {
    cursor: pointer; font-size : 18px;
}

.txtBox31 { border-style: solid; border-width: 2px 2px 2px 8px; padding: 12px; word-break: break-all; }
.txtBox31 { border-color: DodgerBlue; width: 350px; }

input[type=text]{
	font-size:25px;
}

td{
	border:none;
}

.box select option {
  padding: 30px;
}
input[type=checkbox], input[type=radio]
{
	width : 20px; height : 20px; cursor: pointer;
}

#file { display:none; } 

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

.container{max-width:1100px;}
</style>
<body>
	<div class="preloader">
		<div class="lds-ripple">
			<div class="lds-pos"></div>
			<div class="lds-pos"></div>
		</div>
	</div>
	<div id="main-wrapper">

		<!-- 탑바 -->
		<%@ include file="./../include/stadiumTopBar.jsp"%>
		<!-- 사이드바 -->
		<%@ include file="./../include/stadiumSideBar.jsp"%>

		<!-- 페이지 내용 -->
		<div class="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<!-- column -->
					<div class="col-lg-12">
						<!-- Tabs -->
						<div class="card">
							<!-- Tab panes -->
							<div class="tab-content tabcontent-border">
								<div class="container"
									style="margin-left: auto; margin-right: auto;">
									<br /><br />
									<!-- <c:url value="/stadium/stEditAction.do" /> -->
									<h1 style="font-size: 40px; text-align: center;">경기장 수정</h1>
									<form name="stadiumFrm"	action="../stadium/stEditAction.do" method="post">
										<header class="member-header">
											<div class="logo"></div>
										</header>
										<input type="hidden" id="s_check" name="s_check" value="${viewRow.s_check }" />
										<h2>사업자등록번호(아이디)</h2>
										<input type="text" class="txtBox31" id="s_id" name="s_id"
											placeholder="사업자등록번호" maxlength="20" value="${viewRow.s_id }">

										<h2>비밀번호</h2>
										<input type="password" class="txtBox31" id="s_pw" name="s_pw"
											maxlength="20" placeholder="비밀번호(숫자,영문,특수문자 조합 최소8자)"
											style="width: 350px;" value="${viewRow.s_pw }">

										<h2>비밀번호 확인</h2>
										<input type="password" class="txtBox31" id="confirmPassword"
											name="confirmPassword" maxlength="20" placeholder="비밀번호 확인" value="${viewRow.s_pw}">

										<h2>구장 이름</h2>
										<input type="text" class="txtBox31" id="s_name" maxlength="20"
											name="s_name" placeholder="구장이름입력" value="${viewRow.s_name}">

										<h2>주소</h2>
											
										<!-- 좌표 값을 받는 hidden폼 -->
										<input type="hidden" value="${viewRow.s_lat }" id="latitude" name="latitude" />
										<input type="hidden" value="${viewRow.s_lng }" id="longitude" name="longitude" />

										<input class="form-control" type="text" id="detailAddress"
											name="s_addr" placeholder="상세주소" maxlength="20"
											style="width: 400px; height: 50px; margin-top: 10px;" value="${viewRow.s_addr}" />


										<h2>휴대전화</h2>
										<input class="txtBox31" maxlength="20" type="tel" id="s_phone"
											name="s_phone" style="width: 350px;"
											placeholder="휴대전화 입력(-없이)" maxlength="11" value="${viewRow.s_phone}">

										<h2>구장크기</h2>
										<input class="txtBox31" maxlength="20" type="tel" id="s_size"
											name="s_size" style="width: 350px;" placeholder="00x00으로 입력"
											maxlength="11" value="${viewRow.s_size}">

										<h2>오픈시간</h2>
										<input type="tel" class="txtBox31" id="s_starttime"
											name="s_starttime" style="width: 350px;" placeholder="00:00"
											maxlength="11" value="${viewRow.s_starttime}">

										<h2>마감시간</h2>
										<input type="tel" class="txtBox31" id="s_endtime"
											name="s_endtime" style="width: 350px;" placeholder="00:00"
											maxlength="11" value="${viewRow.s_endtime}">

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
												<td width="20px;"><input type="checkbox" name="s_cv"
													id="shower" value="샤워장" /></td>
												<td><label for="shower">샤워장</label></td>

												<td width="20px;"><input type="checkbox" name="s_cv"
													id="parking" value="주차장" /></td>
												<td><label for="parking">주차장</label></td>

												<td width="20px;"><input type="checkbox" name="s_cv"
													id="shose" value="신발대여" /></td>
												<td><label for="shose">신발대여</label></td>

												<td width="20px;"><input type="checkbox" name="s_cv"
													id="sportswear" value="운동복대여" /></td>
												<td><label for="sportswear">운동복대여</label></td>
											</tr>
										</table>

										<h2>상세 내용</h2>
										<textarea style="width: 100%; height: 400px;" name="s_memo">${viewRow.s_memo }</textarea>

										<h2>가격</h2>
										<input type="tel" class="txtBox31" id="s_price" name="s_price"
											placeholder=",없이 숫자만 입력" maxlength="11" style="width: 350px;" value="${viewRow.s_price}">

										<br /> <br />

										<br />
										<div id="joinBtnDiv" class="member-btn"
											style="text-align: center">

											<!-- 가입완료 버튼 클릭시 주소 - 좌표변환 이루어짐 -->
											<button type="submit" 
												class="btn btn-outline-success" style="font-size: 20px;">수정완료</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="./../resources/admin_js/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script src="./../resources/admin_js/popper.min.js"></script>
	<script src="./../resources/admin_js/bootstrap.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script src="./../resources/admin_js/perfect-scrollbar.jquery.min.js"></script>
	<script src="./../resources/admin_js/sparkline.js"></script>
	<!--Wave Effects -->
	<script src="./../resources/admin_js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="./../resources/admin_js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="./../resources/admin_js/custom.min.js"></script>
	<!-- this page js -->
	<script src="./../resources/admin_js/datatable-checkbox-init.js"></script>
	<script src="./../resources/admin_js/jquery.multicheck.js"></script>
	<script src="./../resources/admin_js/datatables.min.js"></script>
	<script>
        /****************************************
         *       Basic Table                   *
         ****************************************/
        $('#zero_config').DataTable();
    </script>	
</body>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=36334fae12132b7c9a4b0c870101ef91&libraries=services"></script>
<script>

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