<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>타이틀</title>

<%-- <%@ include file="../js/kakao.js" %> --%>
<link href="./../resources/css/club_view2.css" rel="stylesheet">
<link href="./../resources/css/club_view_page.css" rel="stylesheet">
<link href="./../resources/admin_css/style.min.css" rel="stylesheet">
<script src="/resources/js/view_custommin.js"></script>
<script src="/resources/js/club_view.js"></script>
<script src="/resources/js/club_sidebarmenu.js"></script>

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

.game_list {
	display: inline-block;
	vertical-align: top;
	font-size: 17px;
	color: #fff;
	margin: 0;
	padding: 0;
	border: 0;
}

.game_list>div:first-child {
	position: relative;
}

.game_list>div {
	min-width: 20px;
	height: 20px;
	line-height: 19px;
	text-align: center;
	margin-right: 1px;
	float: left;
	box-sizing: border-box;
	padding: 0 2px;
	padding-top: 2px;
}

.win {
	background-color: #755bff;
	position: relative;
}

.lose {
	background-color: #26dbe6;
	position: relative;
}

.draw {
	background-color: #656477;
	position: relative;
}
/* Tooltip text */
.tooltiptext {
  visibility: hidden;
  width: 200px;
  background-color: black;
  color: #fff;
  text-align: center;
  padding: 5px 0;
  border-radius: 6px;
  
  position: absolute;
  z-index: 1;
  top: 100%;
  left: 50%;
  margin-left: -100px;
}
.win:hover .tooltiptext {
  visibility: visible;
}
.lose:hover .tooltiptext {
  visibility: visible;
}
.draw:hover .tooltiptext {
  visibility: visible;
}
</style>
<!-- <script type="text/javascript">

Kakao.Link.sendDefault(DefaultFeedSettings);



function send(){
	
	Kakao.init('c7748327b5a31c74b003d0b290d08cca');
	Kakao.isInitialized();
	
	Kakao.Link.createDefaultButton({
	      container: '#kakao-link-btn',
		  objectType: 'feed',
		  content: {
		    title: '디저트 사진',
		    description: '아메리카노, 빵, 케익',
		    imageUrl:
		      'http://mud-kage.kakao.co.kr/dn/NTmhS/btqfEUdFAUf/FjKzkZsnoeE4o19klTOVI1/openlink_640x640s.jpg',
		    link: {
		      mobileWebUrl: 'https://developers.kakao.com',
		      webUrl: 'https://developers.kakao.com',
		      androidExecParams: 'test'
		    },
		  },
		  social: {
		    likeCount: 10,
		    commentCount: 20,
		    sharedCount: 30,
		  },
		  buttons: [
		    {
		      title: '웹으로 이동',
		      link: {
		        mobileWebUrl: 'https://developers.kakao.com',
		        webUrl: 'https://developers.kakao.com'
		      },
		    },
		    {
		      title: '앱으로 이동',
		      link: {
		        mobileWebUrl: 'https://developers.kakao.com',
		        webUrl: 'https://developers.kakao.com'
		      },
		    },
		  ],
		  success: function(response) {
		    console.log(response);
		  },
		  fail: function(error) {
		    console.log(error);
		  }
		});
}
</script> -->
<body onresize="parent.resizeTo(1280,720)" onload="parent.resizeTo(1280,720)"> 
	<div id="main-wrapper">
		<%@ include file="./club_view_header.jsp"%> 
		<%@ include file="./club_view_sidebar.jsp"%>
		<div class="page-wrapper" style="margin-left:200px;margin-top:-20px;">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="tab-content tabcontent-border"
								style="background-color: #eeeeee;">
								<div>
									<div class="p-20">
										<div class="card" style="background-color: #eeeeee;">
											<div class="comment-widgets scrollable">
												<div class="container-fluid" id="mainHolder"
													style="padding-top: 0">
													<div class="row teamheader">
														<div class="col-xs-12"
															style="background-color: #333333; height: 350px; width: 100%;">
															<div class="col-xs-4"
																style="position: relative; height: 100%; margin: 0; padding: 0; display: table;">
																<div class="row"
																	style="height: 80%; margin: 0; padding: 0; vertical-align: middle; margin-top: 20px; display: table-cell;">
																	<div
																		style="border: 12px solid white; border-radius: 50%; background-color: white; height: 250px; width: 250px; display: block; margin: 0 auto;">
																		<div
																			style="height:100%; width:100%; object-fit: contain; background-image:url(./../resources/uploadsFile/${clubDTO.c_emb }); background-position:50% 50%; background-size:210px; background-repeat:no-repeat; border-radius:50%; height:auto;padding-top:100%"></div>
																	</div>
																</div>
															</div>
															<div class="col-xs-8"
																style="color: white; height: 100%; padding-left: 0px;">
																<div class="row"
																	style="margin: 0; padding: 0; margin-top: 20px;">
																	<div class="col-xs-12" style="margin: 0; padding: 0;">
																		<h1
																			style="margin: 0; font-size: 26px; font-weight: 600">${clubDTO.c_name }
																		</h1>
																	</div>
																	<div class="col-xs-4">
																	</div>
																</div>
																<div class="row" style="margin: 0; padding: 0;">
																	<div>
																		<h6
																			style="margin: 0; font-size: 18px; font-weight: 600; color: #7F7F7F; margin-top: 4px;">팀
																			등록일 : ${clubDTO.c_date }</h6>
																	</div>
																</div>
																<div class="container-fluid" style="margin-top: 20px;">
																	<div class="col-xs-5" style="padding-left: 0px;">
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
																		<div class="row"
																			style="margin: 0; padding: 0; margin-bottom: 15px;">
																			<h6
																				style="margin: 0; padding: 0; color: #BFBFBF; font-size: 20px; font-weight: 600; margin-bottom: 15px;">팀소개</h6>
																			<div
																				style="margin: 0; padding: 0; background-color: #ADADAD; height: 165px; width: 300px; border-radius: 15px; padding: 10px; overflow-x: hidden;">
																				${clubDTO.c_memo }</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="row status" style="height: 250px;">
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
															<br />
															<div class="m-t-20">
																<div class="d-flex no-block align-items-center">
																	<span style="font-size: 30px; color: white;">승률</span>
																	<div class="ml-auto">
																		<span
																			style="color: white; font-size: 17px; float: right;">${map.pov}%</span>
																	</div>
																</div>
																<div class="progress">
																	<div class="progress-bar progress-bar-striped"
																		role="progressbar" style="width: ${map.pov}%"
																		aria-valuenow="10" aria-valuemin="0"
																		aria-valuemax="100"></div>
																</div>
																<br /> <span style="font-size: 30px; color: white;">최근
																	10경기</span> <br />
																<div class="game_list" style="width: 480px;">
																	<c:forEach items="${tenHistory }" var="row"
																		varStatus="status">
                                                            		${row }
                                                            	</c:forEach>
																	&nbsp;&nbsp;${map.tenWin}승 ${map.tenDraw}무
																	${map.tenLose}패 <span
																		style="color: white; float: right;">${map.tenPov}%</span>
																</div>
															</div>
															<div style="margin-top: 10px">
																<div class="d-flex no-block align-items-center m-t-25">
																	<span style="font-size: 30px; color: white;"></span>
																</div>
																<div class="progress">
																	<div
																		class="progress-bar progress-bar-striped bg-success"
																		role="progressbar" style=" width: ${map.tenPov}%"  
																		aria-valuenow="25" aria-valuemin="0"
																		aria-valuemax="100"></div>
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
				</div>
			</div>
		</div>
	</div>
</body>

</html>