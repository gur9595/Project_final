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
<link href="./../resources/admin_css/style.min.css" rel="stylesheet">
<script src="./../resources/js/kakao.js"></script>
<script src="./../resources/js/kakao.min.js"></script>

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

<body  onresize="parent.resizeTo(1280,720)" onload="parent.resizeTo(1280,720)">
	<div id="main-wrapper">
		<%@ include file="./club_view_header.jsp"%>
		<%@ include file="./club_view_sidebar.jsp"%>
		<div class="page-wrapper" style="margin-top:-20px;">
			<div class="container-fluid">
				<div class="row">
					<!-- column -->
					<div class="col-lg-12">
						<!-- Tabs -->
						<div class="card">
							<div class="tab-content tabcontent-border">
								<div>
									<div class="p-20">
										<div class="card">
											<div class="card-body">
												<h4 class="card-title"
													style="text-align: center; font-size: 30px;">클럽 경기</h4>
											</div>
											<div>
												<h4 style="margin-left: 80px;">경기 일정</h4>
											</div>
											<div class="comment-widgets scrollable"
												style="min-height: 200px; max-height: 400px;">
												<table style="width: 800px;">
													<tr style="border-bottom: 3px solid rgb(59, 209, 116)">
														<th style="width: 120px;">날짜</th>
														<th style="width: 50px;">시간</th>
														<th style="width: 200px;">구장 이름</th>
														<th style="width: 100px;">상대팀</th>
														<th>공유</th>
														<th colspan="2" style="width: 100px;">참가여부</th>
														<c:if test="${getCmgrade.cm_grade =! 'player'}">
															<th colspan="2" style="width: 120px;">임원전용</th>
														</c:if>
													</tr>

													<c:forEach items="${lists }" var="row" varStatus="status">

														<tr>
															<input type="hidden" value="${row.g_num }" />
															<th>${row.g_date }</th>
															<th>${row.g_time }</th>
															<th>${row.g_sname }</th>
															<th><c:choose>
																	<c:when test="${row.c_name == '' }">없음</c:when>
																	<c:otherwise>
																		<a href="javascript:openClubView(${row.c_idx})">${row.c_name }</a>
																	</c:otherwise>
																</c:choose></th>
															<th><a id="kakao-link-btn"
																href="javascript:sendLink('${row.g_saddr }','${row.g_sname }','${row.g_date }',${param.c_idx})">
																	<img
																	src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_small.png" />
															</a></th>
															<th><input type="button"
																onclick="javascript:gameMemberApply(${param.c_idx},${row.g_idx},${m_id })"
																class="btn btn-outline-success"
																style="width: 50px; height: 30px; text-align: center; padding: 0; font-weight: 900; font-size: 17px;"
																value="참가"></th>
															<th><input type="button"
																onclick="javascript:gameMemberDrop(${param.c_idx},${row.g_idx},${m_id })"
																class="btn btn-outline-danger"
																style="width: 50px; height: 30px; text-align: center; padding: 0; font-weight: 900; font-size: 17px;"
																value="불참"></th>
															<c:if test="${getCmgrade.cm_grade =! 'player'}">
																<th><input type="button"
																	class="btn btn-outline-primary"
																	style="width: 65px; height: 30px; text-align: center; padding: 0; font-weight: 900; font-size: 16px;"
																	value="용병고용"></th>
																<th><input type="button" id="cancel"
																	class="btn btn-outline-secondary"
																	style="width: 50px; height: 30px; text-align: center; padding: 0; font-weight: 900; font-size: 17px;"
																	value="취소"></th>
															</c:if>
														</tr>
													</c:forEach>
												</table>
											</div>
											<br />
											<br />

											<c:choose>
												<c:when test="${getCmgrade.cm_grade == 'player' }">

												</c:when>
												<c:otherwise>
													<div>
														<h4 style="margin-left: 80px;">신청 접수 현황</h4>
													</div>
													<div class="comment-widgets scrollable">
														<table style="width: 800px;">
															<tr style="border-bottom: 3px solid rgb(59, 209, 116)">
																<th style="width: 180px;">날짜</th>
																<th style="width: 100px;">시간</th>
																<th style="width: 200px;">구장 이름</th>
																<th style="width: 200px;">상대팀</th>
																<th colspan="2" style="width: 120px;">수락/거절</th>
															</tr>
															<c:forEach items="${lists2 }" var="row"
																varStatus="status">
																<tr>
																	<th>${row.g_date }</th>
																	<th>${row.g_time }</th>
																	<th>${row.g_sname }</th>
																	<th><a
																		href="javascript:openClubView(${row.c_idx})">${row.c_name }</a></th>
																	<th><input type="button"
																		onclick="javascript:ClubMatchApply(${param.c_idx},${row.g_idx},${row.g_num})"
																		class="btn btn-outline-success"
																		style="width: 55px; height: 30px; text-align: center; padding: 0; font-weight: 900; font-size: 17px;"
																		value="수락"></th>
																	<th><input type="button"
																		onclick="javascript:ClubMatchReject(${param.c_idx},${row.g_idx},${row.g_num})"
																		class="btn btn-outline-danger"
																		style="width: 55px; height: 30px; text-align: center; padding: 0; font-weight: 900; font-size: 17px;"
																		value="거절"></th>
																</tr>
															</c:forEach>
														</table>
													</div>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${getCmgrade.cm_grade == 'player' }">

												</c:when>
												<c:otherwise>
													<div>
														<h4 style="margin-left: 80px;">우리 신청 현황</h4>
													</div>
													<div class="comment-widgets scrollable"
														style="min-height: 200px; max-height: 400px;">
														<table style="width: 800px;">
															<tr style="border-bottom: 3px solid rgb(59, 209, 116)">
																<th style="width: 180px;">날짜</th>
																<th style="width: 100px;">시간</th>
																<th style="width: 200px;">구장 이름</th>
																<th style="width: 200px;">상대팀</th>
																<th style="width: 120px;">신청 취소</th>
															</tr>
															<c:forEach items="${lists3 }" var="row"
																varStatus="status">
																<tr>
																	<th>${row.g_date }</th>
																	<th>${row.g_time }</th>
																	<th>${row.g_sname }</th>
																	<th><a
																		href="javascript:openClubView(${row.c_idx})">${row.c_name }</a></th>
																	<th><input type="button"
																		class="btn btn-outline-danger"
																		style="width: 55px; height: 30px; text-align: center; padding: 0; font-weight: 900; font-size: 17px;"
																		value="거절"
																		onclick="javascript:ClubMatchReject(${param.c_idx},${row.g_idx});"></th>
																</tr>
															</c:forEach>
														</table>
													</div>
												</c:otherwise>
											</c:choose>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- column -->
				</div>
			</div>
		</div> 
	</div>
</body>
<script>
		Kakao.init('c7748327b5a31c74b003d0b290d08cca');

  function sendLink(g_saddr,g_sname,g_date,c_idx) {

		//<![CDATA[
    Kakao.Link.sendDefault({ 

      objectType: 'location',
      address: g_saddr, 
      addressTitle: g_sname,
      content: {
        title: '매치가 있어요 ! !',
        description: '경기일자 : '+g_date,
        imageUrl:
          'https://k.kakaocdn.net/14/dn/btqGqPD04PW/nB2RmOkQJODfsSrewLX9R0/o.jpg',
        link: {
          mobileWebUrl: 'http://localhost:8282/project_final/club/clubView.do?c_idx='+c_idx,
          webUrl: 'http://localhost:8282/project_final/club/clubKaKaoView.do?c_idx='+c_idx,
        }, 
      },
      buttons: [
        {
          title: '신청하러 가기',
          link: {
            mobileWebUrl: 'http://localhost:8282/project_final/club/clubView.do?c_idx='+c_idx,
            webUrl: 'http://localhost:8282/project_final/club/clubKaKaoView.do?c_idx='+c_idx,
          },
        },
      ],
    });
	//]]>
  }

	function openClubView(c_idx){
		window.open("../club/clubView.do?c_idx="+c_idx, '_blank',
				"width=1280,height=720, toolbar=no, menubar=no, resizable=no");
	}
	function ClubMatchApply(c_idx,g_idx,g_num){
		alert("수락 완료!");
		location.href="../club/ClubMatchApply.do?c_idx="+c_idx+"&g_idx="+ g_idx + "&g_num=" + g_num;
	}
	function ClubMatchReject(c_idx,g_idx){
		alert("거절 완료");
		location.href="../club/ClubMatchReject.do?c_idx="+c_idx+"&g_idx="+ g_idx;
	}
	
	function gameMemberApply(c_idx,g_idx,m_id) {
		alert("신청 완료!");
		location.href="../club/gameMemberApply.do?c_idx="+c_idx+"&g_idx="+ g_idx +"&m_id="+m_id;
	}
	function gameMemberDrop(c_idx,g_idx,m_id) {
		alert("변경 완료");
		location.href="../club/gameMemberDrop.do?c_idx="+c_idx+"&g_idx="+ g_idx +"&m_id="+m_id;
	}
	
</script>
</html>