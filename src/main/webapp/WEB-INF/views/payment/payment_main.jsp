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
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<link href="./../resources/css/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="./../resources/css/payment_css.css">
<link rel="stylesheet" href="./../resources/css/payment_css2.css">
<link rel="stylesheet" href="./../resources/css/payment.css">

<!-- 결제 api ---------------------------------------------------------------------------------------------->
<script src="http://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script src="http://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>  

<script>

	function payment(price_cash, price_charge) {
        var IMP = window.IMP;
        var code = "imp44765322";  // FIXME: 가맹점 식별코드
        
        var cash = price_cash; // 구매가격
        var charge = price_charge; // 상품명(입금될 마일리지)
      
        IMP.init(code);

        IMP.request_pay({ // param : 결제요청에 필요한 정보를 담는다.
		    pg : 'inicis', // version 1.1.0부터 지원.
		    pay_method :'phone', // 발표시 'card'로 교체
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : charge + "	Ball", // 입금될 마일리지
		    amount : cash, // 결제 금액
		    buyer_email : ' - Option -		  Press your e_mail '
		    // m_redirect_url : 'www.naver.com'
		}, 
		function(rsp) { // callback : 고객이 결제를 완료한 후 실행되는 함수
		    if ( rsp.success ) {
		        var msg = '결제가 완료되었습니다. ';
		        msg += '\n고유ID : ' + rsp.imp_uid;
		        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
		        msg += '\n주문 상품명 : ' + charge + "	Ball";
		        msg += '\n결제 금액 : ' + rsp.paid_amount + "	원";
		        msg += '\n카드 승인번호 : ' + rsp.apply_num;	
		        
		        var result = document.getElementById("selected_item_id").value;
		       	result = rsp.name;
		       	
		   		location.href="?cs_charge="+rsp.paid_amount;
		        console.log(rsp.name);		       	
		       	console.log(result);
		       	
		       	location.href="./paymentDeposit.do?cs_charge=" + charge;
		    } 
		    else { // 결제 실패시 로직
		        var msg = '====== 결제에 실패하였습니다. ======';
		    	msg += '\n에러내용 : ' + rsp.error_msg;		    	
		    }		    	
			alert(msg);	 
			
			// 새로고침
			location.reload();
		});      
	} 
	
</script>
<!-- / 결제 api --------------------------------------------------------------------------------------------------------->

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
				
		<!-- 플랩 -->
		<div class="contentWrapper w480">
		
		<!-- 메인박스 윗 부분 -->
		<div class="hmWrap charge">
   			<div class="headMessage">
   				<h2>미리 충전하고<br>더욱 편리하게!</h2>
   			</div>
      
			<div class="myCash">
        		<div class="cvWrap">
          			<span class="cardLabel" style="margin-left: 270px; font-size: 15px;"><b>나의 Ball 보유량</b></span>
          				<%-- <p class="cardValue">${cash } Ball</p> --%>
          				<%-- <span class="cardLabel1212" id="cash" name="cash" value="${cash }" /> --%>
          			<input type="text" readonly="readonly" style="width:150px; margin-left: 250px; text-align: center;"  value="${cash}" />
        		</div> 		
		        <!-- <a href="./../member/mypageMain.do" class="btn olBtn">충전 내역 보기</a> -->
      		</div>
		</div>
      	
      	<!-- 메인박스 -->
		<div class="chargeSelectWrap">
      		<div class="cashSelect">
        		<label>충전할 금액을 선택하세요</label>
        		<div class="chargeBtn wback" id="chargeSelect" style="cursor:pointer" >
          			<input id="selected_item_id" type="hidden" value=0>
          			<span id="selected_item_price">0원</span>
        		</div>
      		</div>
      
      		<div class="cashSelect">
        		<label>입금자명</label>
        		<!-- <input id="depositor" type="text" name="name" placeholder="입금자 이름" value=""> -->
        		
        		<input type="text" id="depositor" name="name" value="${m_id }" />
        		<p><strong>위에 입력한 입금자명으로 정확한 금액을 입금해주세요</strong><br>B-Pro Ball 충전</p>
      		</div>
      
			<!-- 충전 절차 1 -->
     		<div class="btnWrap" onclick="pressedSubmit()" style="cursor:pointer">
        		<div class="btn halfSubmit">BP_Ball 충전 신청</div>
      		</div>
    	<!-- / 메인박스 -->
    	</div>
    	<!-- / 플랩 -->
  		</div>
  		
  		<!-- 모달창 select박스 -->
  		<div class="modal" id="modalWrap">
    		<div class="modalContent modalCharge">
      			<div class="modalContentInner">
        			<ul class="chargeList">
          				<span>충전할 금액을 선택하세요</span>
						<!-- (hidden, 충전금액=현금) UI현금 = > (?, ?) -->
			            <li class=" cashItem" onclick="pressedCashItem(10, 1000)">1,000원 <br /> (1,000 Ball)</li>
			            <li class=" cashItem" onclick="pressedCashItem(50, 5000)">5,000원 <br /> (5,000 Ball)</li>
			            <li class=" cashItem" onclick="pressedCashItem(100, 10000)">10,000원 <br /> (10,000 Ball)</li>
			            <li class=" cashItem" onclick="pressedCashItem(300, 30300)">30,000원 <br /> (30,300 Ball / + 1%)</li>
			            <li class=" cashItem" onclick="pressedCashItem(500, 51000)">50,000원 <br /> (51,000 Ball / + 2%)</li>
			            <li class=" cashItem" onclick="pressedCashItem(700, 72100)">70,000원 <br /> (72,100 Ball / + 3%)</li>
			            <li class=" cashItem" onclick="pressedCashItem(1000, 104000)">100,000원 <br /> (104,000 Ball / + 4%)</li>
			            <li class=" cashItem" onclick="pressedCashItem(2000, 210000)">200,000원 <br /> (210,000 Ball / + 5%)</li>
			            <li class=" cashItem" onclick="pressedCashItem(3000, 318000)">300,000원 <br /> (318,000 Ball / + 6%)</li>
        			</ul>
      			</div>
    		</div>
		</div>

<!-- 
	overflow 속성 (overflow : hidden, scroll)
		- 특정영역을 숨길 때 사용한다. 
			(내부의 요소가 부모의 범위를 벗어날 때 어떻게 처리할 지 지정하는 속성)
		- 속성 1. hidden : 영역을 벗어나는 부분은 없애버린다.
		- 속성 2. scroll : 영역을 벗어나는 부분은 스크롤로 처리한다.
 -->
<script type="text/javascript">

   	var modal = document.getElementById("modalWrap");
   
   	/* 
   		openModal은 주석처리 해도 되고 안해도 되고
   		closeModal은 무조건 주석처리.
   	*/
   	// var openModal = document.getElementById("chargeSelect");
   	// var closeModal = document.getElementById("closeModal");
    	
   	/* 주석처리 해도 되는거 같다. */
	window.onclick = function(event) {
    	if (event.target == modal) {
        	modal.style.display = "none";
        	hiddenScroll.style.overflow = "inherit";
      	}
    }

   	/* 절대 주석처리 하지 말 것. */
    var hiddenScroll = document.body;
   	
    document.getElementById("chargeSelect").onclick = function() {
    	modal.style.display = "block";
    	hiddenScroll.style.overflow = "hidden";
    }

    document.getElementById("closeModal").onclick = function() {
    	closeModal()
    }
    
    function closeModal() {
    	modal.style.display = "none";
      	hiddenScroll.style.overflow = "inherit";
    }

    /* 메인박스에서 충전금액 select시 호출되는 함수 */
    function pressedCashItem(item_price, item_id) {
      	$("#selected_item_price").text(item_price)
      	$("#selected_item_id").val(item_id)
    	closeModal()
    }

    /* 충전 절차 2 (alert창 띄우고 결제api 호출(= payment()) 한다.) */
    function pressedSubmit() { // 충전 신청 눌렀을때 호출되는 함수
		var depositor = $("#depositor").val() // depositor = 입금자명
      	var currentCashItemPrice = document.getElementById('selected_item_price').innerHTML
		var cash_item_id = $("#selected_item_id").val()
      	console.log(currentCashItemPrice)

      	// 만약 입금자명이 공란이면
      	if (depositor == '') {
        	alert('입금자명을 입력해주세요!')
        	return
      	}
      
    	// 입력창을 모두 채웠을 시 
    	var infoConfirm = confirm('잠깐! 입금자명과 금액이 정확한가요?\n\n입금자명: '+depositor+'\n충전 Ball: '+cash_item_id+'\n결제 금액: '+currentCashItemPrice);
      	
    	if (infoConfirm == true) {
			payment(currentCashItemPrice, cash_item_id);
      	}
    }    
    
</script>

		<!-- / main body -->
		</main>
	</div>
	<!-- footer -->
	<%@ include file="./../include/footer.jsp"%>
	<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
	<!-- JAVASCRIPTS -->
	<script src="./../resources/js/jquery.min.js"></script>
	<script src="./../resources/js/jquery.backtotop.js"></script>
</body>
</html>