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
	
<script>
   WebFontConfig = {
    google: {
      families: ['Sarabun:300,400,400italic,500,600,700', 'Source Sans Pro:400,400italic,500,600,700']
    }
  };
   (function(d) {
      var wf = d.createElement('script'), s = d.scripts[0];
      wf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js';
      wf.async = true;
      wf.rel = 'preconnect';
      s.parentNode.insertBefore(wf, s);
   })(document);
</script>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<link href="./../resources/css/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="./../resources/css/payment_css.css">
<link rel="stylesheet" href="./../resources/css/payment_css2.css">

<!-- 결제 api ---------------------------------------------------------------------------------------------->
<script src="http://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script src="http://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>

<script>

	function payment(price_cash, price_charge) {
        var IMP = window.IMP;
        var code = "imp44765322";  // FIXME: 가맹점 식별코드
        
        var cash = price_cash; // 구매가격
        var charge = price_charge; // 입금될 마일리지
      
        IMP.init(code);

        // IMP.request_pay(param, callback)호출
        IMP.request_pay({ // param : 결제요청에 필요한 정보를 담는다.
        	
		    pg : 'inicis', // version 1.1.0부터 지원.
		    pay_method :'phone', // 테스트는 phone 발표시는 card로 교체할 것.
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : charge,
		    amount : cash,
		    buyer_email : 'iamport@siot.do',
		    buyer_name : '구매자이름',
		    buyer_tel : '010-1234-5678',
		    buyer_addr : '서울특별시 강남구 삼성동',
		    buyer_postcode : '123-456',	
		}, 
		function(rsp) { // callback : 고객이 결제를 완료한 후 실행되는 함수
		    if ( rsp.success ) { // 결제 성공시 로직
		        var msg = '====== 결제가 완료되었습니다. ======';
		        msg += '\n고유ID : ' + rsp.imp_uid;
		        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
		        msg += '\n결제 금액 : ' + rsp.paid_amount;
		        msg += '\n카드 승인번호 : ' + rsp.apply_num;				        
		    } 
		    else { // 결제 실패시 로직
		        var msg = '====== 결제에 실패하였습니다. ======';
		        msg += '\n에러내용 : ' + rsp.error_msg;
		    }
		   alert(msg);	
		  
		});
	}  
    </script>
  
<!----------------------------------------------------------------------------------------------------------------->

<!-- 모달창 일단 남겨놓음 ---------------------------------------------------------------------------------------->
 <%-- <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header" >
          <h4 class="modal-title" >======= Charge the B-PRO's BALL =======</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
       <!--  Modal body -->
        <div class="modal-body" style="text-align: center;">
          확인버튼을 누르면 결제페이지로 이동합니다.
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <input type="summit" value="Confirm" class="btn btn-success" data-dismiss="modal" style="width: 100px;"
          	onclick="location.href='./../payment/iampoartApi.do?price=';">
          onclick="location.href='./../payment/iampoartApi.do?price=<%=dto.price %>';">
          <button type="button" class="btn btn-danger" data-dismiss="modal" style="width: 100px;">Close</button>
        </div>
        
      </div>
    </div>
  </div> --%>
<!------------------------------------------------------------------------------------------>
</head>

<body id="top">
	<!--top-->
	<%@ include file="./../include/top.jsp"%>
	<!--각 페이지 이미지-->
	<div class="bgded overlay"
		style="background-image: url('../images/demo/backgrounds/01.png');">
		<div id="breadcrumb" class="hoc clear">
			<!--이미지 위에 글쓰는곳-->
		</div>
	</div>
	
	<div class="wrapper row3">
		<main class="hoc container clear">
			<!-- main body -->
				
				<!-- Small Pricing Table -->
	<section class="section-padding small-table-area">
		         
			<div class="row">
				<!-- Heading -->
				<div class="col-md-12 text-center">
					<h1 class="section-title aqua-heading">P A Y M E N T</h1>
					<p style="font-size: 20px; margin-left: 900px;">현재 나의 마일리지<br /><b style="color: red;">
						<script>document.write('charge');</script></b> BALL</p>
				</div>
				<!-- Pricing Table Area -->
				<div class="gg-pricing-table small-table col-md-12 mt-50">
					<!-- Single Table -->
					<div class="col-md-4">
						<div class="single-pricing-table text-center clearfix">
							<!-- Price -->
							<div class="price">
								<span>10,000&#8361;</span>
							</div>
							<!-- Heading -->
							<div class="pricing-table-heading">
								<h2> + 0%</h2>
								<p>10,000 Ball</p>
							</div>
							<!-- Button -->
							<div class="pricing-button">
								<!-- 테스트용으로 100원 설정. 발표시 10000으로 수정할 것 -->
								<a href="#" class="btn btn-pricing" onclick="payment(100, '10,000 Ball (+ 0%)');"><i class="fa fa-cart-plus"></i> Buy</a>
							
								<!-- 
								<form action="paymentMain.do" method="post">
								테스트용으로 100원 설정. 발표시 10000으로 수정할 것
								<a href="#" class="btn btn-pricing" onclick="payment(10, 10000, '	Ball (+ 0%)');"><i class="fa fa-cart-plus"></i> Buy</a>
								</form> 
								-->
							<!-- <a href="#myModal" class="btn btn-pricing" data-toggle="modal" data-target="#myModal"><i class="fa fa-cart-plus"></i> Buy</a> -->
							</div>
							<script>
								
							</script>
						</div>
					</div>
					<!-- Single Table -->
					<div class="col-md-4">
						<div class="single-pricing-table text-center clearfix">
							<!-- Price -->
							<div class="price">
								<span>30,000&#8361;</span>
							</div>
							<!-- Heading -->
							<div class="pricing-table-heading">
								<h2> + 1%</h2>
								<p>30,300 Ball</p>
							</div>
							<!-- Button -->
							<div class="pricing-button">
								<a href="#" class="btn btn-pricing" onclick="payment(30000, '30,300 Ball (+ 1%)');"><i class="fa fa-cart-plus"></i> Buy</a>
							</div>
						</div>
					</div>
					<!-- Single Table -->
					<div class="col-md-4">
						<div class="single-pricing-table text-center clearfix">
							<!-- Price -->
							<div class="price">
								<span>50,000&#8361;</span>
							</div>
							<!-- Heading -->
							<div class="pricing-table-heading">
								<h2> + 2%</h2>
								<p>51,000 Ball</p>
							</div>
							<!-- Button -->
							<div class="pricing-button">
								<a href="#" class="btn btn-pricing" onclick="payment(50000, '51,000 Ball (+ 2%)');"><i class="fa fa-cart-plus"></i> Buy</a>
							</div>
						</div>
					</div>
					<!-- Single Table -->
					<div class="col-md-4">
						<div class="single-pricing-table text-center clearfix">
							<!-- Price -->
							<div class="price">
								<span>70,000&#8361;</span>
							</div>
							<!-- Heading -->
							<div class="pricing-table-heading">
								<h2> + 3%</h2>
								<p>72,100 Ball</p>
							</div>
							<!-- Button -->
							<div class="pricing-button">
								<a href="#" class="btn btn-pricing" onclick="payment(70000, '72,100 Ball (+ 3%)');"><i class="fa fa-cart-plus"></i> Buy</a>
							</div>
						</div>
					</div>
					<!-- Single Table -->
					<div class="col-md-4">
						<div class="single-pricing-table text-center clearfix">
							<!-- Price -->
							<div class="price">
								<span>100,000&#8361;</span>
							</div>
							<!-- Heading -->
							<div class="pricing-table-heading">
								<h2> + 4%</h2>
								<p>104,000 Ball</p>
							</div>
							<!-- Button -->
							<div class="pricing-button">
								<a href="#" class="btn btn-pricing" onclick="payment(100000, '104,000 Ball (+ 4%)');"><i class="fa fa-cart-plus"></i> Buy</a>
							</div>
						</div>
					</div>
					<!-- Single Table -->
					<div class="col-md-4">
						<div class="single-pricing-table text-center clearfix">
							<!-- Price -->
							<div class="price">
								<span>200,000&#8361;</span> 
							</div>
							<!-- Heading -->
							<div class="pricing-table-heading">
								<h2> + 5%</h2>
								<p>210,000 Ball</p>
							</div>
							<!-- Button -->
							<div class="pricing-button" >
								<input type="image" src="./../resources/img/GoldenBall.png" style="display : block; margin : 0 auto; width: 80px; height: 60px" onclick="payment(200000, '210,000 Ball (+ 5%)');">
							</div> 
						</div>   
					</div>
					
				</div>
			</div>
	</section>
	
	
	
	


  

	
				
				
			<!-- / main body -->
	
		</main>
	</div>
	<!-- footer -->
	<%@ include file="./../include/footer.jsp"%>
	<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
	<!-- JAVASCRIPTS -->
	<script src="./../resources/js/jquery.min.js"></script>
	<script src="./../resources/js/jquery.backtotop.js"></script>
	<script src="./../resources/js/jquery.mobilemenu.js"></script>
</body>
</html>