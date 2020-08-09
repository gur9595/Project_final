<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../../assets/images/favicon.png">
    <title>B-PRO STADIUM LOGIN</title>
    <!-- Custom CSS -->
    <link href="./../resources/admin_css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
    <div class="main-wrapper">
        <div class="preloader">
            <div class="lds-ripple">
                <div class="lds-pos"></div>
                <div class="lds-pos"></div>
            </div>
        </div>
        <div class="auth-wrapper d-flex no-block justify-content-center align-items-center bg-dark">
            <div class="auth-box bg-dark border-top border-secondary">
                <div id="loginform">
                    <div class="text-center p-t-20 p-b-20">
                        <span class="db"><h2 style="color: white;">B-PRO STADIUM LOGIN</h2></span>
                    </div>
                    <!-- Choose -->
                    	<c:choose>
							<c:when test="${not empty sessionScope.siteUserInfo }">
								<div class="center" style="border:2px solid #cccccc;padding-left: 150px">			
									<button class="btn btn-primary" 
										onclick="location.href='stMain.do';">
										Main</button>
									<button class="btn btn-success"
										onclick="location.href='logout.do'">
										아 졸라 집가고싶다</button>
								</div>
							</c:when>
                    <c:otherwise>
                    <!-- Form -->
                    <form name="loginFrm" action="../stadium/stloginAction.do" method="post">

                    <!-- 로그인 성공 할 경우 이동 할 페이지의 경로를 폼값으로 전송 -->	
                    	<input type="hidden" name="backUrl" value="${param.backUrl }"/>		
                        <div class="row p-b-30">
                            <div class="col-12">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text bg-success text-white" id="basic-addon1"><i class="ti-user"></i></span>
                                    </div>
                                    <input type="text" id="s_id" name="s_id" class="form-control form-control-lg" placeholder="StadiumID" aria-label="StadiumID" aria-describedby="basic-addon1" required="">
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text bg-warning text-white" id="basic-addon2"><i class="ti-pencil"></i></span>
                                    </div>
                                    <input type="password" id="s_pw" name="s_pw" class="form-control form-control-lg" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1" required="">
                                </div>
                            </div>
                        </div>
                        <div class="row border-top border-secondary">
                            <div class="col-12">
                                <div class="form-group">
                                    <div class="p-t-20">
                                        <button class="btn btn-success float-right" type="submit">Login</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    </c:otherwise>
                    </c:choose>
                </div> 
            </div>
        </div>
   
    </div>
    <script src="./../resources/admin_js/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="./../resources/admin_js/popper.min.js"></script>
    <script src="./../resources/admin_js/bootstrap.min.js"></script>
    <script>

    $('[data-toggle="tooltip"]').tooltip();
    $(".preloader").fadeOut();
    // ============================================================== 
    // Login and Recover Password 
    // ============================================================== 
    $('#to-recover').on("click", function() {
        $("#loginform").slideUp();
        $("#recoverform").fadeIn();
    });
    $('#to-login').click(function(){
        
        $("#recoverform").hide();
        $("#loginform").fadeIn();
    });
    </script>

</body>

</html>