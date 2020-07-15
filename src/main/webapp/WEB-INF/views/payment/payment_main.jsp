<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>B-PRO</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

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

<link href="./../resources/css/layout.css" rel="stylesheet"
	type="text/css" media="all">
<link rel="stylesheet" href="./../resources/css/payment_css.css">
<link rel="stylesheet" href="./../resources/css/payment_css2.css">

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
					<p>고르시오</p>
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
								<h2>서비스 1%</h2>
								<p>10,000Ball</p>
							</div>
							<!-- Button -->
							<div class="pricing-button">
								<a href="#" class="btn btn-pricing"><i class="fa fa-cart-plus"></i> Purchase</a>
							</div>
						</div>
					</div>
					<!-- Single Table -->
					<div class="col-md-4">
						<div class="single-pricing-table text-center clearfix">
							<!-- Price -->
							<div class="price">
								<span>$89</span>
							</div>
							<!-- Heading -->
							<div class="pricing-table-heading">
								<h2>Frammer</h2>
								<p>Space and light and order, those are<br>the things that men.</p>
							</div>
							<!-- Button -->
							<div class="pricing-button">
								<a href="#" class="btn btn-pricing"><i class="fa fa-cart-plus"></i> Purchase</a>
							</div>
						</div>
					</div>
					<!-- Single Table -->
					<div class="col-md-4">
						<div class="single-pricing-table text-center clearfix">
							<!-- Price -->
							<div class="price">
								<span>$99</span>
							</div>
							<!-- Heading -->
							<div class="pricing-table-heading">
								<h2>Trimmer</h2>
								<p>Space and light and order, those are<br>the things that men.</p>
							</div>
							<!-- Button -->
							<div class="pricing-button">
								<a href="#" class="btn btn-pricing"><i class="fa fa-cart-plus"></i> Purchase</a>
							</div>
						</div>
					</div>
					<!-- Credits -->
					<div class="design-credit text-center col-md-12 mt-40">
						<p>This pricing table was originaly designed by <a href="https://dribbble.com/shots/2316185-Slide-53" target="_blank">Vladimir Kudinov</a></p>
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