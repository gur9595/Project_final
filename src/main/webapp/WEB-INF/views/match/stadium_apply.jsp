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


<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="./../resources/css/layout.css" rel="stylesheet"
	type="text/css" media="all">


</head>
<body id="top">
<!-- 모달창 신청폼 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" data-backdrop="static" style="color: black;">
		<div class="modal-dialog" role="document">
			<div class="modal-content">

				<div class="modal-header">
					<h2 class="modal-title" style="font-size: 20px; text-align: center;"
						id="myModalLabel">구장 신청하기</h2>

					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<div class="modal-body">
				장소 : 가산 조은디 풋살장 <br>
				날짜 : 2020-08-14 <br>
				시간 : 18:00 <br>
				<table  class="table table-borderless">
					<tr>
						<td>예약</td>
						<td width="20px;"><input type="radio" name="field" id="full" value="전체"/></td>
			          	<td><label for="full">전체 예약</label></td>  
			            <td width="20px;"><input type="radio" name="field" id="half" value="절반"/></td>
			            <td><label for="half">절반 예약</label></td>
					</tr>
					<tr>
						<td>공 유/무</td>
						<td width="20px;"><input type="radio" name="ball" id="ball_o" value="유"/></td>
			          	<td><label for="ball_o">유</label></td>  
			            <td width="20px;"><input type="radio" name="ball" id="ball_x" value="무"/></td>
			            <td><label for="ball_x">무</label></td>
					</tr>
					<tr>
						<td>결제 금액</td>
						<td colspan="4">150,000</td>
					</tr>
				</table>
					
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal"> 결 제 </button>
				</div>
			</div>
		</div>
	</div>


	<!--top-->
	<%@ include file="./../include/top.jsp"%>
	<!--각 페이지 이미지-->
	<div class="bgded overlay"
		style="background-image: url('./../resources/img/stadium.png');">
		<div id="breadcrumb" class="hoc clear">
			<!--이미지 위에 글쓰는곳-->
		</div>
	</div>
	<div class="wrapper row3">
		<main class="hoc container clear">
			<!-- main body -->
			<h2 style="text-align: center; font-weight: bold; font-size: 50px">가산동
				조은디 풋살장</h2>
			<img alt=""
				src="https://plab-football.s3.amazonaws.com/media/coner_dutNIKf.jpg"
				style="width: 100%; height: 400px;"> <br> <br> <br>
			<div class="one_half first" id="stadium2">
				<form action="./../match/stadiumNormalApply.do" method="get">
					<table border="1" style="text-align: center;">
						<tr>
							<th colspan="6"><input type="date"
								style="width: 100%; height: 100%;" /></th>
						</tr>
						<tr>
							<th>시 간</th>
							<th>구장 이름</th>
							<th>현 황</th>
							<th>신 청</th>
						</tr>
						<tr>
							<td>12:00</td>
							<td>가산 풋살장</td>
							<td>1팀 남음</td>
							<td>
								<button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#myModal"
									style="width: 100%; height: 100%;">신청</button>
							</td>
						</tr>
						<tr>
							<td>20:00</td>
							<td>철산 풋살장</td>
							<td>예약 완료</td>
							<td><button style="width: 100%; height: 100%;">신청</button></td>
						</tr>
						<tr>
							<td>16:00</td>
							<td>구로 풋살장</td>
							<td>예약 진행</td>
							<td><button style="width: 100%; height: 100%;">신청</button></td>
						</tr>
						<tr>
							<td>10:00</td>
							<td>영등포 풋살장</td>
							<td>예약 진행</td>
							<td><button style="width: 100%; height: 100%;">신청</button></td>
						</tr>
						<tr>
							<td>22:00</td>
							<td>금정 풋살장</td>
							<td>예약 완료</td>
							<td><button style="width: 100%; height: 100%;">신청</button></td>
						</tr>
						<tr>
							<td>08:00</td>
							<td>덕덕 풋살장</td>
							<td>1팀 남음</td>
							<td><button style="width: 100%; height: 100%;">신청</button></td>
						</tr>
						<tr>
							<td>12:00</td>
							<td>가산 풋살장</td>
							<td>1팀 남음</td>
							<td><button style="width: 100%; height: 100%;">신청</button></td>
						</tr>
						<tr>
							<td>20:00</td>
							<td>철산 풋살장</td>
							<td>예약 완료</td>
							<td><button style="width: 100%; height: 100%;">신청</button></td>
						</tr>
						<tr>
							<td>16:00</td>
							<td>구로 풋살장</td>
							<td>예약 진행</td>
							<td><button style="width: 100%; height: 100%;">신청</button></td>
						</tr>
						<tr>
							<td>10:00</td>
							<td>영등포 풋살장</td>
							<td>예약 진행</td>
							<td><button style="width: 100%; height: 100%;">신청</button></td>
						</tr>
						<tr>
							<td>22:00</td>
							<td>금정 풋살장</td>
							<td>예약 완료</td>
							<td><button style="width: 100%; height: 100%;">신청</button></td>
						</tr>
						<tr>
							<td>22:00</td>
							<td>금정 풋살장</td>
							<td>예약 완료</td>
							<td><button style="width: 100%; height: 100%;">신청</button></td>
						</tr>
					</table>
				</form>
			</div>

			<div class="one_half" id="comments">
				<ul>
					<li>
						<article>
							<header>
								<address>구장 특이사항</address>
							</header>
							<div class="comcont">
								<pre class="txt2">■코로나로 인하여 풋살장 외 장소 이동시 마스크를 필히 착용 하셔야 
	하며 미이행시 CCTV 확인 후 추후 이용에 불이익이 발생할 수 있습니다.
■2.26(수)이후 기존에 진행되었던 풋살화 렌탈서비스를 당분간 중단합니다.
■별도 안내시까지 탈의실,샤워실 이용불가.

[구장 특이사항]
-1~5구장 8층 / 6~7구장 10층
*출입문 비밀번호 -&gt; 알림톡 링크에서 확인 가능
*안내 사항 미숙지로 인한 요금 발생에 대해서는 환불이 불가능합니다

&lt;주차&gt;
-해 주차장 이용 
(*주차 신청 후 출차 시 요금이 발생한 경우에는 주차비 영수증 챙기셔야 환불이 가능합니다)

-주차 등록은 당일 변경 및 신청 불가 

-22시 경기 이용시 : 경기 종료 후 무인 출차기 앞에서 호출 후 영수증 제시
-23시 경기 이후 : 영수증 할인 불가능 
                  -&gt; 용산전자상가1 공영주차장 이용 권장 
                  (22시-08시까지 무료 주차이며 이전 입차 하는 경우 기본 5분 250원, 
                  추가 5분당 250원 금액 발생/주차장 번호 02-707-3105)

&lt;풋살화&gt;
-풋살화 대여 시간 10:30~20:00 (주말도 동일) 
-대여시 신분증이 필요
 *매월 1일은 대여 불가
■20.2.26(수)이후 기존에 진행되었던 풋살화 렌탈서비스를 당분간 중단합니다.


*해당 내용은 변경 될 수 있습니다.</pre>
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
	<script src="./../resources/js/jquery.mobilemenu.js"></script>
</body>
</html>