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
															<th>모달 버튼</th>  
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
									<div class="p-20">
										<img src="../../assets/images/background/img4.jpg"
											class="img-fluid">
										<p class="m-t-10">And is full of waffle to It has multiple
											paragraphs and is full of waffle to pad out the comment.
											Usually, you just wish these sorts of comments would come to
											an end.multiple paragraphs and is full of waffle to pad out
											the comment..</p>
									</div>
								</div>
								<div class="tab-pane p-20" id="messages" role="tabpanel">
									<div class="p-20">
										<p>And is full of waffle to It has multiple paragraphs and
											is full of waffle to pad out the comment. Usually, you just
											wish these sorts of comments would come to an end.multiple
											paragraphs and is full of waffle to pad out the comment..</p>
										<img src="../../assets/images/background/img4.jpg"
											class="img-fluid">
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

function memberApply(c_idx, cm_idx){
	
	location.href="../club/clubMemberApply.do?c_idx="+ c_idx +"&cm_idx="+cm_idx;
}
function memberReject(c_idx, cm_idx){
	location.href="../club/clubMemberReject.do?c_idx="+ c_idx +"&cm_idx="+cm_idx;
}
</script>
<script type="text/javascript">
	var messageWindow;
	var inputMessage;
	var chat_id;
	var webSocket;

	window.onload = function() {

		//대화가 디스플레이 되는 영역
		messageWindow = document.getElementById("chat-container");

		//대화영역의 스크롤바를 항상 아래로 내려준다.
		messageWindow.scrollTop = messageWindow.scrollHeight;

		inputMessage = document.getElementById('inputMessage');

		chat_id = document.getElementById('chat_id').value;

		webSocket = new WebSocket(
				'ws://localhost:8282/K07JSPServlet/ChatServer02');
		webSocket.onopen = function(event) {
			wsOpen(event);
		};
		//연결되었을 때
		webSocket.onopen = function(event) {
			wsOpen(event);
		};
		//메세지가 전송될 때
		webSocket.onmessage = function(event) {
			wsMessage(event);
		};
		//웹소켓이 닫혔을 때
		webSocket.onclose = function(event) {
			wsClose(event);
		};
		//에러가 발생했을 때
		webSocket.onerror = function(event) {
			wsError(event);
		};
	}
	function wsOpen(event) {
		messageWindow.value += "연결성공\n";
	}

	function wsMessage(event) {

		var message = event.data.split("|");
		var sender = message[0];
		var content = message[1];
		var msg;

		if (content == "") {
			//전송한 메세지가 없다면 아무일도 하지 않는다.
		} else {
			//보낸 메세지에...
			if (content.match("/")) {
				//슬러쉬가 포함되어있다면 명령어로 인식...
				if (content.match(("/" + chat_id))) {
					//귓속말 명령어를 한글로 대체한 후
					var temp = content.replace(("/" + chat_id), "[귓속말]:");
					msg = makeBalloon(sender, temp);
					messageWindow.innerHTML += msg;
					//스크롤바 처리
					messageWindow.scrollTop = messageWindow.scrollHeight;
				}
			} else {
				//귓속말이 아니면 모두에게 디스플레이 한다.
				msg = makeBalloon(sender, content);
				messageWindow.innerHTML += msg;
				//스크롤바 처리 
				messageWindow.scrollTop = messageWindow.scrollHeight;
			}
		}
	}

	//상대방이 보낸 메세지를 출력하기 위한 부분
	function makeBalloon(id, cont) {
		var msg = '';
		msg += '<div class="chat chat-left">';
		msg += '	<!-- 프로필 이미지 -->';
		msg += '	<span class="profile profile-img-b"></span>';
		msg += '	<div class="chat-box">';
		msg += '		<p style="font-weight:bold; font-size:1.1em; margin-bottom:5px;">'
				+ id + '</p>';
		msg += '		<p class="bubble">' + cont + '</p>';
		msg += '		<span class="bubble-tail"></span>';
		msg += '	</div>';
		msg += '</div>';
		return msg;
	}
	function wsClose(event) {
		messageWindow.value += "연결끊기성공\n";
	}
	function wsError(event) {
		alert(event.data);
	}

	function sendMessage() {

		//웹소켓 서버로 대화내용을 전송한다.
		webSocket.send(chat_id + '|' + inputMessage.value);

		var msg = '';
		msg += '<div class="chat chat-right">';
		msg += '	<!-- 프로필 이미지 -->';
		msg += '	<span class="profile profile-img-a"></span>';
		msg += '	<div class="chat-box">';
		msg += '		<p class="bubble-me">' + inputMessage.value + '</p>';
		msg += '		<span class="bubble-tail"></span>';
		msg += '	</div>';
		msg += '</div>';

		//내가 보낸 메세지를 대화창에 출력한다.
		messageWindow.innerHTML += msg;
		inputMessage.value = "";

		//대화영역의 스크롤바를 아래로 내려준다.
		messsageWindow.scrollTop = messageWindow.scrollHeight;
	}

	function enterkey() {
		/*
		키보드를 눌렀다가 땠을 때 호출되며, 눌려진 키보드의 키코드가
		13일 때, 즉 엔터일 때 아래 함수를 호출한다.
		 */
		if (window.event.keyCode == 13) {
			sendMessage();
		}
	}
</script>
</html>