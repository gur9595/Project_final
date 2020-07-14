<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>B-PRO</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="./../resources/css/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="./../resources/css/join.css">
<link rel="shortcut icon" href="https://static.msscdn.net/favicon.ico?20200701180800" type="image/x-icon"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	   
	   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	   
	   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	         

        
        <!-- Google Tag Manager -->
        <script>
            var dataLayer = dataLayer || [];
            window.addEventListener("load", function() {
                var memberGA = null;
                if (memberGA != null && memberGA.dimension1 != "0") {
                    dataLayer.push(memberGA);
                }

                (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
                })(window,document,'script','dataLayer','GTM-TXDSFSF');
            }, false);
        </script>
        <!-- End Google Tag Manager -->

    <link rel="stylesheet" type="text/css" href="https://static.msscdn.net/ui/musinsa/resources/common/css/icon.min.css?20200701180800" />
    <link rel="stylesheet" href="https://static.msscdn.net/ui/musinsa/resources/mw/css/guide.min.css?20200701180800">
    <link rel="stylesheet" href="https://static.msscdn.net/ui/musinsa/resources/mw/css/layout.min.css?20200701180800">


    <script src="https://static.msscdn.net/static/member/js/jquery-3.4.1.min.js?20200701180800" type="text/javascript"></script>
    <script src="https://static.msscdn.net/skin/m_musinsa/js/appinterface.js?20200701180800" type="text/javascript"></script>
    <script src="https://static.msscdn.net/static/member/js/appinterface-member.js?20200701180800" type="text/javascript"></script>
    <script src="https://static.msscdn.net/static/member/js/constant.js?20200701180800" type="text/javascript"></script>
    <script src="https://static.msscdn.net/static/member/js/ui/config.js?20200701180800" type="text/javascript"></script>
    <script src="https://static.msscdn.net/static/member/js/ui.js?20200701180800" type="text/javascript"></script>
    <script type="text/javascript" src="https://static.msscdn.net/static/member/js/backforward.js?20200701180800"></script>
    <script src="https://static.msscdn.net/static/member/js/ajax.js?20200701180800" type="text/javascript"></script>

</head>
<body id="top">
<!--top-->
<%@ include file="./../include/top.jsp"%>
<!--각 페이지 이미지-->
<div class="bgded overlay" style="background-image:url('../images/demo/backgrounds/01.png');">
  <div id="breadcrumb" class="hoc clear"> 
    <!--이미지 위에 글쓰는곳-->
  </div>
</div>
  <main class="hoc container clear"> 
	<table border=1>  
    <div class="musinsa-wrapper wrapper-member">
        <h1 class="n-hidden">Be-Pro</h1>

        <!-- Member -->
        <div class="n-member-area form-area" style="background:#FFFFFF;">

            <form class="formBox" name="joinForm" id="joinForm" action="/member/v2/join/complete" method="post" novalidate>
                <input type="hidden" name="checkId" value="0">
                <input type="hidden" name="checkPassword" value="0">
                <input type="hidden" name="checkConfirmPassword" value="0">
                <input type="hidden" name="checkEmail" value="0">
                <input type="hidden" name="checkRecommendMemberId" value="0">
                <input type="hidden" name="checkPhoneNumber" value="0">
                <input type="hidden" name="joinToken" value="608ac0790e8a1d61fea83edb615acd424c2d69aa"/>
                <input type="hidden" name="joinPath" value=""/>
                <input type="hidden" name="eventToken" value=""/>
                <input type="hidden" id="partnerCode" name="partnerCode" value=""/>

                <!-- Header -->
                <header class="member-header">
                    <div class="logo">
               
                    </div>
                    <h2 class="title-join" style="font-size:40px;">회&nbsp;원&nbsp;가&nbsp;입</h2>
                    <button type="button" class="btn-back" onclick="location.href='${pageContext.request.contextPath }'"><i class="ic-30-line-arrow-left">이전 페이지로 이동</i></button>
                </header>
                <!-- //Header -->

                <!-- Join Form -->
                <div class="join-form">
                    <div class="n-form-set">
                        <label for="memberId" class="n-form-label">아이디 <span class="essential">필수 입력</span></label><br/>
                        <input type="text" class="n-input input" id="memberId" name="memberId" placeholder="아이디 입력(8자이상)" minlength="8" maxlength="20" style="width:400px;">
                        <p class="n-validation" id="hLayerid"></p>
                    </div>
                    <div class="n-form-set">
                        <label for="password" class="n-form-label">비밀번호 <span class="essential">필수 입력</span></label>
                        <div class="n-form-icon">
                            <input type="password" class="n-input input" id="password" name="password" minlength="8" autocomplete="new-password"
                                   placeholder="비밀번호(숫자,영문,특수문자 조합 최소8자)">
                            <p class="n-validation" id="passwordValidMessage"></p>
                            <button type="button" class="btn" onclick="togglePassword('password', this);" >
                                <i class="ic-30-solid-show ic-gray5">비밀번호 보기</i>
                            </button>
                        </div>
                        <div class="n-form-icon">
                            <input type="password" class="n-input input" id="confirmPassword" name="confirmPassword" autocomplete="new-password"
                                   minlength="8" placeholder="비밀번호 확인">
                            <p class="n-validation" id="passwordConfirmValidMessage"></p>
                            <button type="button" class="btn" onclick="togglePassword('confirmPassword', this);">
                                <i class="ic-30-solid-show ic-gray5">비밀번호 보기</i>
                            </button>
                        </div>
                    </div>
                    <div class="n-form-set">
                        <label for="name" class="n-form-label">이름 <span class="essential">필수 입력</span></label>
                        <input type="text" class="n-input input" id="name" name="name" placeholder="이름입력" minlength="2" maxlength="4">
                        <p class="n-validation" id="hLayername"></p>
                    </div>
                    
                    <div class="n-form-set">
                        <label for="birth" class="n-form-label">생년월일 <span class="essential">필수 입력</span></label>
                        <input type="text" class="n-input input" id="jumin1" name="jumin1" maxlength="8" placeholder="예)19970121">
                        <p class="n-validation" id="hLayerjumin"></p>
                    </div>
                    
                    <div class="n-form-set" id="input-div">
                    	<label for="tel" class="n-form-label">휴대전화 <span class="essential">필수 입력</span></label>
		                <input type="tel" class="n-input" id="phoneNumber" name="phoneNumber" placeholder="휴대전화 입력(-없이)" minlength="10" maxlength="11">
		                <p class="n-validation" id="searchValidPhone" style="display: none">번호 형식이 올바르지 않습니다</p>
            		</div>
                    
                    <div class="n-form-set">
                        <label for="email" class="n-form-label">이메일 <span class="essential">필수 입력</span></label>
                        <div class="n-form-layer" id = "emailFromLayer">
                            <input type="email" class="n-input input" id="email" name="email" maxlength="50" placeholder="이메일" autocomplete="off">
                            <p class="n-validation" id="hLayeremail"></p>
                            <ul id="emailDomainList" class="layer">
                                <li><button type="button"><span></span><em>naver.com</em></button></li>
                                <li><button type="button"><span></span><em>gmail.com</em></button></li>
                                <li><button type="button"><span></span><em>hanmail.net</em></button></li>
                                <li><button type="button"><span></span><em>nate.com</em></button></li>
                                <li><button type="button"><span></span><em>daum.net</em></button></li>
                            </ul>
                        </div> 
                    </div>
                    
                    <div class="n-form-set" id="input-div">
                        <label for="address" class="n-form-label">주소<span class="essential">필수 입력</span></label>
                        <div>                                     
                            <input type="text" id="postcode" name="zip1" placeholder="우편번호" class="n-input" style="width:100px; margin-top:5px;" readonly />
                            <input type="button" class="btn btn-warning " onclick="DaumPostcode()" value="우편번호 찾기" style="width:130px; height:50px; margin-top:5px; color: #424242; font-weight: bold" /><br>                       
                            <input type="text" id="address" name="addr1" placeholder="주소"  class="n-input" style="margin-top: 5px;" />
                            <input type="text" id="detailAddress" name="addr2" placeholder="상세주소"  class="n-input" style="margin-top: 5px;" />
                            <input type="text" id="extraAddress" name="addr3" placeholder="참고항목"  class="n-input" style="margin-top: 5px;" />
                                <p class="n-validation" id="searchValidPhone" style="display: none">주소형식이 올바르지 않습니다.</p>
                           
                        </div>
                    </div>
            		
            		
                    <div id="agreementDivArea" class="agreement">
                        <div>
                            <input type="checkbox" class="n-check" id="checkAll">
                            <label for="checkAll" class="all">약관 전체동의</label>
                        </div>
                        <div>
                            <input type="checkbox" class="n-check" id="agreeCheckbox" name="agreeCheckbox">
                            <label for="agreeCheckbox">개인정보 수집 이용동의(필수)</label>
                            <button type="button" class="link" onclick="privacyAgreeUsagePopBtnClickHandler()">약관보기</button>
                        </div>

                        <div>
                            <input type="checkbox" class="n-check agree-item required-agree-item" id="useTermsCheckbox" name="useTermsCheckbox">
                            <label for="useTermsCheckbox">축구장 이용약관(필수)</label>
                            <button type="button" class="link" onclick="serviceAgreementPopBtnClickHandler()">약관보기</button>
                        </div>
                    </div>
                </div>

                <div id="joinBtnDiv" class="member-btn">
                    <button type="submit" id="joinBtn" class="n-btn btn-primary" onclick="location.href= 'memberAgree2.do'">다음</button>
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
<script src="./../resources/js/jquery.mobilemenu.js"></script>
</body>
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
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("extraAddress").value = '';
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddress").focus();
            }
        }).open();
    }
    </script>

    <script type="text/javascript">
        var isPassMemberId = false;
        var isPassPassword = false;
        
        var isPassName = false;
        var isPassEmail = false;
        var isPassAgree = false;

        var joinBtnActive = function (isActive) {
        	 $("#joinBtn").attr("class", "n-btn btn-primary" + (!isActive ? " disabled" : ""));
        };

        function validateLengthMemberIdWhenKeyup() {
            $('#memberId').val($('#memberId').val().trim());
            var $memberId = $('#memberId');
            if ($memberId.val().length > 20) {
                var limitMemberId = $memberId.val().substring(0, 20);
                $memberId.val(limitMemberId);
            }
        }

        function validateMemberId() {
            if (!validationMemberIdHandler()) {
                joinBtnActive(false);
                isPassMemberId = false;
                return false;
            }

            isPassMemberId = true;
            if (isPassJoin()) {
                joinBtnActive(true);
            }
           


            function validationMemberIdHandler() {
                var $memberId = $('#memberId');

                $("input[name='checkId']").val('0');

                
                if ($memberId.val().length === 0) {
                    $("#hLayerid")
                        .removeClass('validation-passed')
                        .html('아이디는 필수정보 입니다.');
                    $memberId.attr('class', 'n-input input-danger');
                    return false;
                }
                if ($memberId.val().length < 8) {
                    $("#hLayerid")
                        .removeClass('validation-passed')
                        .html('아이디는 8자 이상이어야 합니다.');
                    $memberId.attr('class', 'n-input input-danger');
                    return false;
                } else {
                    $("#hLayerid").html('');
                    $memberId.attr('class', 'n-input input');
                }

                if (!checkIdValue($memberId.val())) {
                    $("#hLayerid")
                        .removeClass('validation-passed')
                        .html('아이디는 영문소문자, 숫자, 특수기호(_)만 사용 가능합니다.');
                    $memberId.attr('class', 'n-input input-danger');
                    return false;
                }

                var isResult = false;
                mss.my.ajax.call(
                    {
                        async: false,
                        type: 'POST',
                        url: '/api/member/v2/join/memberId/exist',
                        data : {
                            'memberId' : $memberId.val()
                        },
                        success: function (response) {
                            var success = response.success;

                            if (success) {
                                $("input[name='checkId']").val('1');
                                $memberId.attr('class', 'n-input input');
                                $('#hLayerid').attr("class", "n-validation validation-passed");
                                $("#hLayerid").html(response.message);
                                isResult = true;
                                return true;
                            } else {
                                $("input[name='checkId']").val('0');
                                $("#hLayerid")
                                    .removeClass('validation-passed')
                                    .html(response.message);
                                $memberId.attr('class', 'n-input input-danger');
                                return false;
                            }
                        }
                    }, false
                );
                return isResult;
            }
        }

        function validatePassword() {
            var password = $("#password").val().trim();
            $("input[name='password']").val('');
            $("input[name='password']").val(password);

            $("input[name='checkPassword']").val('0');

            if (password === '') {
                $('#passwordValidMessage').html('비밀번호는 필수정보입니다.');
                $("input[name='password']").attr('class', 'n-input input-danger');
                $("input[name='confirmPassword']").attr('class', 'n-input input');
                $("#passwordConfirmValidMessage").html('');
                isPassPassword = false;
                joinBtnActive(false);
                return;
            }

            if (!passwordValidCheck(password)) {
                isPassPassword = false;
                joinBtnActive(false);
                return;
            }

            var isCheckValidPassword = callCheckValidPassword($("#password"));
            if (!isCheckValidPassword) {
                isPassPassword = false;
                joinBtnActive(false);
                return;
            }

            var confirmPassword = $('#confirmPassword').val();

            if (confirmPassword !== '' && password.length > 7) {
                if (password !== confirmPassword) {
                    $("input[name='confirmPassword']").attr('class', 'n-input input-danger');
                    $("#passwordConfirmValidMessage").html('비밀번호가 일치하지 않습니다.');
                    isConfirmPassPassword = false;
                    joinBtnActive(false);
                    return;
                } else {
                    $("input[name='confirmPassword']").attr('class', 'n-input input');
                    $("#passwordConfirmValidMessage").html('');

                    isPassPassword = true;
                    isConfirmPassPassword = true;
                    if (isPassJoin()) {
                        joinBtnActive(true);
                    }
                    
                }
            }


            function passwordValidCheck(pw) {
                var $msgObj = $('#passwordValidMessage');
                var has_letter = new RegExp("[a-z]");
                var has_caps = new RegExp("[A-Z]");
                var has_numbers = new RegExp("[0-9]");
                var has_symbols = new RegExp(/[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>₩@\#$%&\\\=\(\'\"]/gi);
                var pob = 0;

                if(has_letter.test(pw)) {
                    pob++;
                }
                if (has_caps.test(pw)) {
                    pob++;
                }
                if (has_numbers.test(pw)) {
                    pob++;
                }
                if (has_symbols.test(pw)) {
                    pob++;
                }

                if(!pw) {
                    $msgObj.html("<font>비밀번호는 필수정보입니다.</font>");
                    $("input[name='password']").attr('class', 'n-input input-danger');
                    return false;
                }

               
                if (pw.length < 8 || pw.length > 20) {  
                    $msgObj.html("<font>8~20자 이내로 입력해 주십시오.<font>");
                    $("input[name='password']").attr('class', 'n-input input-danger');
                    return false;
                }

                var isContainBlank = $("#password").val().indexOf(" ");
                if (isContainBlank != -1) {
                    $msgObj.html("<font>숫자 ,영문 대소문자, 특수문자 중 두가지 이상으로 조합해 주십시오.<font>");
                    $("input[name='password']").attr('class', 'n-input input-danger');
                    return false;
                }

                if(pob <= 1) {
                    $msgObj.html("<font>숫자 ,영문 대소문자, 특수문자 중 두가지 이상으로 조합해 주십시오.<font>");
                    $("input[name='password']").attr('class', 'n-input input-danger');
                    return false;
                }

                if(samePassword(pw)) {
                    $msgObj.html("<font>동일문자를 반복해서 4자 이상 사용할 수 없습니다.<font>");
                    $("input[name='password']").attr('class', 'n-input input-danger');
                    return false;
                }

                $msgObj.html("");
                $("input[name='password']").attr('class', 'n-input input');
                return true;
            }

            function samePassword(password) {
                var wordRegExp = new RegExp("(\\w)\\1\\1\\1");
                var specialWordRegExp = new RegExp("(\\([~!@#$%^&*()_+|<>?:{}])\\1\\1\\1");
                return wordRegExp.test(password) || specialWordRegExp.test(password);
            }

            function callCheckValidPassword(password) {
                var invalidPassword = false;

                mss.my.ajax.call(
                    {
                        async:false,
                        type: 'GET',
                        url: '/api/member/v2/join/validation/password',
                        async: false,
                        data : {
                            password : password.val()
                        },
                        success: function (response) {
                            var success = response.success;

                            if (success) {
                                $("input[name='checkPassword']").val('1');
                                $("input[name='password']").attr('class', 'n-input input');
                                invalidPassword = true;
                                isPassPassword = true;
                            } else {
                                $("#passwordValidMessage")
                                    .removeClass('validation-passed')
                                    .html(response.message);
                                $("input[name='password']").attr('class', 'n-input input-danger');
                                invalidPassword = false;
                                isPassPassword = false;
                            }
                        }
                    }, false
                );

                return invalidPassword;
            }
        }

        function validateConfirmPassword() {
            $("input[name='checkConfirmPassword']").val('0');
            var password = $('#password').val();
            var confirmPassword = $('#confirmPassword').val().trim();
            $("#confirmPassword").val('');
            $("#confirmPassword").val(confirmPassword);

            if (password !== '' && password.length > 7) {
                if (confirmPassword === '') {
                    $("input[name='confirmPassword']").attr('class', 'n-input input-danger');
                    $("#passwordConfirmValidMessage").html('비밀번호 재확인은 필수정보입니다.');
                    isConfirmPassPassword = false;
                    joinBtnActive(false);
                } else if (password !== confirmPassword) {
                    $("input[name='confirmPassword']").attr('class', 'n-input input-danger');
                    $("#passwordConfirmValidMessage").html('비밀번호가 일치하지 않습니다.');
                    isConfirmPassPassword = false;
                    joinBtnActive(false);
                } else {
                    $("input[name='confirmPassword']").attr('class', 'n-input input');
                    $("#passwordConfirmValidMessage").html('');
                    $("input[name='checkConfirmPassword']").val('1');
                    isConfirmPassPassword = true;

                    if (isPassJoin()) {
                        joinBtnActive(true);
                    }
                }
            }
        }

        var changeFndTarget = function(t){
            switch(t){
                case 'email':
                    $('#email').css('display','');
                    $('#phoneNumber').css('display','none');
                    $('#sendCertPhoneBtn').css('display','none');
                    $('#reSendCertPhoneBtn').css('display','none');
                    $('#phoneCertification').css('display','none');
                    $('#phoneNumber').attr("readonly", false);
                    $('#phoneNumber').val('');
                    $("#searchIdBtn").prop("disabled", true);
                    $("#input-div").attr('class', 'n-form-set');
                    $('#certNumber').val('');
                    break;
                case 'phone':
                    $('#email').css('display','none');
                    $('#phoneNumber').css('display','');
                    $('#sendCertPhoneBtn').css('display','');
                    $('#phoneCertification').css('display','none');
                    $('#reSendCertPhoneBtn').css('display','none');
                    $('#email').val('');
                    $("#input-div").attr('class', 'n-form-item');
                    $("#searchIdBtn").prop("disabled", true);
                    $("#sendCertPhoneBtn").attr('disabled', false);
                    break;
            }
            $("#searchValidPhone").hide();
            $("#searchValidEmail").hide();
        }
        
        function phoneValidation() {

            var phoneNumber = $('#phoneNumber').val();

            if (!(phoneNumber.length >= 10 && phoneNumber.length <= 11)) {
                return false;
            }

            var regNumber = /^[0-9]*$/;
            if(!regNumber.test(phoneNumber)){
                $("#phoneNumber").val(phoneNumber.replace(/[^0-9]/g,""));
                $("#phoneNumber").focus();
                return false;
            }

            return true;
        }
		
       function validatePhone() {
    	   $('#phoneNumber').on("keyup", function () {
               if ($(this).val().length < 1) {
                   $("#searchValidPhone").show();
                   $("#searchValidPhone").text('휴대전화 번호를 입력해 주세요');
                   $("#searchIdBtn").prop("disabled", true);
               } else if (phoneValidation()) {
                   $("#searchValidPhone").hide();
               } else {
                   $("#searchValidPhone").show();
                   $("#searchValidPhone").text('번호 형식이 올바르지 않습니다');
                   $("#searchIdBtn").prop("disabled", true);
               }
           });
       }
		         
         
        function validateEmail () {

            var trimedEmail = $("#email").val().trim();
            $("#email").val('');
            $("#email").val(trimedEmail);

            $("#emailDomainList").hide();

            if (!$("#email").val()) {
                $("#hLayeremail")
                    .removeClass('validation-passed')
                    .html('이메일은 필수정보입니다.');
                $("input[name='email']").attr('class', 'n-input input-danger');
                isPassEmail = false;
                joinBtnActive(false);
            } else {
                // 이메일 유효성 체크
                var email = $("#email").val();
                var isInvalidEmail = email.indexOf('\@') === -1 || email.indexOf('.') === -1;

                if (isInvalidEmail) {
                    $("input[name='checkEmail']").val("0");
                    $("input[name='email']").attr('class', 'n-input input-danger');
                    $("#hLayeremail")
                        .removeClass('validation-passed')
                        .html("이메일 주소가 올바르지 않습니다.");
                    isPassEmail = false;
                    joinBtnActive(false);
                    return false;
                } else {
                    mss.my.ajax.call(
                        {
                            async: false,
                            url: '/api/member/v2/join/email/'+ $("#email").val().trim() + '/exist',
                            method: 'GET',
                            dataType: 'json',
                            success: function (response) {
                                $("#email").removeClass('valid');
                                if (response.success) {
                                    $("input[name='checkEmail']").val("1");
                                    $("input[name='email']").attr('class', 'n-input input');
                                    $("#hLayeremail").html(response.message);
                                    $('#hLayeremail').attr("class", "n-validation validation-passed");
                                    isPassEmail = true;

                                    if (isPassJoin()) {
                                        joinBtnActive(true);
                                    }
                                } else {
                                    $("input[name='checkEmail']").val("0");
                                    $("input[name='email']").attr('class', 'n-input input-danger');
                                    $("#hLayeremail")
                                        .removeClass('validation-passed')
                                        .html(response.message);
                                    isPassEmail = false;
                                    joinBtnActive(false);
                                }
                            }
                        }
                        , false
                    );
                }
            }
            $("#emailFromLayer").attr("class","n-form-layer");
            return false;
        }
        

        function isPassJoin() {
            if ($("#recommendMemberId").val() && $("input[name='checkRecommendMemberId']").val() !== '1') {
                return false;
            }

            return isPassMemberId && isPassPassword && isConfirmPassPassword && isPassEmail && isPassAgree;
        }

        //비밀번호 가리기/보이기
        function togglePassword(_id, _this) {
            var _password = $("#" + _id);
            if (_password.attr("type") == "password") {
                _password.attr("type", "text");
                _this.childNodes[1].className = 'ic-30-solid-hide ic-gray5';
            } else {
                _password.attr("type", "password");
                _this.childNodes[1].className = 'ic-30-solid-show ic-gray5';
            }
        }

        function moveScrollToTargetElement(elementId) {
            try {
                var offset = $('#' + elementId).offset();
                var winH = $(window).height();
                $('html, body').animate({scrollTop : (offset.top - winH/2) }, 100);
            } catch (e) {
                var bodyOffSet = $('body').offset();
                $('html, body').animate({scrollTop : (bodyOffSet.top - winH/2) }, 100);
            }
        }

        var mouseFlag = true;
        $(document).ready(function () {

            function validateAllData(e) {
                validateMemberId();
                validatePassword();
                validateConfirmPassword();
                validateEmail();
                validatePhone();

                if (!isPassMemberId) {
                    moveScrollToTargetElement("memberId");
                    $("#memberId").focus();
                    return false;
                }
                if(!isPassPassword) {
                    moveScrollToTargetElement('password');
                    $("#password").focus();
                    return false;
                }
                if(!isConfirmPassPassword) {
                    moveScrollToTargetElement('confirmPassword');
                    $("#confirmPassword").focus();
                    return false;
                }
                if(!isPassEmail) {
                    moveScrollToTargetElement('email');
                    $("#email").focus();
                    return false;
                }
                if (!$('#agreeCheckbox').prop('checked')) {
                    alert('회원으로 가입을 원하실 경우,\n\n\[개인정보 수집 이용동의(필수)\]에 동의하셔야 합니다.');
                    isPassAgree = false;
                    return false;
                }
                if (!$('#useTermsCheckbox').prop('checked')) {
                    alert('회원으로 가입을 원하실 경우,\n\n\[축구장 이용약관(필수)\]에 동의하셔야 합니다.');
                    isPassAgree = false;
                    return false;
                }
                return validateRecommendId();
            }

            initSessionStorage();

            var isSubmit = true;
            $("#joinBtnDiv").on('mousedown', function (e) {
                e.preventDefault();
            }).on('click', '#joinBtn', function (e) {
                e.preventDefault();

                if (isSubmit) {
                    if(!validateAllData()) {
                        return false;
                    }

                    joinBtnActive(false);
                    $("#joinForm").submit();
                    isSubmit = false;
                }
                return false;
            });

            $('#emailFromLayer').mousedown(function(){
                mouseFlag = false;
            });
            $('#emailFromLayer').mouseup(function(){
                mouseFlag = true;
            });


            $("#emailFromLayer ul").on("click","li button",function(e) {
                e.preventDefault();
                $("#email").val($(this).text());

                validateEmail();
                return false;
            });

            $('#memberId').on("keyup", validateLengthMemberIdWhenKeyup);
            $('#memberId').on("blur", validateMemberId);
            $("#password").on("blur", validatePassword);
            $("#confirmPassword").on("blur", validateConfirmPassword);
            $("#email").on("blur", function(e){
                if(!mouseFlag) {
                    return false;
                }
                validateEmail();
            });
            $("#email").on("keyup", function(e) {
                var value = e.currentTarget.value;
                if (value.length > 1 && value[value.length-1] == "@") {
                    $("#emailFromLayer ul > li button span").text(value);
                }

                if(value.indexOf("@") != -1){
                    e.target.parentElement.className = "n-form-layer is-active";
                    $("#emailDomainList").show();
                    $("#emailDomainList li").show();
                    var inputDomain = $("#email").val().split('@')[1];
                    var emailId = $("#email").val().split('@')[0];
                    $("#emailFromLayer ul > li button span").text(emailId + '@');
                    $("#emailDomainList li em").each(function () {
                        if ($(this).text().indexOf(inputDomain) == -1) {
                            $(this).parents('li').hide();
                        }
                    });
                } else {
                    e.target.parentElement.className = "n-form-layer";
                }
            });

            $("#memberId, #password, #confirmPassword, #recommendMemberId").focusin(function () {
                $("#emailFromLayer").removeClass('is-active');
            });

            $("#agreementDivArea label").click(function () {
                $("#emailFromLayer").removeClass('is-active');
            });

             
            });

            $("#checkAll").on("change", function () {
                if ($('#checkAll').prop("checked")) {
                    $('.n-check').prop('checked', true);
                    isPassAgree = true;
                    
                    if (isPassJoin()) {
                        joinBtnActive(true);
                    }
  
                } else {
                    $('.n-check').prop('checked', false);
                    isPassAgree = false;
                    joinBtnActive(false);
                }
            });


            $(".agree-item").click(function () {

                var isCheckAll = $("#checkAll").prop("checked");
                var requiredSelectedCnt = $('.required-agree-item:checked').length;
                var optionalSelectedCnt = $('.optional-agree-item:checked').length;
                var selectedCnt = requiredSelectedCnt + optionalSelectedCnt;
                var allAgreeCnt = 4;

                if (isCheckAll && selectedCnt != allAgreeCnt) {
                    $("#checkAll").prop("checked", false);
                }


                if (selectedCnt === allAgreeCnt) {
                    $("#checkAll").prop("checked", true);
                    isPassAgree = true;
                    if (isPassJoin()) {
                        joinBtnActive(true);
                    }
                }

                if (requiredSelectedCnt == 3) {
                    isPassAgree = true;
                    if (isPassJoin()) {
                        joinBtnActive(true);
                    }
                   
                }

                if (requiredSelectedCnt != 3) {
                    joinBtnActive(false);
                    isPassAgree = false;
                }

            });



        function initSessionStorage() {
            $("#memberId").val(sessionStorage.getItem("memberId"));
            $("#password").val(sessionStorage.getItem("password"));
            $("#confirmPassword").val(sessionStorage.getItem("confirmPassword"));
            $("#email").val(sessionStorage.getItem("email"));




            var invalidMsg = sessionStorage.getItem("memberIdInvalidMsg");
            if (invalidMsg) {
                $("#hLayerid").html(invalidMsg);
                $("#memberId").attr('class', 'n-input input-danger');
            }

            invalidMsg = sessionStorage.getItem("passwordInvalidMsg");
            if (invalidMsg) {
                $("#passwordValidMessage").html(invalidMsg);
                $("input[name='password']").attr('class', 'n-input input-danger');
            }

            invalidMsg = sessionStorage.getItem("confirmPasswordInvalidMsg");
            if (sessionStorage.getItem("confirmPasswordInvalidMsg")) {
                $("#passwordConfirmValidMessage").html(invalidMsg);
                $("input[name='confirmPassword']").attr('class', 'n-input input');
            }
			
            invalidmsg = sessionStorage.getItem("nameInvalidMsg");
            if (invalidMsg) {
            	$("#hLayername").html(invalidMsg);
            	$("#name").attr('class', 'n-input input-dangere');
            }
            
            invalidMsg = sessionStorage.getItem("emailInvalidMsg");
            if (sessionStorage.getItem("emailInvalidMsg")) {
                $("#hLayeremail")
                    .removeClass('validation-passed')
                    .html(invalidMsg);
                $("input[name='email']").attr('class', 'n-input input-danger');
            }

            invalidMsg = sessionStorage.getItem("recommendMemberIdInvalidMsg");
            if (sessionStorage.getItem("recommendMemberIdInvalidMsg")) {
                $("#hLayerRecommendMemberId").html(invalidMsg);
                $("#hLayerRecommendMemberId").css('display','block');
                $("input[name='recommendMemberId']").attr('class', 'n-input input-danger');
            }

            $("#checkAll").prop('checked', sessionStorage.getItem("checkAll") === 'true' ? true : false);
            $("#agreeCheckbox").prop('checked', sessionStorage.getItem("agreeCheckbox") === 'true' ? true : false);
            $("#useTermsCheckbox").prop('checked', sessionStorage.getItem("useTermsCheckbox") === 'true' ? true : false);
            $("#ageAgreeCheckbox").prop('checked', sessionStorage.getItem("ageAgreeCheckbox") === 'true' ? true : false);

            isPassMemberId = sessionStorage.getItem("isPassMemberId") === 'true' ? true : false;
            isPassPassword = sessionStorage.getItem("isPassPassword") === 'true' ? true : false;
            isConfirmPassPassword = sessionStorage.getItem("isConfirmPassPassword") === 'true' ? true : false;
            isPassEmail = sessionStorage.getItem("isPassEmail") === 'true' ? true : false;
            isPassAgree = sessionStorage.getItem("isPassAgree") === 'true' ? true : false;


            if (isPassJoin()) {
                joinBtnActive(true);
            } else {
                joinBtnActive(false);
            }

            sessionStorage.clear();
        }

        function setSessionStorage() {
            sessionStorage.setItem("memberId", $("#memberId").val());
            sessionStorage.setItem("password", $("#password").val());
            sessionStorage.setItem("confirmPassword", $("#confirmPassword").val());
            sessionStorage.setItem("email", $("#email").val());

            if ($("input[name='checkId']").val() === '0') {
                sessionStorage.setItem("memberIdInvalidMsg", $("#hLayerid").html());
            }

            if ($("input[name='checkPassword']").val() === '0') {
                sessionStorage.setItem("passwordInvalidMsg", $("#passwordValidMessage").html());
            }

            if ($("input[name='checkConfirmPassword']").val() === '0') {
                sessionStorage.setItem("confirmPasswordInvalidMsg", $("#passwordConfirmValidMessage").html());
            }

            if ($("input[name='checkEmail']").val() === '0') {
                sessionStorage.setItem("emailInvalidMsg", $("#hLayeremail").html());
            }

            if ($("input[name='checkRecommendMemberId']").val() === '0') {
                sessionStorage.setItem("recommendMemberIdInvalidMsg", $("#hLayerRecommendMemberId").html());
            }

            sessionStorage.setItem("checkRecommendMemberId", $("input[name='checkRecommendMemberId']").val());
            sessionStorage.setItem("checkPhoneNumber", $("input[name='checkPhoneNumber']").val());
 
            sessionStorage.setItem("checkAll", $("#checkAll").prop('checked'));
            sessionStorage.setItem("agreeCheckbox", $("#agreeCheckbox").prop('checked'));
            sessionStorage.setItem("useTermsCheckbox", $("#useTermsCheckbox").prop('checked'));


            sessionStorage.setItem("isPassMemberId", isPassMemberId);
            sessionStorage.setItem("isPassPassword", isPassPassword);
            sessionStorage.setItem("isConfirmPassPassword", isConfirmPassPassword);
            sessionStorage.setItem("isPassEmail", isPassEmail);
            sessionStorage.setItem("isPassAgree", isPassAgree);

            sessionStorage.setItem("joinBtn", $("#joinBtn").prop('disabled'));

        }

        function checkIdValue(id) {
            if ("" === id) {
                return false;
            }
            return getTypeCheck(id, "abcdefghijklmnopqrstuvwxyz1234567890_");

            function getTypeCheck(s, spc) {
                for (var i = 0; i < s.length; i++) {
                    if (spc.indexOf(s.substring(i, i + 1)) < 0) {
                        return false;
                    }
                }
                return true;
            }
        }

        function privacyAgreeUsagePopBtnClickHandler() {
            var popSizeOnMobile = '';

            if(false) {
                popSizeOnMobile = 'width=100%,height=100%,';
            }

            setSessionStorage();
            window.open('./article.jsp', '_blank', "toolbar=yes,scrollbars=yes,resizable=yes,top=200,left=550,width=700,height=600");

        }

        function serviceAgreementPopBtnClickHandler() {
            var popSizeOnMobile = '';

            if(false) {
                popSizeOnMobile = 'width=100%,height=100%,';
            }

            setSessionStorage();
            window.open('./article.jsp', '_blank', "toolbar=yes,scrollbars=yes,resizable=yes,top=200,left=550,width=700,height=600");
        }


    </script>
</html>