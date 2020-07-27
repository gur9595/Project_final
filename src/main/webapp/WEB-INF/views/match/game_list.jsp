<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<body>
<main class=" ho c container clear" id="main">
	<!-- 모달창 신청폼 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" data-backdrop="static"
		style="color: black; width: 100%; margin: 0;">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">

				<div class="modal-header">
					<h2 class="modal-title"
						style="font-size: 20px; text-align: center;" id="myModalLabel">경기신청하기</h2>

					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
				
					<input type="hidden" id="list_idx" />
					경기 날짜 : <span id="list_date"></span><br />
					경기 시간 : <span id="list_time"></span>:00<br />
					구장 이름 : <span id="list_name"></span><br />
					구장 주소 : <span id="list_addr"></span><br />
					
					참고 사항 : <br />
					<textarea class="form-control" id="list_memo"
						style="width: 100%; height: 100px; background: #ffffff;"
						readonly="readonly">
					</textarea>

				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">
						신청하기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- ################ 모달 끝 #################-->
	<form action="">
		<div class="ml-auto mb-3" align="right">
			<select class="form-control ml-auto" name="g_gu" id="g_gu" style="width: 230px; display: inline;">
				<option value="" selected="selected">선택해주세요</option>
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
			<input type="date" id="g_date" name="g_date" class="form-control ml-auto" style="width: 230px; display: inline;" />
			<input type="button" onclick="search_list();" class="btn btn-secondary" id="search" style="width: 100px; display: inline;" value="검색하기" />
			<input type="reset" class="btn btn-secondary" id="reset" style="width: 100px; display: inline;" value="필터리셋" />
		</div>
	</form>
	<table id="list" style="text-align: center;" border="1">
		<tr>
			<th>날짜</th>
			<th>시간</th>
			<th>지역</th>
			<th>구장 이름</th>
			<th>구장 주소</th>
			<th>클럽명</th>
			<th>신청</th>
		</tr>
		<tbody id="tbody">
		<c:forEach items="${lists }" var="row">
			<tr>
				<td>
					<input type="hidden" value="${row.g_idx }" />
					${row.g_date }
				</td>
				<td>${row.g_time }:00</td>
				<td>${row.g_gu }</td>
				<td>
					<a href="map.do?g_saddr=${row.g_saddr}&g_sname=${row.g_sname}" style="color: red;" onclick=
						"window.open(this.href, '_blank', 'width=700px,height=700px,toolbars=no,scrollbars=no'); return false;">
						${row.g_sname }
					</a>
				</td>
				<td>${row.g_saddr }</td>
				<td>${row.c_idx }</td>
				<td>
					<button type="button" class="btn btn-primary" data-toggle="modal" 
						onclick="modal('${row.g_date}', '${row.g_time}', '${row.g_sname}', '${row.g_saddr}', '${row.g_memo}', '${row.g_idx}');"
						data-target="#myModal" style="width: 100%; height: 100%;">매치 신청</button>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</main>
</body>
</html>