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

<style>
.divborder {
	border: 1px solid black;	
}

.side_bar {
	background-color: black; 
	padding: 30px; 
	width: 175px; 
	height: auto; 
	cursor: pointer; 
	font-size: 20px; 
	color: white;	
}

#title{
	font-size: 35px; 
	padding: 40px; 
	background-color: black; 
	color: yellow;
}
</style>
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
			<div class="content">
				<div class="container">
					<div class="row">
					
						<!-- 영역 1. 사이드바 -->
						<div class="divborder col-2" style="height:5000px; ">
						
							<!-- 검색창 -->						
							<div class="side_menu" style="position: fixed; ">	
								<div class="row" style="border-color:black; ">						
									<input type="text" placeholder="Search" style="width:160px; margin-left: 0px; text-align: center; ">
										<button class="btn btn-success" type="submit" style="width:50px; background-color: black;">검색</button>
									</input>
								</div>&nbsp							
								<div class="side_bar" onclick="location.href='./../market/marketMain.do';">PRODUCTS</div> &nbsp							
								<div class="side_bar" onclick="location.href='./../market/marketUniform.do';">CUSTOM-UNIFORM</div> &nbsp
								<div class="side_bar" onclick="location.href='./../market/marketRental.do';">RENTAL</div> &nbsp
								<div class="side_bar" onclick="location.href='./../market/marketBasket.do';">SHOPPING BASKET</div>
							</div>
						</div>
						<!-------------------------------------------------------------------------------------->

						<!-- 영역 2. 공란 -->
						<div class="divborder col-1" style="height:px; ">
						</div>
						<!-------------------------------------------------------------------------------------->

						<!-- 영역 3. 장바구니 -->
						<div class="divborder col-9" style="height:px; ">
						
						<!-- 미리보기 바닥부분 -->
							<div class="container" style="width:100%;">  
								<ul class="nav nav-tabs" role="tablist">
									<li class="nav-item">
										<a class="nav-link active" data-toggle="tab" href="#home">장바구니</a>
									</li>
									
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#menu1">주문/결제</a>
									</li>
									
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#menu2">주문완료</a>
									</li>									
								</ul>

							  	<!-- Tab panes -->
							  	<div class="tab-content" style="width:100%;">
									<div id="home" class="container tab-pane active"><br>
										<div id="title">장바구니</div>
										<br /><br /><br /><br />									
											<table border=1>
												<tr>
													<td style="width: 10px"></td>
													<td>상품이미지</td>
													<td>상품정보 및 수량</td>										
													<td style="width: 150px;">금액 및 마일리지</td>
													<td style="width: 80px;">배송비</td>
												</tr>
												
											
												<tr>
													<td><input type="checkbox" /></td>													
													<td style="width: 200px">
														<div style="display: inline-block; ">
														    <img id="image" src="./../resources/img/best/001.u20 월드컵 트로피.png"
														        style="width: 200px; height: 200px; border: 5px solid black; ">
													    </div><br /><br />
													</td>
													<td>U-20 트로피 </td>
													<td><strike>180,000원</strike> <br /> 100,000원 <br /> (1000) 마일리지</td>
													<td>무료</td>
												</tr>
											
											</table>
										
											
											
											
											
											
											
											
											
											
											
											<!-- 장바구니 버튼부분 -->						
											<div class="row">
												<button type="button" class="btn btn-outline-danger" style="margin: 13px; font-size: 20px;">주문하기</button>
												<button type="button" class="btn btn-outline-dark" style="margin: 13px; font-size: 20px;">계속 쇼핑하기</button>
												<button type="button" class="btn btn-outline-dark"style="margin: 13px; font-size: 20px;">장바구니 비우기</button>
												<button type="button" class="btn btn-outline-dark"style="margin: 13px; font-size: 20px;">견적서 출력</button>
											</div>							
											<!-- end of 장바구니 버튼 -->	
										
									</div>
									<!-- end of 장바구니 패널 -->
									
									<div id="menu1" class="container tab-pane fade"><br>
										<div id="title">주문/결제</div>
									</div>
									<!-- end of 주문/결제 패널 -->
									
									<div id="menu2" class="container tab-pane fade"><br>
										<div id="title">주문완료</div>
									</div>
									<!-- end of 주문완료 패널 -->
								</div>						
							</div>
						
							
								
											
						</div>
						<!-- end of 영역3 -->
						
						
						
						
						
						
						
						
						
						
						
						
						
					</div>
				</div>
			</div> <!-- end of content -->
			
        </div><!-- //basket-wrapper -->
    </div>

</section>










</body>





<!-- / main body -->
<div class="clear"></div>
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