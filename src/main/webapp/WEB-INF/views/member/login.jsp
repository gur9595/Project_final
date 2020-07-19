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
<link rel="stylesheet" href="./../resources/css/main.css" />
<!-- login css end -->
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
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <div class="content"> 
    <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form">
					<!-- <span class="login100-form-title p-b-26">
						여따 아이콘 박아야징
					</span> -->
					<div class="icon">
					<img src="./../resources/img/insta.png" alt="" width="350px"/>
					</div>
					<br />
					<!-- <span class="login100-form-title p-b-48">
						<i class="zmdi zmdi-font"></i>
					</span> -->

					<div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
						<input class="input100" type="text" name="email" placeholder="아이디">
						<span class="focus-input100" data-placeholder=""></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<!-- <span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i> 
						</span> -->
						<input class="input100" type="password" name="pass" placeholder="비밀번호">
						<span class="focus-input100" data-placeholder=""></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								당연히 로그인이겠지?
							</button>
						</div>
						<div class="clear"></div>
					</div>
					<br /><br />
					<div class="login100-api">
<!-- 					<img src="./../resources/img/naver.png" alt="naverAPI" /><br><img src="./../resources/img/kakao.png" alt="kakaoAPI" width="320px" /> -->
					<a href="#"><img src="./../resources/img/naver.png" alt="naverAPI" /></a><a href=""><img src="./../resources/img/kakao.png" alt="kakaoAPI"/></a>
					</div>
					<div class="text-center p-t-55">
						<!-- <span class="txt1">
							Don’t have an account?
						</span> -->
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a class="txt2" href="./../member/phoneCheck.do">
							Sign Up
						</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<!-- <span class="txt1">
							Forget ID or Password?
						</span> -->

						<a class="txt2" href="#">
							Find ID / Password 
						</a>
					</div>
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
<script src="./../resources/js/jquery.mobilemenu.js"></script>
</body>
</html>