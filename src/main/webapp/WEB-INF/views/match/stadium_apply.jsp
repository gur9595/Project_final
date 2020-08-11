<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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

<link href="./../resources/css/match_main.css" rel="stylesheet" type="text/css" media="all">
<script src="./../resources/js/match_main.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<script>

/* $(document).ready( function() {
    var now = new Date();
    var month = (now.getMonth() + 1);               
    var day = now.getDate();
    if (month < 10) 
        month = "0" + month;
    if (day < 10) 
        day = "0" + day;
    var today = now.getFullYear() + '-' + month + '-' + day;
    $('#s_date').val(today);
});
 */
var index = 0;
window.onload = function() {
	slideShow();
	cv();
}

//경기장 이미지 슬라이드
function slideShow(){
	var i;
	var x = document.getElementsByClassName("slide");
	
	for(i = 0; i < x.length; i++) {
		x[i].style.display = "none";
	}
	index++;
	if(index > x.length) {
		index = 1;
	}
	x[index - 1].style.display = "block";
	setTimeout(slideShow, 2000);
}

//편의사항 아이콘
function cv() {
	
	var cvs = document.getElementById("cv").value.split("||");
	for(i = 0; i < cvs.length; i++) {
		if(cvs[i] == "주차장"){
			document.getElementById("parking").style.display = "inline";
		}
		else if(cvs[i] == "신발대여"){
			document.getElementById("shoes").style.display = "inline";
		}
		else if(cvs[i] == "샤워장"){
			document.getElementById("shower").style.display = "inline";
		}
		else if(cvs[i] == "운동복대여"){
			document.getElementById("suit").style.display = "inline";
		}
	}
}

//검색
function search() {
	var date = document.getElementById("s_date").value;
	var s_name = document.getElementById("s_name").value;
	var s_addr = document.getElementById("s_addr").value;
	var s_dong = document.getElementById("s_dong").value;
	
	location.href="../match/stadiumApplySearch.do?s_idx=" + ${param.s_idx} + "&dong=" + s_dong + "&s_name" + s_name + "&s_addr" + s_addr + "&date=" + date;
}

//검색값 초기화
function reset() {
	var date = document.getElementById("s_date").value;
	var s_name = document.getElementById("s_name").value;
	var s_addr = document.getElementById("s_addr").value;
	var s_dong = document.getElementById("s_dong").value;
	var now = document.getElementById("now").value;
	
	location.href="../match/stadiumApply.do?s_idx=" + ${param.s_idx} + "&dong=" + s_dong + "&s_name" + s_name + "&s_addr" + s_addr + "&date=" + now;
}

//모달
function apply(time, c_name, c_idx, g_idx) {
	var table, tr, td, date, s_name, addr, price;
	table = document.getElementById("stadium_list");
	tr = table.getElementsByTagName("tr");
	for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[0];
	}
	date = td.innerText;
	s_name = document.getElementById("s_name").value;
	addr = document.getElementById("s_addr").value;
	price = document.getElementById("price").value;
	ball = document.getElementById("ball").value;
	type = document.getElementById("type").value;
	
	if(c_name == "" || c_name == null){
		c_name = "없음";
	}

  	document.getElementById("list_c_idx").value = c_idx;
  	document.getElementById("list_g_idx").value = g_idx;
  	document.getElementById("match_date").value = date;
  	document.getElementById("match_time").value = time;
  	document.getElementById("match_name").value = s_name;
  	document.getElementById("match_addr").value = addr;
  	document.getElementById("match_type").value = type;
  	document.getElementById("result").value = ball - price;
	
	document.getElementById("list_date").innerHTML = date;
	document.getElementById("list_time").innerHTML = time;
	document.getElementById("list_sname").innerHTML = s_name;
	document.getElementById("list_addr").innerHTML = addr;
	document.getElementById("list_c_name").innerHTML = c_name;
	document.getElementById("list_price").innerHTML = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + " ball";
	document.getElementById("list_ball").innerHTML = ball.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + " ball";
}

//매칭신청 모달
function match_insert(f){
	
	var c_idx = document.getElementById("c_idx");
	var list_idx = document.getElementById("list_c_idx");
	var cash = document.getElementById("result");
	
	if(c_idx.options[c_idx.selectedIndex].value==""){
		alert("클럽을 선택해주세요.");
		return false;
	}
	if(list_idx.value==""){
		alert("잘못된 접근입니다.");
		return false;
	}
	if(cash.value < 0){
		alert("보유금액이 부족하여 예약할 수 없습니다.");
		return false;
	}
	
	alert("경기장 예약이 완료되었습니다.");
}

</script>

</head>
<body id="top">
<!-- 모달창 신청폼 -->
	<form name="stadiumFrm" method="post" onsubmit="return match_insert(this);" action="<c:url value="/match/stadiumGameApply.do" />" >
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" data-backdrop="static" style="color: black;">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
	
					<div class="modal-header">
						<h2 class="modal-title" style="font-size: 20px; text-align: center;"
							id="myModalLabel">경기장 예약하기</h2>
	
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
	
					<div class="modal-body">
						<span>우리 클럽 : </span>
						<select class="form-control" name="we_c_idx" id="c_idx" style="width: 250px; display: inline; line-height: 30px;">
							<option value="" selected="selected">클럽을 선택하세요.</option>
							<c:forEach var="club" items="${c_list }">
								<option value="${club.c_idx }">${club.c_name }</option>
							</c:forEach>
						</select><br />
						<input type="hidden" id="list_c_idx" name="c_idx" />
						<input type="hidden" name="s_idx" value="${param.s_idx }" />
						<input type="hidden" id="list_g_idx" name="g_idx" />
						<input type="hidden" id="result" name="result_ball" /> 
						<input type="hidden" id="match_name" name="name" />
						<input type="hidden" id="match_date" name="date" /> 
						<input type="hidden" id="match_time" name="time" /> 
						<input type="hidden" id="match_addr" name="addr" /> 
						<input type="hidden" id="match_type" name="type" /> 
						상대 클럽 : <span id="list_c_name" style="line-height: 30px;"></span><br />
						경기 날짜 : <span id="list_date" style="line-height: 30px;"></span><br />
						경기 시간 : <span id="list_time" style="line-height: 30px;"></span><br />
						구장 이름 : <span id="list_sname" style="line-height: 30px;"></span><br />
						구장 주소 : <span id="list_addr" style="line-height: 30px;"></span><br />
						사용 금액 : <span id="list_price" style="line-height: 30px;"></span><br /><br />
						<div align="center">보유중인 ball : <span id="list_ball"></span><br /></div>
					</div>
						<button type="submit" class="reserve" >예약하기</button>
				</div>
			</div>
		</div>
</form>
<!-- ################ 모달 끝 #################-->

	<!--top-->
	<%@ include file="./../include/top.jsp"%>
	<!--각 페이지 이미지-->
	<div class="bgded overlay"
		style="background-image: url('./../resources/img/stadium.png');">
		<div id="breadcrumb" class="hoc clear">
			<!--이미지 위에 글쓰는곳-->
		</div>
	</div>
	<div class="wrapper row4" style="background-color: #fff">
		<!-- main body -->
		<br />
		<input type="hidden" id="s_name" value="${name }" />
		<input type="hidden" id="s_addr" value="${addr }" />
		<input type="hidden" id="s_dong" value="${dong }" />
		<input type="hidden" id="price" value="${price }" />
		<input type="hidden" id="ball" value="${cash }" />
		<input type="hidden" id="type" value="${type }" />
		<h1 style="text-align: center; font-weight: bold; font-size: 50px">${dong }&nbsp;${name }</h1>
		
		<main class="hoc container clear">
			<div class="mr-5" style="text-align: right;">
				<a href="map.do?g_saddr=${addr}&g_sname=${name}" style="display: inline;"
					onclick="window.open(this.href, '_blank', 'width=700px,height=700px,toolbars=no,scrollbars=no'); return false;">
						<span style="font-size: 20px;" id="addr">
							<input type="text" id="s_addr" style="border: 0px; cursor: pointer; width: 400px; display: inline; text-align: right;" 
								value="${addr }" />
						</span>&nbsp;&nbsp;
				</a>
				<button onclick="copyFunc();" style="border: 0px; background-color: #fff; display: inline;">
					<i class="material-icons">content_copy</i>
				</button>
				
			</div>			<br />
			<div> 
				<img src="./../resources/uploadsFile/${s_pic1 }" class="slide" style="width:100%; height: 400px;">
				<img src="./../resources/uploadsFile/${s_pic2 }" class="slide" style="width:100%; height: 400px;">
				<img src="./../resources/uploadsFile/${s_pic3 }" class="slide" style="width:100%; height: 400px;">
			</div>
			<br> <br> <br>

			<div class="one_half first" id="stadium2" style="height: 800px;">
				<div align="center">
					<span style="font-size: 20px; color: black; font-weight: bold;">경기장 예약내역</span> <br /><br /> 
				</div>
				<div class="ml-auto mb-3" align="right">
					<input type="date" id="s_date" name="s_date" class="form-control ml-auto" style="width: 230px; display: inline;" value="${param.date }" />
					<button type="button" class="snip" onclick="search();" id="stadium_search" style="width: 100px; display: inline;">검색하기</button>&nbsp;&nbsp;&nbsp;
					<button type="button" class="snip" onclick="reset();" id="stadium_reset" style="width: 100px; display: inline;" >필터리셋</button>					
				</div>
				<form action="./../match/stadiumNormalApply.do" method="get">
					<table border="1" style="text-align: center; margin-left: 5px; padding:0px 10px;" id="stadium_list">
						<tr>
							<th>날 짜</th>
							<th>시 간</th>
							<th>현 황</th>
							<th>예약 클럽명</th>
							<th>신 청</th>
						</tr>
						
						<c:set var="now" value="<%=new java.util.Date()%>" />
						<c:forEach var="row" items="${stadiumGameLists }">
							<tr class="stadium_list">
								<td>
									<c:if test="${not empty row.g_date }">
										${row.g_date }
									</c:if>
									<c:if test="${empty row.g_date }">
										${param.date }
									</c:if>
									<c:if test="${empty param.date and empty row.g_date }">
										<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" />
									</c:if>
								</td>
								<td>${row.g_time }</td>
								<td>
									<c:if test="${not empty row.c_name }">
										<span style="color: red;">1팀남음</span>
									</c:if>
									<c:if test="${empty row.c_name }">
										2팀남음
									</c:if>
								</td>
								<td>
									<c:if test="${not empty row.c_name }">
										<span style="color: blue;">${row.c_name }</span>
									</c:if>
									<c:if test="${empty row.c_name }">
										없음
									</c:if>
								</td>
								<td>
									<button type="button" class="snip1535" data-toggle="modal" data-target="#myModal"
										onclick="apply('${row.g_time}', '${row.c_name }', '${row.c_idx }', '${row.g_idx }');"
										style="width: 100%;">신청</button>
								</td>
							</tr>
						</c:forEach>
					</table>
				</form>
			</div>
			<input type="hidden" id="now" value="<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" />" />
			<div class="one_half" id="comments">
				<header>
					<span style="font-size: 20px; color: black; font-weight: bold;">구장 특이사항</span><br /><br />
				</header>
				<div class="comcont">
				
				<textarea name="" id="" cols="20" rows="10" style="color: #000; border: 0;">${memo }</textarea>

				</div>
				<header>
					<span style="font-size: 20px; color: black; font-weight: bold;">구장 편의사항</span><br /><br />
				</header>
				<div class="comcont">
				<input type="hidden" id="cv" value="${cv }" />
				
				<span>
					<img src="./../resources/img/match/parking.png" id="parking" style="margin-right: 70px; margin-bottom: 30px; display: none;"/>
					<img src="./../resources/img/match/shoes.png" id="shoes" style="margin-right: 70px; margin-bottom: 30px; display: none;"/>
					<img src="./../resources/img/match/shower.png" id="shower" style="margin-right: 70px; margin-bottom: 30px; display: none;"/>
					<img src="./../resources/img/match/suit.png" id="suit" style="margin-right: 70px; margin-bottom: 30px; display: none;"/>
				</span>
				

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
<script>
function copyFunc() {  
	var copyText = document.getElementById("s_addr");
	copyText.select();
	document.execCommand("Copy");
	alert("경기장 주소가 복사되었습니다!");
	copyText.setSelectionRange(0, 0); //선택영역 초기화
}
</script>
</body>
</html>