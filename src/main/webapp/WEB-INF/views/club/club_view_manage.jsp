<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이틀</title>

<link href="./../resources/css/club_view2.css" rel="stylesheet">
<link href="./../resources/css/club_view_page.css" rel="stylesheet">
<link href="./../resources/css/chat.css" rel="stylesheet">
<link href="./../resources/admin_css/style.min.css" rel="stylesheet">
<script src="/resources/js/view_custommin.js"></script>
<script src="/resources/js/club_view.js"></script>
<script src="/resources/js/club_sidebarmenu.js"></script>

</head>
<style>
body{
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
<body>
	<div id="main-wrapper">
		<%@ include file="./club_view_header.jsp"%>
		<%@ include file="./club_view_sidebar.jsp"%>
		<div class="page-wrapper">
			<div class="page-breadcrumb">
				<div class="row">
					<div class="col-12 d-flex no-block align-items-center">
						<div class="ml-auto text-right"></div>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-9">
						<div class="card">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									data-toggle="tab" href="#apply" role="tab"><span
										class="hidden-sm-up"></span> <span class="hidden-xs-down">가입
											신청</span></a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#profile" role="tab"><span class="hidden-sm-up"></span>
										<span class="hidden-xs-down">Tab2</span></a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#messages" role="tab"><span class="hidden-sm-up"></span>
										<span class="hidden-xs-down">Tab3</span></a></li>
							</ul>
							<!-- Tab panes -->
							<div class="tab-content tabcontent-border">
								<div class="tab-pane active" id="apply" role="tabpanel">
									<div class="p-20">
										<div class="card-body">

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
													<c:forEach items="${applylists }" var="row" varStatus="status">
														<tr>
															<th>${status.count }</th>
															<th style="cursor: pointer;">${row.m_name }</th>
															<th>${row.m_birth }</th>
															<th>${row.m_position }</th>
															<th>
																<input type="button" id="memoModal" onclick="modal('${row.cm_memo}');"
																class="btn btn-outline-warning" data-target="#myModal"
																style="width: 70px; height: 30px; text-align: center; padding: 0; font-weight: 900;"
																value="가입인사">
															</th>  
															<th><input type="button" id="memberApply" onclick="return memberApply(${clubDTO.c_idx },${row.cm_idx});"
																class="btn btn-outline-success"
																style="width: 70px; height: 30px; text-align: center; padding: 0; font-weight: 900; font-size:20px;"
																value="수락"></th>
															<th><input type="button" id="memberReject" onclick="return memberReject(${clubDTO.c_idx },${row.cm_idx});"
																class="btn btn-outline-danger"
																style="width: 70px; height: 30px; text-align: center; padding: 0; font-weight: 900; font-size:20px;"
																value="거절"></th>
														</tr>
													</c:forEach>
												</table>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane  p-20" id="profile" role="tabpanel">
									<div class="p-20">									</div>
								</div>
								<div class="tab-pane p-20" id="messages" role="tabpanel">
									<div class="p-20">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3" style="height: 600px;">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">채팅</h4>
								<div>
									<input type="hid-den" id="chat_id" value="${param.chat_id }"
										style="border: 1px dotted red;" />
									<div id="chat-container" style="height: 500px; overflow: auto;">
									</div>
								</div>
							</div>
							<div class="card-body border-top">
								<div class="row">
									<div class="col-9">
										<div class="input-field m-t-0 m-b-0">
											<textarea id="inputMessage" placeholder="Type and enter"
												onkeyup="enterkey();" class="form-control border-0"></textarea>
										</div>
									</div>
									<button type="button" onclick="sendMessage();">보내기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer class="footer text-center">
				Copyright © 2020 - All Rights Reserved <a href="#"
					onclick="window.open('${pageContext.request.contextPath }', '_blank','width=#, height=#'); return false">Be-Pro</a>.

			</footer>
		</div>
	</div>
	
	<!-- 모달창 신청폼 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" data-backdrop="static"
		style="color: black;">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
	
				<div class="modal-header">
					<h2 class="modal-title"
						style="font-size: 20px; text-align: center;" id="myModalLabel">가입 인사</h2>
	
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
					당찬 포부의 한마디 : <br />
					<textarea class="form-control" id="memo" name="memo"
						style="width: 100%; height: 100px; background: #ffffff;" readonly></textarea>
	
				</div>
			</div>
		</div>
	</div>
	<!-- ################ 모달 끝 #################-->
</body>
<script>
function modal(memo) {
	
	
	document.getElementById("memo").innerHTML = memo;
	
}

function memberApply(c_idx, cm_idx){
	
	location.href="../club/clubMemberApply.do?c_idx="+ c_idx +"&cm_idx="+cm_idx;
}
function memberReject(c_idx, cm_idx){
	location.href="../club/clubMemberReject.do?c_idx="+ c_idx +"&cm_idx="+cm_idx;
}
</script>

</html>