<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>B-PRO</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="./../resources/css/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


<style>
h2 { font-size : 24px; color:#000066; line-height:30px;
	margin:35px auto 10px 0px;
	padding : 2px 10px 2px 0px;
	border-bottom : 3px solid #000066;
}

input[type=checkbox], input[type=radio]
{
	width : 20px; height : 20px; cursor: pointer;
}
label {
    cursor: pointer; font-size : 18px;
}

.txtBox31 { border-style: solid; border-width: 2px 2px 2px 8px; padding: 12px; word-break: break-all; }
.txtBox31 { border-color: DodgerBlue; width: 300px; }




</style>
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
	<main  class="hoc container clear"> 
		<div="container>           
		    <h1 style="font-size:40px; font-weight:bold; text-align:center;">회&nbsp;원&nbsp;가&nbsp;입</h1>
			<form class="formBox" name="joinForm" id="joinForm" action="<c:url value="/member/memberJoin1.do" />" method="post">
		  	
			<header class="member-header">
			    <div class="logo">
			
			    </div>
			</header>
			
				<h2>아이디</h2>
					<input type="text" class="txtBox31" id="m_id" name="m_id" placeholder="아이디를 입력하세요">
					 
				<h2>비밀번호</h2>
					<input type="password" class="txtBox31" id="m_pw" name="m_pw" placeholder="비밀번호를 입력하세요">
					
				<h2>비밀번호 확인</h2>
					<input type="password" class="txtBox31" id="confirmPw" name="confirmPw" autocomplete="new-password" placeholder="비밀번호 재입력">
				
				<h2>이름</h2>
					<input type="text" class="txtBox31" id="m_name" name="m_name" placeholder="이름입력">
				
				<h2>생년월일</h2>
					<input type="text" class="txtBox31" id="m_birth" name="m_birth" placeholder="예)19970121" minlength="7" maxlength="8" >
				
			    <h2>휴대전화</h2>
	                <input type="tel" class="txtBox31" id="m_phone" name="m_phone" placeholder="휴대전화 입력(-없이)" minlength="10" maxlength="12">
		        
		        <h2>이메일</h2>
		         <div class="n-form-layer" id = "emailFromLayer">
					<input type="email" class="txtBox31" id="m_email" name="m_email" maxlength="50" placeholder="이메일을 입력하세요"  style="width:350px; height:45px;">
				</div> 
            	<br/><br/><br/><br/>   
			        
                <div style="text-align:center">
					<button type="button" class="btn btn-outline-info"  style="font-size:20px;" onclick="javascript:goBack();">이전 페이지</button>
                    <input type="submit" class="btn btn-outline-success" style="font-size:20px;" onsubmit="" value="다음"/>
                </div>
	        </form>
    	</div>  	
    <div class="clear"></div>
	</main>
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
</script>
</body>
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
            $('#m_id').val($('#m_id').val().trim());
            var $m_id = $('#m_id');
            if ($m_id.val().length > 20) {
                var limitMemberId = $m_id.val().substring(0, 20);
                $m_id.val(limitMemberId);
            }
        }

        function validatePassword() {
            
            var confirmPassword = $('#confirmPassword').val();
            if (confirmPassword !== '' && m_pw.length > 7) {
                if (m_pw !== confirmPassword) {
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
                    $("input[name='m_pw']").attr('class', 'n-input input-danger');
                    return false;
                }
               
                if (pw.length < 8 || pw.length > 20) {  
                    $msgObj.html("<font>8~20자 이내로 입력해 주십시오.<font>");
                    $("input[name='m_pw']").attr('class', 'n-input input-danger');
                    return false;
                }
                var isContainBlank = $("#m_pw").val().indexOf(" ");
                if (isContainBlank != -1) {
                    $msgObj.html("<font>숫자 ,영문 대소문자, 특수문자 중 두가지 이상으로 조합해 주십시오.<font>");
                    $("input[name='m_pw']").attr('class', 'n-input input-danger');
                    return false;
                }
                if(pob <= 1) {
                    $msgObj.html("<font>숫자 ,영문 대소문자, 특수문자 중 두가지 이상으로 조합해 주십시오.<font>");
                    $("input[name='m_pw']").attr('class', 'n-input input-danger');
                    return false;
                }
                if(samePassword(pw)) {
                    $msgObj.html("<font>동일문자를 반복해서 4자 이상 사용할 수 없습니다.<font>");
                    $("input[name='m_pw']").attr('class', 'n-input input-danger');
                    return false;
                }
                $msgObj.html("");
                $("input[name='m_pw']").attr('class', 'n-input input');
                return true;
            }
            function samePassword(m_pw) {
                var wordRegExp = new RegExp("(\\w)\\1\\1\\1");
                var specialWordRegExp = new RegExp("(\\([~!@#$%^&*()_+|<>?:{}])\\1\\1\\1");
                return wordRegExp.test(m_pw) || specialWordRegExp.test(m_pw);
            }
            function callCheckValidPassword(m_pw) {
                var invalidPassword = false;
                mss.my.ajax.call(
                    {
                        async:false,
                        type: 'GET',
                        url: '/api/member/v2/join/validation/m_pw',
                        async: false,
                        data : {
                        	m_pw : m_pw.val()
                        },
                        success: function (response) {
                            var success = response.success;
                            if (success) {
                                $("input[name='checkPassword']").val('1');
                                $("input[name='m_pw']").attr('class', 'n-input input');
                                invalidPassword = true;
                                isPassPassword = true;
                            } else {
                                $("#passwordValidMessage")
                                    .removeClass('validation-passed')
                                    .html(response.message);
                                $("input[name='m_pw']").attr('class', 'n-input input-danger');
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
            var m_pw = $('#m_pw').val();
            var confirmPassword = $('#confirmPassword').val().trim();
            $("#confirmPassword").val('');
            $("#confirmPassword").val(confirmPassword);
            if (m_pw !== '' && m_pw.length > 7) {
                if (confirmPassword === '') {
                    $("input[name='confirmPassword']").attr('class', 'n-input input-danger');
                    $("#passwordConfirmValidMessage").html('비밀번호 재확인은 필수정보입니다.');
                    isConfirmPassPassword = false;
                    joinBtnActive(false);
                } else if (m_pw !== confirmPassword) {
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
        
        
        function phoneValidation() {
            var m_phone = $('#m_phone').val();
            if (!(m_phone.length >= 10 && m_phone.length <= 11)) {
                return false;
            }
            var regNumber = /^[0-9]*$/;
            if(!regNumber.test(m_phone)){
                $("#m_phone").val(m_phone.replace(/[^0-9]/g,""));
                $("#m_phone").focus();
                return false;
            }
            return true;
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
                    moveScrollToTargetElement("m_id");
                    $("#m_id").focus();
                    return false;
                }
                if(!isPassPassword) {
                    moveScrollToTargetElement('m_pw');
                    $("#m_pw").focus();
                    return false;
                }
                if(!isConfirmPassPassword) {
                    moveScrollToTargetElement('confirmPassword');
                    $("#confirmPassword").focus();
                    return false;
                }
                if(!isPassEmail) {
                    moveScrollToTargetElement('m_email');
                    $("#m_email").focus();
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
                $("#m_email").val($(this).text());
                validateEmail();
                return false;
            });
            $('#m_id').on("keyup", validateLengthMemberIdWhenKeyup);
            $('#m_id').on("blur", validateMemberId);
            $("#m_pw").on("blur", validatePassword);
            $("#confirmPassword").on("blur", validateConfirmPassword);
            $("#m_email").on("blur", function(e){
                if(!mouseFlag) {
                    return false;
                }
                validateEmail();
            });
            $("#m_email").on("keyup", function(e) {
                var value = e.currentTarget.value;
                if (value.length > 1 && value[value.length-1] == "@") {
                    $("#emailFromLayer ul > li button span").text(value);
                }
                if(value.indexOf("@") != -1){
                    e.target.parentElement.className = "n-form-layer is-active";
                    $("#emailDomainList").show();
                    $("#emailDomainList li").show();
                    var inputDomain = $("#m_email").val().split('@')[1];
                    var emailId = $("#m_email").val().split('@')[0];
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
            window.open('./../member/article.do', '_blank', "toolbar=yes,scrollbars=yes,resizable=yes,top=200,left=550,width=700,height=600");
        }
        function serviceAgreementPopBtnClickHandler() {
            var popSizeOnMobile = '';
            if(false) {
                popSizeOnMobile = 'width=100%,height=100%,';
            }
            setSessionStorage();
            window.open('./../member/article.do', '_blank', "toolbar=yes,scrollbars=yes,resizable=yes,top=200,left=550,width=700,height=600");
        }


    </script>
</html>