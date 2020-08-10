<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<meta charset="utf-8">

<body id="top">
<!-- 모달창 신청폼 -->
<main class=" ho c container clear" id="main">

	<form name="gameFrm" method="post" onsubmit="return extra_insert(this);"  action="<c:url value="/match/extraApply.do" />" >
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" data-backdrop="static"
			style="color: black; width: 40%; margin-left: 30%; margin-right: 30%;">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
	
					<div class="modal-header">
						<h2 class="modal-title"
							style="font-size: 20px; text-align: center;" id="myModalLabel">용병신청하기</h2>
	
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
					
						<input type="hidden" id="list_idx" name="list_idx" />
						경기 날짜 : <span id="list_date"></span><br />
						경기 시간 : <span id="list_time"></span>:00<br />
						구장 이름 : <span id="list_sname"></span><br />
						구장 주소 : <span id="list_addr"></span><br />
						클럽 이름 : <span id="list_cname"></span><br />
						클럽 실력 : <span id="list_ability"></span><br />
						모집 성별 : <span id="list_gender"></span><br />
						남은 인원 : <span id="list_extra">명 남음</span><br />
							
					</div>
	
					<div class="modal-footer">
						
						<input type="submit" class="btn btn-danger" value="신청하기">
					</div>
				</div>
			</div>
		</div>
	</form>

	<!-- ################ 모달 끝 #################-->

	<form action="">
		<div class="ml-auto mb-3" align="right">
			<select class="form-control ml-auto" name="e_gu" id="e_gu" style="width: 230px; display: inline;">
				<option value="" selected="selected">지역을 선택하세요.</option>
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
			<input type="date" id="e_date" name="e_date" class="form-control ml-auto" style="width: 230px; display: inline;" />
			<button type="button" onclick="search_extra_list();" class="snip" id="search" style="width: 100px; display: inline;">검색하기</button>&nbsp;&nbsp;&nbsp;
			<button type="reset" onclick="reset_extra_list();" class="snip" id="reset" style="width: 100px; display: inline;">필터리셋</button>
		</div>
	</form>
	<table id="extra_table" border="1" style="text-align: center;">
		<colgroup>
			<col width="11%">
			<col width="8%">
			<col width="8%">
			<col width="20%">
			<col width="20%">
			<col width="10%">
			<col width="10%">
			<col width="*%">
	    </colgroup>
		<tr>
			<th>결기 날짜</th>
			<th>경기 시간</th>
			<th>경기 지역</th>
			<th>구장 이름</th>
			<th>클럽 이름</th>
			<th>모집 성별</th>
			<th>모집 인원</th>
			<th>신청버튼</th>
		</tr>
		<tbody id="tbody">
		<c:forEach items="${lists }" var="row">
			<tr class="extra_list">
				<td>${row.g_date }</td>
				<td>${row.g_time }:00</td>
				<td>${row.g_gu }</td>
				<td>
					<a href="map.do?g_saddr=${row.g_saddr}&g_sname=${row.g_sname}" class="tip" style="color: red;" onclick=
						"window.open(this.href, '_blank', 'width=700px,height=700px,toolbars=no,scrollbars=no'); return false;">
						${row.g_sname } <span style="width: 200px;">${row.g_sname } <br />위치보기</span>
					</a>
				</td>
				<td>
					<a href="clubView.do?c_idx=${row.c_idx }" style="color: red;" class="tip">
						${row.c_name } <span style="width: 200px;">${row.c_name }<br />클럽 페이지 이동</span>
					</a>
				</td>
				<td>${row.c_gender }</td>
				<td>${row.g_extra }명 남음</td>
				<td>
					<input type="hidden" value="${row.g_idx }" />
					<input type="button" class="btn btn-primary" data-toggle="modal" 
						onclick="extra_modal('${row.g_date}', '${row.g_time}', '${row.g_sname}', '${row.g_saddr}', 
							'${row.g_idx}', '${row.c_name}', '${row.c_gender}', '${row.g_extra}', '${row.c_ability}');"
						data-target="#myModal" style="width: 100%; height: 100%;" value="용병 신청">
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>			
</main>
</body>
</html>