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
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="./../resources/css/layout.css" rel="stylesheet" type="text/css" media="all">
<!-- login css start -->
<link rel="stylesheet" href="./../resources//css/util.css" />
<link rel="stylesheet" href="./../resources/css/idpage.css" />
<!-- login css end -->
</head>
<body id="top">
<!--top-->
<%@ include file="./../include/top.jsp"%>
<!--각 페이지 이미지-->
<div class="bgded overlay" style="background-image:url('./../resources/img/축구공배너1.png');">
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
			<h2>일반 회원</h2>
				<form class="login100-form validate-form">
					<!-- <span class="login100-form-title p-b-26">
						로그인
					</span> -->
					<div class="icon">
					<img src="./../resources/img/icon.png" style="width:160px; height:150px" alt="" />
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
								로그인
							</button>
						</div>
						<div class="clear"></div>
					</div>
					<br /><br />
					<div class="login100-api">
<!-- 					<img src="./../resources/img/naver.png" alt="naverAPI" /><br><img src="./../resources/img/kakao.png" alt="kakaoAPI" width="320px" /> -->
					<a href="https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=k1ss0PkmQcIZeUt6zBFx&redirect_uri=http://localhost:8282/auth/naver/callback">
					<img src="./../resources/img/naver.png" alt="naverAPI" /></a>
					<a href="https://kauth.kakao.com/oauth/authorize?client_id=5218cc19e9315bbdcf407a1a0b47ca0c&redirect_uri=http://localhost:8282/auth/kakao/callback&response_type=code">    
					<img src="./../resources/img/kakao.png" alt="kakaoAPI"/></a>
					</div>
					<div class="text-center p-t-55">
						<!-- <span class="txt1">
							Don’t have an account?
						</span> -->
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a class="txt2" href="./../member/member_select.do">
							Sign Up
						</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<!-- <span class="txt1">
							Forget ID or Password?
						</span> -->

						<a class="txt2" href="./../member/id_pw.do">
							Find ID / Password 
						</a>
					</div>
						<div class="clear"></div>
				</form>
			</div>
		</div>
	</div> 
    </div>
    
     <div class="content"> 
    <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
			<h2>구장주</h2>
				<form class="login100-form validate-form">
					<!-- <span class="login100-form-title p-b-26">
						로그인
					</span> -->
					<div class="icon">
					<img src="./../resources/img/icon.png" style="width:160px; height:150px" alt="" />
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
								로그인
							</button>
						</div>
						<div class="clear"></div>
					</div>
					<br /><br />
					<div class="login100-api">
<!-- 					<img src="./../resources/img/naver.png" alt="naverAPI" /><br><img src="./../resources/img/kakao.png" alt="kakaoAPI" width="320px" /> -->
					<a href="https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=k1ss0PkmQcIZeUt6zBFx&redirect_uri=http://localhost:8282/auth/naver/callback">
					<img src="./../resources/img/naver.png" alt="naverAPI" /></a>
					<a href="https://kauth.kakao.com/oauth/authorize?client_id=5218cc19e9315bbdcf407a1a0b47ca0c&redirect_uri=http://localhost:8282/auth/kakao/callback&response_type=code">    
					<img src="./../resources/img/kakao.png" alt="kakaoAPI"/></a>
					</div>
					<div class="text-center p-t-55">
						<!-- <span class="txt1">
							Don’t have an account?
						</span> -->
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a class="txt2" href="./../member/member_select.do">
							Sign Up
						</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<!-- <span class="txt1">
							Forget ID or Password?
						</span> -->

						<a class="txt2" href="./../member/id_pw.do">
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