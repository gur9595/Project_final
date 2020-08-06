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
</head>
<body id="top">
<!--top-->
<%@ include file="./../include/top.jsp"%>
<!--각 페이지 이미지-->
<div class="bgded overlay" style="background-image:url('https://plab-football.s3.amazonaws.com/static/img/img_apmanager_1.jpg');">
  <div id="breadcrumb" class="hoc clear"> 
    <!--이미지 위에 글쓰는곳-->
  </div>
</div>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <div class="content"> 
    <h2 style="text-align: center; font-weight: bold ; font-size: 50px">B-PRO 매니저란??</h2>
    	<h4 style="text-align: center; font-weight: bold ; font-size: 30px">
    		B-PRO의 매치 매니저로서 참가자들이 즐겁게 운동할 수 있도록 매치 운영을<br> 담당하고 좋아하는 스포츠 활동을 하며 돈도 벌 수 있는 취미형 일자리입니다.
    	</h4>
      <img alt="" src="https://plab-football.s3.amazonaws.com/static/img/img_apmanager_1.jpg" style="width:100%; height: 400px;">
      <div id="comments">
        <ul>
          <li>
            <article>
              <header>
                <address>
                
                </address>
              </header>
              <div class="comcont">
					<pre class="txt2"><!--.<br>-->1. 내가 원하는 시간에 원하는 구장에서 나의 라이프 
스타일에 맞게 자유롭게 근무 시간과 장소를 선택할 수 있습니다.

2.경기당 25,000원 지급
경기당 25,000원이 지급됩니다. (시급 12,500원)
* 매달 우수 매니저에게는 10만원의 인센티브가 추가 지급됩니다.

3. 축구, 풋살을 잘 해야 하나요? 혹은 관련 자격증이 필요한가요?
자격증이나 실력과는 상관없이 스포츠 활동을 통해 사람들과 소통하며 가치 있는 스포츠 문화를 만들어가는 일에 함께할 분을 찾고있습니다.

4. 매치 담당 방식이 어떻게 되나요?
원하는 지역/구장, 원하는 시간대 매치를 자유롭게 선택하여 담당하게 됩니다.


<모집 요강>
⦁부문 : B-PRO 매치 매니저
⦁업무 : B-PRO 풋살 경기 운영, 장비 관리, 서비스 개선
⦁자격 : 만 21세 이상의 축구를 사랑하는 남/녀, 최소 3개월이상 매니저 활동 가능한 사람

<모집 지역>
⦁ 서울/경기, 대전광역시, 대구광역시, 부산광역시, 울산광역시, 광주광역시

<근무 방식>
⦁ 최소 3개월 근무, 월 3회 매치 필수 진행
⦁ 매 월 중순 다음 달 희망하는 매치 선착순 수시 선택 방식으로 담당 하여 진행

<급여>
⦁ 경기 1회 당 25,000원 (시급 12,500원 상당) 3.3% 사업소득세 공제

<우대 사항>
⦁ B-PRO 매치 참가 경험이 많은 사람
⦁ 오랜 기간, 많은 매치 진행이 가능한 사람
⦁ 책임, 성실, 예의, 친절의 이미지에 적합한 사람
⦁ 참가자의 지각/불참/부상을 대비해 언제든 매치에 참여할 수 있는 사람

<혜택>
⦁ 매니저 네트워킹 참여
⦁ 매니저 활동 용품 지급
⦁ B-PRO 매치 참여 혜택
- 담당 매치에  잔여 자리가 생길 시 매치 참여 가능
- 매 월 5경기 진행 시 1경기 무료 이용 쿠폰 지급(월 1인 1매 한정)

<기타 사항>
⦁ 지원서에 작성한 연락처로 개별 연락 예정
⦁ 충원이 필요할 경우 저희가 먼저 개별적으로 연락을 드리고 있습니다. 해당 지역의 매니저가 부족하거나 공석일 경우 연락드리겠습니다.

</pre>
              </div>
            
<button style="width: 100%;height: 100px;" onclick="location.href= 'managerJoin.do'">매니저 지원</button> 
    </div>
    </div>
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
</body>
</html>