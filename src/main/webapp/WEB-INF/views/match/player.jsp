<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<meta charset="utf-8">

<body id="top">
<!-- 모달창 신청폼 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" data-backdrop="static" style="color: black;">
		<div class="modal-dialog" role="document">
			<div class="modal-content">

				<div class="modal-header">
					<h2 class="modal-title" style="font-size: 20px; text-align: center;"
						id="myModalLabel">용병 신청하기</h2>

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


	<div class="wrapper row3">
		<main class="container clear">
			
			<div class="" id="stadium2">
				<form action="./../match/stadiumNormalApply.do" method="get">
					<table border="1" style="text-align: center;">
						<tr border="0px;">
							<th colspan="3" style="border: 0px;">
								<input type="date" class="form-control" style="width: 100%; height: 100%;" />
							</th>
							<th colspan="3" style="border: 0px;">
								<select class="form-control" name="" id="" style="width: 100%; height: 100%;">
									<option selected="selected">지역을 선택하세요</option>
							        <option value="강남구">강남구</option>
							        <option value="강동구">강동구</option>
							        <option value="강북구">강북구</option>
							        <option value="강서구">강서구</option>
							        <option value="관악구">관악구</option>
							        <option value="광진구">광진구</option>
							        <option value="구로구">구로구</option>
							        <option value="금천구">금천구</option>
							        <option value="노원구">노원구</option>
							        <option value="도봉구">도봉구</option>
							        <option value="동대문구">동대문구</option>
							        <option value="동작구">동작구</option>
							        <option value="마포구">마포구</option>
							        <option value="서대문구">서대문구</option>
							        <option value="서초구">서초구</option>
							        <option value="성동구">성동구</option>
							        <option value="성북구">성북구</option>
							        <option value="송파구">송파구</option>
							        <option value="양천구">양천구</option>
							        <option value="영등포구">영등포구</option>
							        <option value="용산구">용산구</option>
							        <option value="은평구">은평구</option>
							        <option value="종로구">종로구</option>
							        <option value="중구">중구</option>
							        <option value="중랑구">중랑구</option>
								</select>
							</th>
							<th style="border: 0px;">
								<button type="button" class="btn btn-outline-secondary"
									data-toggle="modal" data-target="#myModal"
									style="width: 100%; height: 100%;">검색</button>
							</th>
						</tr>
						<tr>
							<th>경기 시간</th>
							<th>구장 이름</th>
							<th>클럽 이름</th>
							<th>클럽 실력</th>
							<th>모집 성별</th>
							<th>모집 인원</th>
							<th>신청버튼</th>
						</tr>
						<tr>
							<td>12:00</td>
							<td>가산 풋살장</td>
							<td>가산 BROS</td>
							<td>중상</td>
							<td>트랜스젠더</td>
							<td>1명 남음</td>
							<td>
								<button type="button" class="btn btn-warning"
									data-toggle="modal" data-target="#myModal"
									style="width: 100%; height: 100%;">신청</button>
							</td>
						</tr>
						<tr>
							<td>13:00</td>
							<td>구로 풋살장</td>
							<td>구로 BROTHER</td>
							<td>최상</td>
							<td>여자</td>
							<td>100명 남음</td>
							<td>
								<button type="button" class="btn btn-warning"
									data-toggle="modal" data-target="#myModal"
									style="width: 100%; height: 100%;">신청</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<!-- / main body -->
			<div class="clear"></div>
		</main>
	</div>
</body>
</html>