<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8" />
    <script src="http://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <script src="http://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
    <script>
    (function() {
        var IMP = window.IMP;
        var code = "imp44765322";  // FIXME: 가맹점 식별코드
        IMP.init(code);

        IMP.request_pay({
		    pg : 'inicis', // version 1.1.0부터 지원.
		    pay_method :'phone',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : '주문명:결제테스트',
		    amount : 100,
		    buyer_email : 'iamport@siot.do',
		    buyer_name : '구매자이름',
		    buyer_tel : '010-1234-5678',
		    buyer_addr : '서울특별시 강남구 삼성동',
		    buyer_postcode : '123-456',
		}, 
		function(rsp) {
		    if ( rsp.success ) {
		        var msg = '결제가 완료되었습니다. ';
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;
		        location.href  ="http://localhost:8282/project_final"; // 성공시 이동할 주소
		    } 
		    else {
		        var msg = '결제에 실패하였습니다. ';
		        msg += '에러내용 : ' + rsp.error_msg;	
		        location.href  ="http://localhost:8282/project_final/payment/paymentMain.do"; // 실패시 이동할 주소
		    }
		    alert(msg);		 
		});
	})();    
    </script>
    
</head>

<body>   
	<img id="image" src="./../resources/img/bg000.png" style="width: 1730px; height: 860px;">
</body>
</html>