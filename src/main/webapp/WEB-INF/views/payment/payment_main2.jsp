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
<link rel="stylesheet" href="./../resources/css/payment.css">

<!-- 결제 api ---------------------------------------------------------------------------------------------->
<script src="http://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script src="http://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>

<script>

	function payment(price_cash, price_charge) {
        var IMP = window.IMP;
        var code = "imp44765322";  // FIXME: 가맹점 식별코드
        
        var cash = price_cash;
        var charge = price_charge;
      
        IMP.init(code);

        IMP.request_pay({
		    pg : 'inicis', // version 1.1.0부터 지원.
		    pay_method :'phone',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : charge,
		    amount : cash,
		    buyer_email : 'iamport@siot.do',
		    buyer_name : '구매자이름',
		    buyer_tel : '010-1234-5678',
		    buyer_addr : '서울특별시 강남구 삼성동',
		    buyer_postcode : '123-456',
		    m_redirect_url : 'www.naver.com'
		}, 
		function(rsp) {
		    if ( rsp.success ) {
		        var msg = '결제가 완료되었습니다. ';
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;		       
		    } 
		    else {
		        var msg = '결제에 실패하였습니다. ';
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
				
				<!-- 플랩 -->
	
	
				<div class="contentWrapper w480">
    <div class="hmWrap charge">
      <div class="headMessage">
        <h2>미리 충전하고<br>더욱 편리하게!</h2>
      </div>
      <div class="myCash">
        <div class="cvWrap">
          <span class="cardLabel">나의 캐시 잔액</span>
          <p class="cardValue">0원</p>
        </div>
        <!--
        <a href="/cash/charge/history" class="btn olBtn">충전 내역 보기</a>-->
      </div>
    </div>
    <div class="chargeSelectWrap">
      <div class="cashSelect">
        <label>충전할 금액을 선택하세요</label>
        <div class="chargeBtn wback" id="chargeSelect" style="cursor:pointer" >
          <input id="selected_item_id" type="hidden" value=8>
          <span id="selected_item_price">0원</span>
        </div>
      </div>
      
      <div class="cashSelect">
        <label>입금자명</label>
        

        
        <input id="depositor" type="text" name="name" placeholder="입금자 이름" value="">
        <p><strong>위에 입력한 입금자명으로 정확한 금액을 입금해주세요</strong><br>현재는 무통장 입금만 가능합니다</p>
      </div>
      
      <div class="btnWrap" onclick="pressedSubmit()" style="cursor:pointer">
        <div class="btn halfSubmit">충전 신청</div>
      </div>
    </div>
  </div>
  <div class="modal" id="modalWrap">
    <div class="modalContent modalCharge">
      <div class="modalContentInner">
        <ul class="chargeList">
          <span>충전할 금액을 선택하세요</span>

          
            <li class=" cashItem" onclick="payment(10, 10000);">1,000원</li>
          
            <li class=" cashItem" onclick="pressedCashItem(3, '5,000원')">5,000원</li>
          
            <li class=" cashItem" onclick="pressedCashItem(5, '10,000원')">10,000원</li>
          
            <li class=" cashItem" onclick="pressedCashItem(14, '20,000원')">20,000원</li>
          
            <li class=" cashItem" onclick="pressedCashItem(8, '30,000원')">30,000원</li>
          
            <li class=" cashItem" onclick="pressedCashItem(15, '40,000원')">40,000원</li>
          
            <li class=" cashItem" onclick="pressedCashItem(9, '50,000원')">50,000원</li>
          
            <li class=" cashItem" onclick="pressedCashItem(10, '100,000원')">100,000원</li>
          
            <li class=" cashItem" onclick="pressedCashItem(16, '500,000원')">500,000원</li>
          

          <!-- 
            <li class="cashItem" id="closeModal" onclick="pressedCashItem(1, '1,000원')">
              <label for="1" class="checkLabel">
                <input type="radio" name="#" class="checkbox" id="1">
                <p>1,000원</p>
              </label>
            </li>
          
            <li class="cashItem" id="closeModal" onclick="pressedCashItem(2, '2,000원')">
              <label for="2" class="checkLabel">
                <input type="radio" name="#" class="checkbox" id="2">
                <p>2,000원</p>
              </label>
            </li>
          
            <li class="cashItem" id="closeModal" onclick="pressedCashItem(19, '3,000원')">
              <label for="19" class="checkLabel">
                <input type="radio" name="#" class="checkbox" id="19">
                <p>3,000원</p>
              </label>
            </li>
          
            <li class="cashItem" id="closeModal" onclick="pressedCashItem(20, '4,000원')">
              <label for="20" class="checkLabel">
                <input type="radio" name="#" class="checkbox" id="20">
                <p>4,000원</p>
              </label>
            </li>
          
            <li class="cashItem" id="closeModal" onclick="pressedCashItem(3, '5,000원')">
              <label for="3" class="checkLabel">
                <input type="radio" name="#" class="checkbox" id="3">
                <p>5,000원</p>
              </label>
            </li>
          
            <li class="cashItem" id="closeModal" onclick="pressedCashItem(18, '7,000원')">
              <label for="18" class="checkLabel">
                <input type="radio" name="#" class="checkbox" id="18">
                <p>7,000원</p>
              </label>
            </li>
          
            <li class="cashItem" id="closeModal" onclick="pressedCashItem(4, '8,000원')">
              <label for="4" class="checkLabel">
                <input type="radio" name="#" class="checkbox" id="4">
                <p>8,000원</p>
              </label>
            </li>
          
            <li class="cashItem" id="closeModal" onclick="pressedCashItem(21, '9,000원')">
              <label for="21" class="checkLabel">
                <input type="radio" name="#" class="checkbox" id="21">
                <p>9,000원</p>
              </label>
            </li>
          
            <li class="cashItem" id="closeModal" onclick="pressedCashItem(5, '10,000원')">
              <label for="5" class="checkLabel">
                <input type="radio" name="#" class="checkbox" id="5">
                <p>10,000원</p>
              </label>
            </li>
          
            <li class="cashItem" id="closeModal" onclick="pressedCashItem(14, '20,000원')">
              <label for="14" class="checkLabel">
                <input type="radio" name="#" class="checkbox" id="14">
                <p>20,000원</p>
              </label>
            </li>
          
            <li class="cashItem" id="closeModal" onclick="pressedCashItem(8, '30,000원')">
              <label for="8" class="checkLabel">
                <input type="radio" name="#" class="checkbox" id="8">
                <p>30,000원</p>
              </label>
            </li>
          
            <li class="cashItem" id="closeModal" onclick="pressedCashItem(15, '40,000원')">
              <label for="15" class="checkLabel">
                <input type="radio" name="#" class="checkbox" id="15">
                <p>40,000원</p>
              </label>
            </li>
          
            <li class="cashItem" id="closeModal" onclick="pressedCashItem(9, '50,000원')">
              <label for="9" class="checkLabel">
                <input type="radio" name="#" class="checkbox" id="9">
                <p>50,000원</p>
              </label>
            </li>
          
            <li class="cashItem" id="closeModal" onclick="pressedCashItem(13, '70,000원')">
              <label for="13" class="checkLabel">
                <input type="radio" name="#" class="checkbox" id="13">
                <p>70,000원</p>
              </label>
            </li>
          
            <li class="cashItem" id="closeModal" onclick="pressedCashItem(10, '100,000원')">
              <label for="10" class="checkLabel">
                <input type="radio" name="#" class="checkbox" id="10">
                <p>100,000원</p>
              </label>
            </li>
          
            <li class="cashItem" id="closeModal" onclick="pressedCashItem(16, '500,000원')">
              <label for="16" class="checkLabel">
                <input type="radio" name="#" class="checkbox" id="16">
                <p>500,000원</p>
              </label>
            </li>
           -->
        </ul>
      </div>
    </div>
  </div>
  
  <script type="text/javascript">
    var modal = document.getElementById("modalWrap");
    // var openModal = document.getElementById("chargeSelect");
    // var closeModal = document.getElementById("closeModal");
    window.onclick = function(event) {
      if (event.target == modal) {
        modal.style.display = "none";
        hiddenScroll.style.overflow = "inherit";
      }
    }

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

    function pressedCashItem(item_id, item_price) {

      $("#selected_item_price").text(item_price)
      $("#selected_item_id").val(item_id)
      closeModal()
    }

    function pressedSubmit() {

      var cash_item_id = $("#selected_item_id").val()
      var depositor = $("#depositor").val()
      var currentCashItemPrice = document.getElementById('selected_item_price').innerHTML
      console.log(currentCashItemPrice)

      if (depositor == '') {
        alert('입금자명을 입력해주세요!')
        return
      }
      var infoConfirm = confirm('잠깐! 입금자명과 금액이 정확한가요?\n\n입금자명: '+depositor+'\n충전금액: '+currentCashItemPrice);
      if (infoConfirm == true) {
        pressedCharge(cash_item_id, depositor);
      }
    }
    function pressedCharge(cash_item_id, depositor) {
      $.ajax({
        type: "POST",
        url: "/cash/charge/request",
        data: {
          'cash_item_id': cash_item_id,
          'depositor': depositor,
          'csrfmiddlewaretoken': 'C28442e17yE9fHPaQzu7qHTotpixJiCklYOn8E4wlSQghU89UKMGEI9z66Ltqoxw'
        },
        dataType: "json",
        success: function(response) {
          location.href = "/cash/charge/history"
        }
      })

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