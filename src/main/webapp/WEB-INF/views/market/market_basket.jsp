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








<link rel="dns-prefetch" href="//pics.auction.co.kr">
<link rel="dns-prefetch" href="//script.auction.co.kr">
<link rel="dns-prefetch" href="//image.auction.co.kr">


<!--- favicon --->
<link rel="apple-touch-icon" sizes="57x57" href="//pics.auction.co.kr/common/static/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="//pics.auction.co.kr/common/static/apple-touch-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="//pics.auction.co.kr/common/static/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="//pics.au ction.co.kr/common/static/apple-touch-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
      href="//pics.auction.co.kr/common/static/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
      href="//pics.auction.co.kr/common/static/apple-touch-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
      href="//pics.auction.co.kr/common/static/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
      href="//pics.auction.co.kr/common/static/apple-touch-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
      href="//pics.auction.co.kr/common/static/apple-touch-icon-180x180.png">
<link rel="icon" sizes="16x16" type="image/png" href="//pics.auction.co.kr/common/static/favicon-16x16.png">
<link rel="icon" sizes="32x32" type="image/png" href="//pics.auction.co.kr/common/static/favicon-32x32.png">
<link rel="icon" sizes="96x96" type="image/png" href="//pics.auction.co.kr/common/static/favicon-96x96.png">
<link rel="icon" sizes="192x192" type="image/png"
      href="//pics.auction.co.kr/common/static/android-icon-192x192.png">

  <link rel="stylesheet" type="text/css" href="//script.auction.co.kr/pc/style/css/common.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="//script.auction.co.kr/pc/style/css/common/ui/common.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="//script.auction.co.kr/pc/style/css/application/cart/app.css" media="screen" />
  <script type="text/javascript" src="//script.auction.co.kr/common/header_common.js"></script>
  <script type="text/javascript" src="//script.auction.co.kr/common/jquery.js"></script>
  <script type="text/javascript" src="//script.auction.co.kr/pc/style/js/common.js" charset="euc-kr"></script>
  <script type="text/javascript" src="//script.auction.co.kr/pc/style/js/ui.header.js"></script>
  <script type="text/javascript" src="//script.auction.co.kr/pc/style/js/common/lib/bodymovin.js"></script>
  <script type="text/javascript" src="//script.auction.co.kr/pc/style/js/application/cart/app.js"></script>
  <script type="text/javascript" src="//script.auction.co.kr/common/pds_iac.js"></script>
  <!--[if lt IE 9]>
  <script>
    AUCTION.UI.COMMON.renderOldIeUpdateNotiLayer({
      targetElement: $('body'), // append할 대상 엘리먼트
      cookieName: 'auction_old_browser_user_key', // 사용할 쿠키 명
      hideTerm: 6, // 오늘 + hideTerm 일 이후 재노출
      maxIeVersion: 8, // IE 분기 버전, 해당 값 이하로 분기처리
      landingUrl: 'https://support.microsoft.com/ko-kr/help/17621/internet-explorer-downloads' // update URL
    });
  </script>
  <![endif]-->







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

						<!-- 영역 2. 미리보기 -->
						<div class="divborder col-10" style="height:px; ">
						
						
						
						
						
						
						
					




<div id="skip-navigation">
  <strong class="for-a11y">스킵 네비게이션</strong>
  <ul>
    <li><a href="#">검색창 바로가기</a></li>
    <li><a href="#">메뉴 바로가기</a></li>
    <li><a href="#container">본문 바로가기</a></li>
  </ul>
</div>
<div id="container">
</div>
<div id="popup">
</div>


<script type="text/javascript">
  window.onerror = function (message, url, line, column, error) {
    if (donotLog(message)) {
      return false
    }

    try {
      column = column || (window.event && window.event.errorCharacter)
      var stack = error && error.stack
      var xhr = createXhr()
      if (xhr) {
        xhr.open('POST', '/ko/cart/error/script', true)
        xhr.setRequestHeader('Content-Type', 'application/json')
        xhr.send(JSON.stringify({
          message: message || '',
          url: url || '',
          line: line || '',
          column: column || '',
          stack: stack || ''
        }))
      }
      return true
    } catch (e) {
      return true
    }
  }

  function donotLog (message) {
    const donotLogStrings = [
      /OnAppRestart/,
      /Script error./,
      /checkDomStatus/,
      /montelenaPageViewForApp/,
      /setTopMarginDelegateForApp/
    ]

    function donotLogTest(reg) {
      return reg.test(message)
    }

    return donotLogStrings.findIndex(donotLogTest) !== -1
  }

  function createXhr () {
    try { return new XMLHttpRequest() } catch (err) {}
    try { return new ActiveXObject('Msxml2.XMLHTTP.6.0') } catch (err) {}
    try { return new ActiveXObject('Msxml2.XMLHTTP.3.0') } catch (err) {}
    try { return new ActiveXObject('Msxml2.XMLHTTP') } catch (err) {}
    try { return new ActiveXObject('Microsoft.XMLHTTP') } catch (err) {}
    return null
  }
</script>



<script type="text/javascript">
  function getInitialState () {
    return JSON.parse(JSON.stringify({"cart":{"cartUnitList":[{"cartUnitId":334407733,"cartUnitType":"Normal","quantity":1,"partnershipCode":null,"unableOrderReasonCode":null,"unableOrderData":null,"unableOrderType":null,"unusableCouponType":"UNKNOWN","shippingPolicyId":2047158251,"bundleKey":"B752041839","shippingPolicyKey":"2047158251","branch":{"branchShopType":null,"branchCode":null,"branchName":null,"branchAdditionalPrice":0},"item":{"itemNo":"B752041839","itemName":"프리미엄 천연소가죽 담배케이스 일반/슬림 자석뚜껑","itemImageUrl":"https://simage.auction.co.kr/itemimage/1b/45/f5/1b45f57b87.jpg","minBuyQty":0,"options":[{"optionNo":22940407250,"optionType":"Combination","optionPrice":0,"calculationUnit":"","textValue":null,"firstCalculativeValue":0,"secondCalculativeValue":0,"optionEntries":[{"name":"담배형","value":"슬림형"},{"name":"색상","value":"브라운"}]}],"additions":[],"bsd":{"startDate":"","endDate":"","bigSmile":false},"largeCategoryCode":"16000000","mediumCategoryCode":"16670000","smallCategoryCode":"16670800","shopKindCode1":null,"shopKindCode2":null,"shopKindCode3":null,"itemSellPrice":12800,"buyMileageRate":0,"shippingWeight":0,"transPolicyNo":19616,"isECoupon":false,"isUsedItem":false,"isIncomeDuty":false},"seller":{"sellerKey":"wizwizl","sellerName":"(주)위젤","miniShopName":"위즈위즐","shopLink":"wizwizl"},"discounts":[{"discountType":"Ebay","discountPrice":520}],"extraDiscounts":[],"appliedCouponIssueNoes":[],"insertDateISO":"2020-06-27T08:05:56.427216Z","isBuyAvailable":true,"isCouponUsable":true,"isNeedAuthentication":false}],"currentCartTab":"All","couponApplications":{},"availableCoupons":[],"availableExtraDiscounts":[{"cartUnitId":334407733,"discountList":[]}],"couponApplicableByItemList":[{"itemNo":"B752041839","isCouponApplicable":true,"isCached":false}],"transPolicyInfoByItemList":[{"itemNo":"B752041839","displayV1":"","displayV2":"","displayV3":"","displayV4":""}]},"buyer":{"isLogin":true,"buyerName":"진병찬","loginId":"slayerjjin","isMember":true,"isSmileClubMember":false,"smileClubMemberType":"S0","isBusinessBuyer":false,"address":"서울특별시 동작구 노량진동 221-3 태영아트빌","detailAddress":"아모르빌고시텔 103호","zipCode":"06926","defaultBranchAddress":{"alias":null,"receiverName":null,"address":null,"detailAddress":null,"zipCode":null},"isSimpleJoinForeigner":false,"isSimpleMember":false},"ui":{"cartUnitQtyLoading":[],"isMobile":false,"isKorean":true,"layers":[],"isApp":false,"currencyData":{"currencyCode":"KRW","symbol":"￦","rate":1},"languageCode":"ko","tenantId":"auction"},"shipping":{"canUseOverseaShipping":false,"canUseOverseaShippingSite":false,"shippingBundles":[{"bundleKey":"B752041839","shippingFee":2500,"isMaxCharge":false}],"shippingPolicies":[{"shippingPolicyKey":"2047158251","shippingMethodType":"General","shippingChargePayType":"PaymentInAdvance","shippingFee":2500,"conditionalFreeBasisCost":0,"isQuantityShippingFee":false,"isConditionalFree":false}],"shippingCountryCode":"KR"}}))
  }

  function getApiPrefix () {
    return '/ko/cart/api'
  }
</script>

<!--[if lt IE 9]>
<script type="text/javascript" src="/app/js/cart.auction.pc.ko.ie8.bundle.js?bundleKey=1593729643091"></script>
<![endif]-->
<![if (!IE)|(gte IE 9)]>
<script type="text/javascript" src="/app/js/cart.auction.pc.ko.bundle.js?bundleKey=1593729643091"></script>
<![endif]-->

<script type="text/javascript" src="//script.auction.co.kr/common/footer.js"></script>
<script type="text/javascript">
  try {
    var mobileUrl = location.href.toLowerCase().replace(/(ko|en|jp|cn)(-(m))?/, '$1-m')
    uaControl.setMobileVersionUrl(mobileUrl)
  } catch (e) {
    console.error(e)
  }
</script>
		
						
						
						
							
							
							
							
							<div id="wrap">
		<%@ include file="../include/top.jsp" %>

		<img src="../images/market/sub_image.jpg" id="main_visual" />

		<div class="contents_box">
			<div class="left_contents">
				
				<%@ include file = "../include/market_leftmenu.jsp" %>
			</div>
			<div class="right_contents">
				<div class="top_title">
					<img src="../images/market/sub01_title.gif" alt="수아밀 제품 주문" class="con_title" />
					<p class="location"><img src="../images/center/house.gif" />&nbsp;&nbsp;열린장터&nbsp;>&nbsp;수아밀 제품 주문<p>
				</div>
				<table cellpadding="0" cellspacing="0" border="0" class="basket_list">
					<colgroup>
						<col width="20%" />
						<col width="*" />
						<col width="20%" />
						<col width="15%" />
						<col width="10%" />
						<col width="15%" />
					</colgroup>
					<thead>
						<tr>
							<th>이미지</th>
							<th>상품명</th>
							<th>판매가</th>
							<th>적립금</th>
							<th>수량</th>
							<th>합계</th>
						</tr>
					</thead>
					<tbody>
					<%
					
					String path="";
					int allTotal = 0;

					for (BasketDTO dto : bbs) {
						
						allTotal += dto.getTotal();
						
						path = "../images/market/"+ dto.getImage();

					%>
						<tr>
							<td><img src="<%=path %>" width="50" height="50"/></td>
							<td><%=dto.getName() %></td>
							<td><%=dto.getPrice() %>원</td>
							<td><img src="../images/market/j_icon.gif" />&nbsp;<%=dto.getMileage() %></td>
							<td><input type="number" name="qty" value="<%=dto.getQty() %>" class="basket_num" readonly/></td>
							<td><span><%=dto.getTotal() %><span></td>
						</tr>
					<% } %>
					</tbody>
				</table>
				<p class="basket_text">총액 : <span class="money"><%=allTotal %></span><br /><br /><a href="sub01.jsp"><img src="../images/market/basket_btn01.gif" /></a>&nbsp;<a href="basket02.jsp"><img src="../images/market/basket_btn02.gif" /></a></p>
			</div>
		</div>
		<%@ include file="../include/quick.jsp" %>
	</div>
							
							
							
							
							
							
							
						</div>



















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