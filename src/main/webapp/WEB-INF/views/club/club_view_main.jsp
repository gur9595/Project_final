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
        color: #666; border-bottom: 2px solid #ccc;
        border-left: 10px solid #55555B;
        margin: 5px 0; letter-spacing: 1px; word-spacing: 3px;
    }
    table{
        margin-left: auto; margin-right: auto;
        width: 750px;
        table-layout: fixed;
        border-collapse: collapse;
    }
    td{
        border-bottom: 1px solid #444444;
        width: 70px; height: 30px;
    }
    th{
        height:40px; text-align: center;
        border-bottom: 1px solid #444444;
    }

}
</style>
<body>
    <div id="main-wrapper">
    	<%@ include file="./club_view_header.jsp" %>
        <%@ include file="./club_view_sidebar.jsp" %>
        <div class="page-wrapper">
             <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <div class="ml-auto text-right">
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid" >
                <div class="row">
                    <div class="col-lg-9"> 
                        <div class="card">
                            <div class="tab-content tabcontent-border" style="background-color : #eeeeee;">
                                <div>
                                    <div class="p-20">
                                        <div class="card" style="background-color : #eeeeee;">
                                            <div class="comment-widgets scrollable">                           
                                                <div class="container-fluid" id="mainHolder" style="padding-top: 0">
                                                    <div class="row teamheader">
                                                    	<div class="col-xs-12" style="background-color:#333333; height:350px; width:100%;">
                                                  		<div class="col-xs-4" style=" position:relative; height:100%;margin:0; padding:0; display:table;">
                                                     		<div class="row" style="height:80%;margin:0; padding:0; vertical-align:middle; margin-top:20px; display:table-cell;">
                                                       			<div style="border:12px solid white;border-radius:50%; background-color:white; height:250px; width:250px; display:block;margin:0 auto;">
 							 									<div style="height:100%; width:100%; object-fit: contain; background-image:url(./../resources/uploadsFile/${clubDTO.c_emb }); background-position:50% 50%; background-size:210px; background-repeat:no-repeat; border-radius:50%; height:auto;padding-top:100%"></div>
																</div>
                                                    		</div>
 														</div>
                                                  		<div class="col-xs-8" style="color:white; height:100%; padding-left: 0px;">
                                                   	 		<div class="row" style="margin:0; padding:0; margin-top:20px;">
                                                   			<div class="col-xs-12" style="margin:0; padding:0;">
                                                     			<h1 style="margin:0; font-size:26px; font-weight:600">${clubDTO.c_name }</h1>
                                                   			</div>
                                                      	<div class="col-xs-4"></div>
                                                   	 		</div>
                                                    		<div class="row" style="margin:0; padding:0;">
                                                      		<div>
                                                        		<h6 style="margin:0;font-size:18px; font-weight:600; color:#7F7F7F; margin-top:4px;">팀 등록일 : ${clubDTO.c_date }</h6>
                                                      		</div>
                                                    	</div>
                                                   		<div class="container-fluid" style="margin-top:20px;">
                                                      		<div class="col-xs-5" style=" padding-left: 0px;" >
	                                                        <table style="width: 100%;">
	                                                            <tr>
	                                                                <td style="border-bottom: none; width: 50px;">·팀장</td>
	                                                                <td style="border-bottom: none";>${memberDTO.m_name}</td>
	                                                            </tr>
	                                                            <tr>
	                                                                <td style="border-bottom: none">·연령대</td>
	                                                                <td style="border-bottom: none">${clubDTO.c_age }</td>
	                                                            </tr>
	                                                            <tr>
	                                                                <td style="border-bottom: none">·성별</td>
	                                                                <td style="border-bottom: none">${clubDTO.c_gender }</td>
	                                                            </tr>
	                                                            <tr>
	                                                                <td style="border-bottom: none">·회원수</td>
	                                                                <td style="border-bottom: none">${clubMemberCount}명</td>
	                                                            </tr>  
	                                                            <tr>
	                                                                <td style="border-bottom: none">·실력</td>
	                                                                <td style="border-bottom: none">${clubDTO.c_ability }</td>
	                                                            </tr>
	                                                            <tr>
	                                                                <td style="border-bottom: none">·유형</td>
	                                                                <td style="border-bottom: none">${clubDTO.c_type }</td>
	                                                            </tr>
	                                                            <tr>
	                                                                <td style="border-bottom: none">·활동지역</td>
	                                                                <td style="border-bottom: none">${clubDTO.c_area }</td>
	                                                            </tr>
	                                                        </table>
                                                      		</div>
                                                      		<div class="col-xs-7">
                                                          		<div class="row" style="margin:0; padding:0; margin-bottom:15px;">
                                                              		<h6 style="margin:0; padding:0; color:#BFBFBF; font-size:20px; font-weight:600; margin-bottom:15px;">팀 소개</h6>
                                                          	  		<div style="margin:0; padding:0; background-color:#ADADAD;height:165px; width:300px; border-radius:15px;padding:10px; overflow-x:hidden;">
																		${clubDTO.c_memo }
                                                              		</div>
                                                          		</div>
                                                      		</div>
                                                    	</div>
                                                  	</div>
                                                </div>
                                                    </div>
                                                    <div class="row status" style="height:250px;">
                                                    <div class="col-xs-6 log-outer-holder">
                                                        <div class="log-inner-holder">
                                                        <table class="table log" style="height: 170px;">
                                                            <thead>
                                                            <tr>
                                                                <th rowspan="2">총</th>
                                                                <th rowspan="2">승</th>
                                                                <th rowspan="2">무</th>
                                                                <th rowspan="2">패</th>
                                                                <th colspan="2">경기당</th>
                                                            </tr>
                                                            <tr>
                                                                <th>득점</th>
                                                                <th>실점</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                            <tr style="font-weight: bolder;">
                                                                <td style="vertical-align: middle;">${map.total }</td>
                                                                <td style="vertical-align: middle;">${map.wins }</td>
                                                                <td style="vertical-align: middle;">${map.draws }</td>
                                                                <td style="vertical-align: middle;">${map.loses }</td>
                                                                <td style="vertical-align: middle;">${map.goals }</td>
                                                                <td style="vertical-align: middle;">${map.op_goal }</td>
                                                            </tr>
                                                            </tbody>
                                                        </table>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-6 log-outer-holder">
                                                        <div class="m-t-20">
                                                            <div class="d-flex no-block align-items-center">
                                                                <span style="font-size: 30px; color: white;">승률</span>
                                                                <div class="ml-auto">
                                                                    <span style="color: white;">50%</span>
                                                                </div>
                                                            </div>
                                                            <div class="progress">
                                                                <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 50%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="d-flex no-block align-items-center m-t-25">
                                                                <span style="font-size: 30px; color: white;"></span>
                                                                <div class="ml-auto">
                                                                    <span style="color: white;">${clubMemberCount}%</span>
                                                                </div>
                                                            </div>
                                                            <div class="progress">
                                                                <div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: ${clubMemberCount}%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
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
                    </div>
                    <div class="col-lg-3" style="height:600px;">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">채팅</h4>
								<div >
									<input type="hid-den" id="chat_id" value="${param.chat_id }" style="border:1px dotted red;" />
									<div id="chat-container" style="height:500px;overflow:auto;">		
									</div>
								</div>
                            </div>
                            <div class="card-body border-top">
                                <div class="row">
                                    <div class="col-9">
                                        <div class="input-field m-t-0 m-b-0">
                                            <textarea id="inputMessage" placeholder="Type and enter" onkeyup="enterkey();" class="form-control border-0"></textarea>
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
                Copyright © 2020 - All Rights Reserved <a href="#" onclick="window.open('${pageContext.request.contextPath }', '_blank','width=#, height=#'); return false">Be-Pro</a>.

            </footer>
        </div>
    </div>
</body>
<script type="text/javascript">
var messageWindow;
var inputMessage;
var chat_id;
var webSocket;
window.onload = function(){
	
	//대화가 디스플레이 되는 영역
	messageWindow = document.getElementById("chat-container");
	
	//대화영역의 스크롤바를 항상 아래로 내려준다.
	messageWindow.scrollTop =  messageWindow.scrollHeight;
	
	inputMessage = document.getElementById('inputMessage');
	
	chat_id = document.getElementById('chat_id').value;
	
	webSocket =
		new WebSocket('ws://localhost:8282/K07JSPServlet/ChatServer02');
	webSocket.onopen = function(event){
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
	 
	if(content == "") {
		//전송한 메세지가 없다면 아무일도 하지 않는다.
	}
	else{
		//보낸 메세지에...
		if(content.match("/")){
			//슬러쉬가 포함되어있다면 명령어로 인식...
			if(content.match(("/" + chat_id))) {
				//귓속말 명령어를 한글로 대체한 후
				var temp = content.replace(("/" + chat_id), "[귓속말]:");
				msg = makeBalloon(sender, temp);
				messageWindow.innerHTML += msg;
				//스크롤바 처리
				messageWindow.scrollTop = messageWindow.scrollHeight;
			}
		}
		else{
			//귓속말이 아니면 모두에게 디스플레이 한다.
			msg = makeBalloon(sender, content);
			messageWindow.innerHTML += msg;
			//스크롤바 처리 
			messageWindow.scrollTop = messageWindow.scrollHeight;
		}
	}
}
//상대방이 보낸 메세지를 출력하기 위한 부분
function makeBalloon(id, cont){
	var msg = '';
	msg += '<div class="chat chat-left">';
	msg += '	<!-- 프로필 이미지 -->';
	msg += '	<span class="profile profile-img-b"></span>';
	msg += '	<div class="chat-box">';
	msg += '		<p style="font-weight:bold; font-size:1.1em; margin-bottom:5px;">'+id+'</p>';
	msg += '		<p class="bubble">'+cont+'</p>';
	msg += '		<span class="bubble-tail"></span>';
	msg += '	</div>';
	msg += '</div>';
	return msg;
}
function wsClose(event){
	messageWindow.value += "연결끊기성공\n";
}

function sendMessage() {
	
	//웹소켓 서버로 대화내용을 전송한다.
	webSocket.send(chat_id+'|' +inputMessage.value);
	
	var msg = '';
	msg += '<div class="chat chat-right">';
	msg += '	<!-- 프로필 이미지 -->';
	msg += '	<span class="profile profile-img-a"></span>';
	msg += '	<div class="chat-box">';
	msg += '		<p class="bubble-me">'+inputMessage.value+'</p>';
	msg += '		<span class="bubble-tail"></span>';
	msg += '	</div>';
	msg += '</div>';
	
	//내가 보낸 메세지를 대화창에 출력한다.
	messageWindow.innerHTML += msg;
	inputMessage.value = "";
	
	//대화영역의 스크롤바를 아래로 내려준다.
	messsageWindow.scrollTop = messageWindow.scrollHeight;
}
function enterkey(){
	/*
	키보드를 눌렀다가 땠을 때 호출되며, 눌려진 키보드의 키코드가
	13일 때, 즉 엔터일 때 아래 함수를 호출한다.
	*/
	if(window.event.keyCode==13){
		sendMessage();
	}
}
</script>
</html>