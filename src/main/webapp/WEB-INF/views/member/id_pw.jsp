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
<!-- login css start -->
<link rel="stylesheet" href="./../resources//css/util.css" />
<link rel="stylesheet" href="./../resources/css/id_pwpage.css" />
<!-- login css end -->

<script src="./../resources/js/member.js"></script>
</head>
<body id="top">
<!--top-->
<%@ include file="./../include/top.jsp"%>
<!--각 페이지 이미지-->
<div class="bgded overlay" style="background-image:url('./../resources/img/idpw.jpg'); background-position: 0 50%;"> 
  <div id="breadcrumb" class="hoc clear"> 
    <!--이미지 위에 글쓰는곳-->
  </div>
</div>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- 아이디 찾기 -->
    <div class="content"> 
    <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
			
				<form class="login100-form validate-form" name="idFrm" method="post" 
					onsubmit="return id_search(this);" action="<c:url value="/member/id_mailSending.do" />" >
					
					<span class="login100-form-title p-b-26">
						아이디 찾기
					</span> 
					<br />
					<!-- <span class="login100-form-title p-b-48">
						<i class="zmdi zmdi-font"></i>
					</span> -->

					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" id="id_name" name="id_name" placeholder="이름" style="width: 260px;">
						<span class="focus-input100" data-placeholder=""></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i> 
						</span>
						<input class="input100" type="text" name="id_email" id="id_email" placeholder="회원가입시 입력한 이메일" style="width: 260px;">
						<span class="focus-input100" data-placeholder=""></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">아이디 찾기</button>
						</div>
						<div class="clear"></div>
					</div>
					<br /><br />
					<div class="clear"></div>
				</form>
			</div>
		<!-- </div>
    비밀번호 찾기
		<div class="container-login100"> -->
			<div class="wrap-login100">
				<form class="login100-form validate-form" name="pwFrm" method="post" 
					onsubmit="return pw_search(this);" action="<c:url value="/member/pw_mailSending.do" />" >
					
					<span class="login100-form-title p-b-26">
						비밀번호 찾기
					</span> 
					<br />
					<!-- <span class="login100-form-title p-b-48">
						<i class="zmdi zmdi-font"></i>
					</span> -->

					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" id="pw_id" name="pw_id" placeholder="아이디" style="width: 260px;">
						<span class="focus-input100" data-placeholder=""></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i> 
						</span>
						<input class="input100" type="text" name="pw_email" id="pw_email" placeholder="회원가입시 입력한 이메일" style="width: 260px;">
						<span class="focus-input100" data-placeholder=""></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">비밀번호 찾기</button>
						</div>
						<div class="clear"></div>
					</div>
					<br /><br />
					<div class="clear"></div>
				</form>
			</div>
		</div>
	</div> 
    </div>
    
    <div id="dropDownSelect1"></div>
    
    <!-- / main body end -->
    <div class="clear"></div>
  </main>
</div>
<!-- footer -->
<%@ include file="./../include/footer.jsp"%>
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- 로그인 script -->
<script src="js/main.js"></script>
<!-- JAVASCRIPTS -->
<script src="./../resources/js/jquery.min.js"></script>
<script src="./../resources/js/jquery.backtotop.js"></script>
</body>
</html>