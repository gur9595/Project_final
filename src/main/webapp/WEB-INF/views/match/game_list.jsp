<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이틀</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>


</head>
<body>

	<!-- 모달창 신청폼 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" data-backdrop="static"
		style="color: black;">
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=36334fae12132b7c9a4b0c870101ef91&libraries=services"></script>

		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">

				<div class="modal-header">
					<h2 class="modal-title"
						style="font-size: 20px; text-align: center;" id="myModalLabel">구장
						신청하기</h2>

					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<div class="modal-body">
					날짜 : 2020-08-14 <br> 시간 : 18:00 <br> 장소 : 가산 조은디 풋살장 <br>
					주소 : 서울 성동구 금호동3가 1127번지 <br>
					
					상세정보
					<textarea class="form-control"
						style="width: 100%; height: 200px; background: #ffffff;"
						readonly="readonly">
저희 팀은 공안가져가요 님들이 가져오세요

유니폼 색깔은 파란색입니다

늦으면 1분당 벌금 만원입니다

				</textarea>

				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">
						결 제</button>
				</div>
			</div>
		</div>
	</div>
	<!-- ################ 모달 끝 #################-->


	<form action="">
		<table style="text-align: center;" border="1">
			<tr>
				<th>날짜</th>
				<th>시간</th>
				<th>지역</th>
				<th>구장 이름</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>신청</th>
			</tr>
			<tr>
				<td>2020-08-14</td>
				<td>02:00</td>
				<td>금천구</td>
				<td>
				<a href="map.do" onclick="window.open(this.href, '_blank', 'width=700px,height=700px,toolbars=no,scrollbars=no'); return false;">
				조은디 풋살장</a>
				</td>
				<td>하이요 나는 정덕래다. 여기 구짱 나와라 5초준다</td>
				<td>덕덕</td>
				<td><button type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#myModal"
						style="width: 100%; height: 100%;">신청</button></td>
			</tr>
			<tr>
				<td>2020-08-14</td>
				<td>02:00</td>
				<td>금천구</td>
				<td>덕덕 풋살장</td>
				<td>하이요 나는 정덕래다. 여기 구짱 나와라 5초준다</td>
				<td>덕덕</td>
				<td><button type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#myModal"
						style="width: 100%; height: 100%;">신청</button></td>
			</tr>
			<tr>
				<td>2020-08-14</td>
				<td>02:00</td>
				<td>금천구</td>
				<td>덕덕 풋살장</td>
				<td>하이요 나는 정덕래다. 여기 구짱 나와라 5초준다</td>
				<td>덕덕</td>
				<td><button type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#myModal"
						style="width: 100%; height: 100%;">신청</button></td>
			</tr>
			<tr>
				<td>2020-08-14</td>
				<td>02:00</td>
				<td>금천구</td>
				<td>덕덕 풋살장</td>
				<td>하이요 나는 정덕래다. 여기 구짱 나와라 5초준다</td>
				<td>덕덕</td>
				<td><button type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#myModal"
						style="width: 100%; height: 100%;">신청</button></td>
			</tr>
			<tr>
				<td>2020-08-14</td>
				<td>02:00</td>
				<td>금천구</td>
				<td>덕덕 풋살장</td>
				<td>하이요 나는 정덕래다. 여기 구짱 나와라 5초준다</td>
				<td>덕덕</td>
				<td><button type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#myModal"
						style="width: 100%; height: 100%;">신청</button></td>
			</tr>

		</table>
	</form>
</body>
</html>