<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이틀</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<link type="text/css" href="./../resources/css/club_view2.css"
	rel="stylesheet">
<link type="text/css" href="./../resources/css/club_view_page.css"
	rel="stylesheet">
<link type="text/css" href="./../resources/css/chat.css"
	rel="stylesheet">
<link type="text/css" href="./../resources/admin_css/style.min.css"
	rel="stylesheet">
<script type="text/javascript" src="/resources/js/view_custommin.js"></script>
<script type="text/javascript" src="/resources/js/club_view.js"></script>
<script type="text/javascript" src="/resources/js/club_sidebarmenu.js"></script>

	<script src="./../resources/admin_js/bootstrap.min.js"></script>
</head>
<style>
body {
	font-size: 150%;
}

h2 {
	font-size: 250%;
	font-weight: bold;
	text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
	color: #666;
	border-bottom: 2px solid #ccc;
	border-left: 10px solid #55555B;
	margin: 5px 0;
	letter-spacing: 1px;
	word-spacing: 3px;
}

table {
	margin-left: auto;
	margin-right: auto;
	width: 750px;
	table-layout: fixed;
	border-collapse: collapse;
}

td {
	border-bottom: 1px solid #444444;
	width: 70px;
	height: 30px;
}

th {
	height: 40px;
	text-align: center;
	border-bottom: 1px solid #444444;
}

</style>
<body onresize="parent.resizeTo(1280,720)" onload="parent.resizeTo(1280,720)" >
	<div id="main-wrapper">
		<%@ include file="./club_view_header.jsp"%>
		<%@ include file="./club_view_sidebar.jsp"%>
		<div class="page-wrapper" style="margin-left:200px;margin-top:-20px;">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12"> 
						<div class="card">
							<!-- Nav tabs -->
							<!-- Tab panes -->
							<div class="tab-content tabcontent-border">
								<div>
									<div class="p-20">
										<div class="card">
											<div class="card-body">
                                                <h4 class="card-title" style="text-align: center; font-size: 30px;">클럽 회원 관리</h4>
												<div>
													<h4 style="margin-left: 80px;">신청 접수 현황</h4>
												</div>
												<div class="comment-widgets scrollable">
													<table style="width: 570px;">
														<tr style="border-bottom: 3px solid rgb(59, 209, 116)">
															<th style="width: 70px;">번호</th>
															<th style="width: 100px;">이름</th>
															<th style="width: 80px;">생년월일</th>
															<th style="width: 150px;">선호 포지션</th>
															<th style="width: 150px;">가입 인사</th>
															<th colspan="2" style="width: 150px;">수락/거절</th>
														</tr>
														<c:forEach items="${applylists }" var="row"
															varStatus="status">
															<tr>
																<th>${status.count }</th>
																<th style="cursor: pointer;">${row.m_name }</th>
																<th>${row.m_birth }</th>
																<th>${row.m_position }</th>
																<th><input type="button" id="memoModal"
																	onclick="modal('${row.cm_memo}');"
																	class="btn btn-outline-warning" data-target="#myModal"
																	style="width: 70px; height: 30px; text-align: center; padding: 0; font-weight: 900;"
																	value="가입인사"></th>
																<th><input type="button" id="memberApply"
																	onclick="return memberApply(${clubDTO.c_idx },${row.cm_idx});"
																	class="btn btn-outline-success"
																	style="width: 70px; height: 30px; text-align: center; padding: 0; font-weight: 900; font-size: 20px;"
																	value="수락"></th>
																<th><input type="button" id="memberReject"
																	onclick="return memberReject(${clubDTO.c_idx },${row.cm_idx});"
																	class="btn btn-outline-danger"
																	style="width: 70px; height: 30px; text-align: center; padding: 0; font-weight: 900; font-size: 20px;"
																	value="거절"></th>
															</tr>
														</c:forEach>
													</table>
												</div>
												<br />
												<br />
												
												<div>
													<h4 style="margin-left: 80px;">권한 관리</h4>
												</div>
													<div class="comment-widgets scrollable">
														<table style="width: 600px;">
															<tr style="border-bottom: 3px solid rgb(59, 209, 116)">
																<th style="width: 130px;">이름</th>
																<th style="width: 130px;">생년월일</th>
																<th style="width: 130px;">전화번호</th>
																<th style="width: 130px;">직책</th>
																<th style="width: 130px">직책변경</th>
																<th style="width: 130px;">방출</th>
															</tr>
															<c:forEach items="${gradelists }" var="row" varStatus="status">
																<tr>
																	<th>${row.m_name }</th>
																	<th>${row.m_birth }</th>
																	<th>${row.m_phone }</th>
																	<th>
																		<c:choose>
																			<c:when test="${row.cm_grade == 'head'}" >
																				팀장
																			</c:when>
																			<c:when test="${row.cm_grade == 'coach'}">
																				코치
																			</c:when>
																			<c:when test="${row.cm_grade == 'player'}">
																				팀원
																			</c:when>
																		</c:choose>
																	</th>
																	<th>
																		<button class="btn btn-outline-warning" type="button" data-toggle="modal"
																			data-target="#authModal1" style="font-size:15px; font-weight:900"
																			onclick="changeAuth('${row.cm_grade}', '${row.m_id }');">직책 변경
																		</button>
																	</th>
																	<th>
																		<input type="button" id="memberRelease"
																		onclick="return memberReject(${clubDTO.c_idx },${row.cm_idx});"
																		class="btn btn-outline-danger"
																		style="width: 70px; height: 30px; font-size:15px; text-align: center; padding: 0; font-weight: 900;"
																		value="방출">
																	</th>
																</tr>
															</c:forEach>
														</table>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- The Modal -->
	<div class="modal" id="authModal1" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" data-backdrop="static"
	style="color: black;">
	  <div class="modal-dialog">
	    <div class="modal-content">
	    <form name="form" action="<c:url value="/club/clubManageEdit.do" />"  method="post" onsubmit="return change_auth(this);">
	      <!-- Modal Header -->
	      <div class="modal-header">
	       <h2 class="modal-title"
				style="font-size: 20px; text-align: center;" id="myModalLabel">직책변경</h2>
	      </div>
	      <div class="modal-body" style="text-align:center;">
	      	<input type="hidden" name="c_idx" value="${clubDTO.c_idx }" />
			<input type="hidden" id="grade" name="grade">
			<input type="hidden" id="m_id" name="m_id">
	      	<select id="cm_grade" name="cm_grade" style="width: 150px; height:30px;"></select>
	      </div>
	      
	      <!-- Modal footer -->
	      <div class="modal-footer">
	      	<input type="submit" class="btn btn-outline-success" value="저장" style="width:50px; height:30px; font-size:15px;">
			<input type="button" class="btn btn-outline-danger" data-dismiss="modal" value="취소" style="width:50px; height:30px; font-size:15px;">
	      </div>
	      </form>
	    </div>
	  </div>
	</div>  
	
</body>
<script>
function modal(memo) {
	
	
	document.getElementById("memo").innerHTML = memo;
	
}

function authModal(cm_grade, cm_idx) {
	console.log(123);
	
	
	
}

function memberApply(c_idx, cm_idx){
	
	location.href="../club/clubMemberApply.do?c_idx="+ c_idx +"&cm_idx="+cm_idx;
}
function memberReject(c_idx, cm_idx){
	if(confirm("정말 방출하시겠습니까?")) {
		location.href="../club/clubMemberRelease.do?c_idx="+ c_idx +"&cm_idx="+cm_idx;
	}
	
}

function change_auth(f){
	
	var cm_grade = document.getElementById("cm_grade");
	
	if(cm_grade.options[cm_grade.selectedIndex].value==""){
		alert("직책을 선택해주세요.");
		f.cm_grade.focus();
		return false;
	}
	
	alert("직책이 변경되었습니다.");
}

function changeAuth(grade, m_id){
	document.getElementById("grade").value = grade;
	document.getElementById("m_id").value = m_id;
	
	var select = document.getElementById("cm_grade");
	
	var head = new Option();
	head.value = "head";
	head.text = "팀장";
	
	var coach = new Option();
	coach.value = "coach";
	coach.text = "코치";
	
	var player = new Option();
	player.value = "player";
	player.text = "팀원";
	
	if(grade == "player") {
		select.options.length = 0;
		select.add(head);
		select.add(coach);
	}
	else if(grade == "head") {
		select.options.length = 0;
		select.add(player);
		select.add(coach);
	}
	else if(grade == "coach") {
		select.options.length = 0;
		select.add(player);
		select.add(head);
	}
}
</script>

</html>