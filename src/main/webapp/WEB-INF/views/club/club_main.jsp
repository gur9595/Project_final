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
<link href="./../resources/css/club.css" rel="stylesheet" /> 
<script>

  $(document).ready( function() {
    
    $('#close').hide();
    $('#close').click(function() {
      $("#contents").html("");
      $('#close').toggle();
      $('html, body').stop().animate({
        scrollTop : $('.target span').offset().top
      });
    });

    $('#contact').click(function() {
      $("#contents").load("contact.html #contact");
      $('html, body').stop().animate({
        scrollTop : $('#contents_target').offset().top
      });
      
      $('#close').show();
      
    });

    $('#edit').click(function() {
      $("#contents").load("edit.html #edit");
      $('html, body').stop().animate({
        scrollTop : $('#contents_target').offset().top
      });

      $('#close').show();
    });
    
    $('#order_tracking').click(function() {
      $("#contents").load("order_tracking.html #order_tracking");
      $('html, body').stop().animate({
        scrollTop : $('#contents_target').offset().top
      });

      $('#close').show();
    });


  });

  // 배송조회
  var company_code = "";
  function companySelect(){
    var company_name = document.getElementById("company");
    var c_code = document.getElementById("c_code");
    company_code = company_name.options[company_name.selectedIndex].value;
  }
  function deliverySearch() {
    var d_num = document.getElementById("delivery_number").value;

    if(company_code == "" || d_num == ""){
      alert("택배회사와 운송장 번호를 입력하세요.");
      return;
    }
    else {
      window.open('https://tracker.delivery/#/' + company_code + '/' + d_num, 'name', 'resizable=no width=700 height=550');
    }
  }

  // 메뉴 줌 인/아웃
  function zoomIn(event) {
    event.target.style.transform = "scale(1.2)";
    event.target.style.zIndex = 0.5;
    event.target.style.transition = "all 0.5s";
  }
  function zoomOut(event) {
    event.target.style.transform = "scale(1)";
    event.target.style.zIndex = 0;
    event.target.style.transition = "all 0.5s";
  }

  // 메뉴로 이동
  function menu_move(){
    $('html, body').stop().animate({
        scrollTop : $('.target span').eq(0).offset().top
    });
  }

</script>
   
</head>
<body id="top"> 
<!--top-->
<%@ include file="./../include/top.jsp"%>
<!--각 페이지 이미지-->
<div class="bgded overlay" style="background-image:url('../images/demo/backgrounds/01.png');">
  <div id="breadcrumb" class="hoc clear"> 
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">Club</a></li>
    </ul>
  </div>
</div>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <div class="content"> 
    
    <div class="site-section first-section">
      <div class="container">
        <a name="target"></a>
        <div class="row mb-5">
          <div class="col-md-12 text-center target" data-aos="fade">
            
          </div>
        </div>

        <div class="row border-responsive">
          
          <div class="col-md-4 col-lg-3 mb-4 mb-lg-4 border-right" data-aos="fade-up" data-aos-delay="">
            <div class="text-center" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)"style="cursor: pointer;">
              <i class='fas fa-search d-block ' style='font-size:62px;'></i>
              <br />
              <h3 class="text-uppercase h4 mb-3">클럽 검색</h3>
            </div>
          </div>

          <div class="col-md-4 col-lg-3 mb-4 mb-lg-4 border-right" data-aos="fade-up" data-aos-delay="100">
            <div class="text-center" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)" style="cursor: pointer;">
              <i class='fas fa-tshirt d-block' style='font-size:62px;'></i>
              <br>              
              <h3 class="text-uppercase h4 mb-3">내 클럽</h3>
            </div>
          </div>
          
          <div class="col-md-4 col-lg-3 mb-4 mb-lg-4 border-right" data-aos="fade-up" data-aos-delay="100">
            <div class="text-center" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)" style="cursor: pointer;">
              <i class='fas fa-pen d-block' style='font-size:62px;'></i>
              <br>              
              <h3 class="text-uppercase h4 mb-3">클럽 생성</h3>
            </div>
          </div>

          <div class="col-md-4 col-lg-3 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="200">
            <div class="text-center" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)"style="cursor: pointer;">
              <i class='fas fa-trophy d-block' style='font-size:62px'></i>
              <br>
              <h3 class="text-uppercase h4 mb-3">클럽 랭킹</h3>
              <span style="cursor: pointer;" class="link" id="basket">구별 랭킹</span> / 
              <span style="cursor: pointer;" class="link" id="order">전체 랭킹</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <br /><br />
    
    <!-- 메뉴클릭 시 화면이동할 부분 -->
    <div id="contents_target" style="height: 500px;"></div> 
    <!-- 메뉴클릭 시 내용 출력 부분 -->
    <div class="mt-0" id="contents"></div>
    	
    	
    	
    </div>
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- footer -->
<%@ include file="./../include/footer.jsp"%>
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src="./../resources/js/jquery.min.js"></script>
<script src="./../resources/js/jquery.backtotop.js"></script>
<script src="./../resources/js/jquery.mobilemenu.js"></script>
<script src="./../resources/js/choices.js"></script>
</body>
</html>