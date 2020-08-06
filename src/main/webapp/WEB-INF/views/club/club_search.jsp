<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<link href="./../resources/css/search.css" rel="stylesheet"	type="text/css" media="all">
<html>
<script>
$('#clubSearchSubmit').click(function() {
	var clubName = $("#clubName").val();
	clubName = clubName.replace(/\s/gi, "+");
	console.log(clubName);
	$("#contents").load("clubSearchFilter.do?clubName="+ clubName +"&area="+$('#area').val() +"&ability="+$('#ability').val() +"&gender="+$('#gender').val() +"&age="+$('#age').val());
});

function paging(pNum){
	$("#contents").load("clubSearch.do?nowPage=" + pNum);
}

function pagingFilter(pNum){
	var clubName = $("#clubName").val();
	clubName = clubName.replace(/\s/gi, "+");
	console.log(clubName);
	$("#contents").load("clubSearchFilter.do?nowPage=" + pNum + "&clubName="+ clubName +"&area="+$('#area').val() +"&ability="+$('#ability').val() +"&gender="+$('#gender').val() +"&age="+$('#age').val());

}
</script>
<style>

</style>
<%
request.setCharacterEncoding("UTF-8");
%>
<body>
	<div class="hoc container clear">
	<center class="center">클럽 검색</center>
		<br /><br />
		<div class="one_half first">
			<div class="s007">
			  <form method="post" id="searchForm">
		        <div class="inner-form">
		          <div class="basic-search">
		            <div class="input-field">
		              <div class="icon-wrap">
		                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20">
		                  <path d="M18.869 19.162l-5.943-6.484c1.339-1.401 2.075-3.233 2.075-5.178 0-2.003-0.78-3.887-2.197-5.303s-3.3-2.197-5.303-2.197-3.887 0.78-5.303 2.197-2.197 3.3-2.197 5.303 0.78 3.887 2.197 5.303 3.3 2.197 5.303 2.197c1.726 0 3.362-0.579 4.688-1.645l5.943 6.483c0.099 0.108 0.233 0.162 0.369 0.162 0.121 0 0.242-0.043 0.338-0.131 0.204-0.187 0.217-0.503 0.031-0.706zM1 7.5c0-3.584 2.916-6.5 6.5-6.5s6.5 2.916 6.5 6.5-2.916 6.5-6.5 6.5-6.5-2.916-6.5-6.5z"></path>
		                </svg>
		              </div>
		              <input id="clubName" name="clubName" type="text" placeholder="클럽명 입력" />
		          </div>
		          <div class="advance-search">
		            <span class="desc">세부 검색</span>
		            <div class="row">
		              <div class="input-field">
		                <div class="input-select">
		                  <select data-trigger="" class="form-control" id="area" name="area">
		                    <option placeholder="" value="">---지역구---</option>
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
		                </div>
		              </div>
		              <div class="input-field">
		                <div class="input-select">
		                  <select data-trigger="" class="form-control" id="ability" name="ability">
		                    <option placeholder="" value="">---실력---</option>
		                    <option value="최상">최상</option>
		                    <option value="상">상</option>
		                    <option value="중상">중상</option>
		                    <option value="중">중</option>
		                    <option value="중하">중하</option>
		                    <option value="하">하</option>
		                  </select>
		                </div>
		              </div>
		            </div>
		            <div class="row second">
		              <div class="input-field">
		                <div class="input-select">
		                  <select data-trigger="" class="form-control" id="gender" name="gender">
		                    <option placeholder="" value="">---성별---</option>
		                    <option value="남자">남자</option>
		                    <option value="여자">여자</option>
		                    <option value="혼성">혼성</option>
		                  </select>
		                </div>
		              </div>
		              <div class="input-field">
		                <div class="input-select">
		                  <select data-trigger="" class="form-control" id="age" name="age">
		                    <option placeholder="" value="">---나이대---</option>
		                    <option value="중년부">중년부</option>
		                    <option value="청년부">청년부</option>
		                    <option value="청소년부">청소년부</option>
		                    <option value="유소년부">유소년부</option>
		                  </select>
		                </div>
		              </div>
		            </div>
		            <div class="row third">
		              <div class="input-field">
		                <input type="button" id="clubSearchSubmit" class="btn-search" value="검색"></input>
		              </div>
		            </div>
		          </div>
		        </div>
		      </form>
			</div>
		</div>
	</div>
	<div class="one_half">
		<table class="club_list">
			<tr>
				<td class="t1"></td>
				<td>팀명</td>
				<td class="t2">실력</td>
				<td class="t4">나이대</td>
				<td class="t2">성별</td>
				<td class="t4">활동지역</td>
				<td>입단</td>
			</tr>
			
			<!-- 이거 반복 (글씨 색)  -->
			<c:forEach items="${lists }" var="row" varStatus="status"> 
				<tr>
					<input type="hidden" value="${row.c_idx }" />
					<td class="tcol">${status.count }</td>
					<td class="tname">
						<a href='javascript:openClubView(${row.c_idx });'>
							<img src="./../resources/uploadsFile/${row.c_emb }" alt="" />
							${row.c_name }
						</a>
					</td>
					<td class="tcol">${row.c_ability }</td>
					<td class="tcol">${row.c_age }</td>
					<td class="tcol">${row.c_gender }</td>
					<td class="tcol">${row.c_area }</td>
					<td><button type="button" class="btn" data-toggle="modal"
							onclick="modal('${row.c_idx}', '${row.c_name}', '${row.c_ability}', '${row.c_age}', '${row.c_gender}', '${row.c_area}');"
							data-target="#myModal" style="width: 100%; height: 100%;"> 입단 </button>
					</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan='7' style="text-align: center; font-size: 25px;">
					${pagingImg }
				</td>
			</tr>
		</table>
	</div>
	<!-- 모달창 신청폼 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" data-backdrop="static"
		style="color: black;">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
	
				<div class="modal-header">
					<h2 class="modal-title"
						style="font-size: 20px; text-align: center;" id="myModalLabel">입단 신청</h2>
	
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form name="writeFrm" method="post" action="<c:url value="/club/clubApplyAction.do" />" >
				<div class="modal-body">
				
					클럽명 : <span id="list_name"></span><br />
					실력 : <span id="list_ability"></span><br />
					나이대 : <span id="list_age"></span><br />
					성별 : <span id="list_gender"></span><br />
					활동지역 : <span id="list_area"></span><br />				
					<input type="hidden" name="c_idx" id="list_idx" value=""/>
					<input type="hidden" name="m_id" value="${m_id }" />
					당찬 포부의 한마디 : <br />
					<textarea class="form-control" name="memo"
						style="width: 100%; height: 100px; background: #ffffff;"></textarea>
	
				</div>
	
				<div class="modal-footer">
					<button type="submit" class="btn btn-danger" id="clubSubmit" >
						신청하기</button>
				</div>
				</form>
			</div>
		</div>
	</div>
	<!-- ################ 모달 끝 #################-->

</body>
<script>

function modal(idx, name, ability, age, gender, area) {
	
	$('#list_idx').val(idx);
	document.getElementById("list_name").innerHTML = name;
	document.getElementById("list_ability").innerHTML = ability;
	document.getElementById("list_age").innerHTML = age;
	document.getElementById("list_gender").innerHTML = gender;
	document.getElementById("list_area").innerHTML = area;
	
}

function openClubView(c_idx){
	window.open("../club/clubView.do?c_idx="+c_idx, '_blank',
			"width=1500,height=800, toolbar=no, menubar=no, resizable=no");
}

$('#writeFrm').submit(function(){
	alert("신청 완료!");
});

</script>


<script src="./../resources/js/choices.js"/>
</html>