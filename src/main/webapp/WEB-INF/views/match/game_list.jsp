<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<body>
<main class=" ho c container clear" id="main">
	<!-- 모달창 신청폼 -->
	<form name="gameFrm" method="post" onsubmit="return match_insert(this);" action="<c:url value="/match/matchApply.do" />" >
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" data-backdrop="static"
			style="color: black; width: 40%; margin-left: 30%; margin-right: 30%;">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<input type="hid den" id="cash" name="cash" value="${cash }" />
					<input type="hid den" id="result" name="result" />
					<div class="modal-header">
						<h2 class="modal-title" id="myModalLabel">경기신청하기</h2>
	
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<input type="hidden" id="list_idx" name="g_idx" />
						<span style="line-height: 30px;">우리 클럽 : </span>
						<select class="form-control" name="c_idx" id="c_idx" style="width: 250px; display: inline; line-height: 30px;">
							<option value="" selected="selected">클럽을 선택하세요.</option>
							<c:forEach var="club" items="${c_list }">
								<option value="${club.c_idx }">${club.c_name }</option>
							</c:forEach>
						</select><br />
						상대 클럽 : <span id="list_c_name" style="line-height: 30px;"></span><br />
						경기 날짜 : <span id="list_date" style="line-height: 30px;"></span><br />
						경기 시간 : <span id="list_time" style="line-height: 30px;"></span>:00<br />
						구장 이름 : <span id="list_name" style="line-height: 30px;"></span><br />
						구장 주소 : <span id="list_addr" style="line-height: 30px;"></span><br />
						참고 사항 : <br />
						<textarea class="form-control" id="list_memo"
							style="width: 100%; height: 100px; background: #ffffff; line-height: 30px;"
							readonly="readonly">
						</textarea>	
						사용 금액 : <span id="list_price" style="line-height: 30px;"></span><br /><br />
						<div align="center">보유중인 ball : <span id="list_ball"></span><br /></div> 
					</div>
					<button type="submit" class="req" >신청하기</button>
				</div>
			</div>
		</div>
	</form>
	<!-- ################ 모달 끝 #################-->
	<form action="">
		<div class="ml-auto mb-3" align="right">
			<select class="form-control ml-auto" name="g_gu" id="g_gu" style="width: 210px; display: inline;">
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
			<input type="date" id="g_date" name="g_date" class="form-control ml-auto" style="width: 210px; display: inline;" />&nbsp;
			<button type="button" class="snip" onclick="search_game_list();"  id="search" style="width: 100px; display: inline;" >검색하기</button>&nbsp;&nbsp;&nbsp;
			<button type="reset" onclick="reset_game_list();" class="snip" id="reset" style="width: 100px; display: inline;">필터리셋</button>
		</div>
	</form>
	<div class="tb_wrap">
  		<div class="tb_box">
		<table id="game_table" style="text-align: center; border: none;" class="tb">
			<colgroup>
				<col width="10%">
				<col width="10%">
				<col width="10%">
				<col width="20%">
				<col width="25%">
				<col width="15%">
				<col width="10%">
		    </colgroup>
			<tr class="fixed_top" style="margin-left:-55px;">
				<th class="cell1" scope="col">날짜</th>
				<th class="cell2" scope="col">시간</th>
				<th class="cell3" scope="col">지역</th>
				<th class="cell4" scope="col">구장 이름</th>
				<th class="cell5" scope="col">구장 주소</th>
				<th class="cell6" scope="col">클럽명</th>
				<th class="cell7" scope="col">신청</th>
			</tr>
			<tbody id="tbody">
			<c:forEach items="${lists }" var="row">
				<tr class="game_list">
					<td class="cell1" scope="row">${row.g_date }</td>
					<td class="cell2">
						<input type="hidden" value="${row.g_idx }" />
						${row.g_time }:00
					</td>
					<td class="cell3">${row.g_gu }</td>
					<td class="cell4">
						<a href="map.do?g_saddr=${row.g_saddr}&g_sname=${row.g_sname}" class="tip" style="color: red;" onclick=
							"window.open(this.href, '_blank', 'width=700px,height=700px,toolbars=no,scrollbars=no'); return false;">
							${row.g_sname } <span style="width: 200px;">${row.g_sname } <br />위치보기</span>
						</a>
					</td>
					<td class="cell5">${row.g_saddr }</td> 
					<td class="cell6">
						<a href="../club/clubView.do?c_idx=${row.c_idx }" style="color: red;" class="tip" onclick=
							"window.open(this.href, '_blank', 'width=1500,height=800, toolbar=no, menubar=no, resizable=no'); return false;">
							${row.c_name } <span style="width: 200px;">${row.c_name }<br />클럽 페이지 이동</span>
						</a>
					</td>
					<td class="cell7">
						<button type="button" class="snip1535" data-toggle="modal" 
							onclick="game_modal('${row.g_date}', '${row.g_time}', '${row.g_sname}', '${row.g_saddr}', 
								'${row.g_memo}', '${row.g_idx}', '${row.c_name}');"
							data-target="#myModal" style="width: 100%; height: 100%;">매치신청</button>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		</div>
	</div>
<style>
tr {
  border-bottom:1px solid #dedede;
}
tr:last-child {
  border-bottom:0;
}
.tb_wrap {
  position:relative;
  padding-top:33px;
}
.tb_box {
  max-height:500px;
  overflow-x:hidden;
  border-bottom:1px solid #dedede;
}
.tb {
  border-collapse:collapse;
  border-spacing:0;
  width:100%;
}

.fixed_top {
  display:inline-table;
  position:absolute;
  top:0;
  width:calc(100% - 17px);
  background:#eef7ff;
}
.fixed_top th {
  border-top:1px solid #dedede;
  border-bottom:1px solid #dedede;
}

.cell1 {
  width:10%;
}
.cell2 {
  width:10%;
}
.cell3 {
  width:10%;
}
.cell4 {
  width:20%;
}
.cell5 {
  width:25%;
}
.cell6 {
  width:15%
}
.cell7 {
  width:10%;
}

h2{
	font-size: 22px !important; text-shadow: 5px 5px 2px rgba(0, 0, 0, 0.2); font-weight:900;
	padding: 3px 5px; margin: 5px 0; BACKGROUND-COLOR: #FFF;  BORDER-LEFT: #FF8000 8px solid; 
}
.req {
  border-radius: 3px;
  background:#2E64FE;
  color:#fff;
  border:none;
  position:relative;
  height:60px;
  font-size:1.3em;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
  font-weight:900
}

.req:hover{
  background:#fff;
  color:#2E64FE;
}

.req:before,.req:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #2E64FE;
  transition:400ms ease all;
}
.req:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
.req:hover:before,.req:hover:after{
  width:100%;
  transition:800ms ease all;
}
</style>
</main>
</body>
</html>