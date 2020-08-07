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
</style>
<body>
    <div id="main-wrapper">
    	<%@ include file="./club_view_header.jsp" %>
    	<%@ include file="./club_view_sidebar.jsp" %>
        
		<div class="page-wrapper">     
            <div class="container-fluid">
                <div class="row">
                    <!-- column -->
                    <div class="col-lg-9">
                        <!-- Tabs -->
                        <div class="card">
                            <div class="tab-content tabcontent-border">
                                <div>
                                    <div class="p-20">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title" style="text-align: center; font-size: 30px;">전술</h4>
                                            </div><div>
                                                <h4 style="margin-left: 80px;">경기 리스트</h4>
                                            </div>
                                            <div class="comment-widgets scrollable">
                                                <table style="width:800px;">
                                                    <tr style="border-bottom: 3px solid rgb(59, 209, 116)">
                                                        <th style="width:120px;">날짜</th>
                                                        <th style="width:50px;">시간</th>
                                                        <th style="width:200px;">구장 이름</th>
                                                        <th style="width:100px;">상대팀</th>
                                                        <th style="width:100px;">포메이션 확인</th>
                                                        <th style="width:120px;">포메이션 작성</th>         
                                                    </tr>

                                                    <c:forEach items="${lists }" var="row" varStatus="status"> 
														<tr>
															<th>${row.g_date }</th>
															<th>${row.g_time }</th>
															<th>${row.g_sname }</th>
															<th>${row.c_name }</th>
															<th><input type="button" class="btn btn-outline-success" onclick="javascript:openFormCheck(${row.g_idx})" style="width:65px; height: 30px; text-align: center; padding: 0; font-weight:900; font-size:17px;" value="확인" ></th>
	                                                        <th><input type="button" class="btn btn-outline-primary" onclick="javascript:openFormMake(${row.g_idx})" style="width:65px; height: 30px; text-align: center; padding: 0; font-weight:900; font-size:17px;" value="작성"></th>
														</tr>
													</c:forEach>
                                                </table> 
                                            </div>
                                        </div>      
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- column -->
                    <div class="col-lg-3">
                        <!-- Card -->
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Chat Option</h4>
                                <div class="chat-box scrollable" style="height:475px;">
                                    <!--chat Row -->
                                    <ul class="chat-list">
                                        <!--chat Row -->
                                        <li class="chat-item">
                                            <div class="chat-img"><img src="../../assets/images/users/1.jpg" alt="user"></div>
                                            <div class="chat-content">
                                                <h6 class="font-medium">James Anderson</h6>
                                                <div class="box bg-light-info">Lorem Ipsum is simply dummy text of the printing &amp; type setting industry.</div>
                                            </div>
                                            <div class="chat-time">10:56 am</div>
                                        </li>
                                        <!--chat Row -->
                                        <li class="chat-item">
                                            <div class="chat-img"><img src="../../assets/images/users/2.jpg" alt="user"></div>
                                            <div class="chat-content">
                                                <h6 class="font-medium">Bianca Doe</h6>
                                                <div class="box bg-light-info">It’s Great opportunity to work.</div>
                                            </div>
                                            <div class="chat-time">10:57 am</div>
                                        </li>
                                        <!--chat Row -->
                                        <li class="odd chat-item">
                                            <div class="chat-content">
                                                <div class="box bg-light-inverse">I would love to join the team.</div>
                                                <br>
                                            </div>
                                        </li>
                                        <!--chat Row -->
                                        <li class="odd chat-item">
                                            <div class="chat-content">
                                                <div class="box bg-light-inverse">Whats budget of the new project.</div>
                                                <br>
                                            </div>
                                            <div class="chat-time">10:59 am</div>
                                        </li>
                                        <!--chat Row -->
                                        <li class="chat-item">
                                            <div class="chat-img"><img src="../../assets/images/users/3.jpg" alt="user"></div>
                                            <div class="chat-content">
                                                <h6 class="font-medium">Angelina Rhodes</h6>
                                                <div class="box bg-light-info">Well we have good budget for the project</div>
                                            </div>
                                            <div class="chat-time">11:00 am</div>
                                        </li>
                                        <!--chat Row -->
                                    </ul>
                                </div>
                            </div>
                            <div class="card-body border-top">
                                <div class="row">
                                    <div class="col-9">
                                        <div class="input-field m-t-0 m-b-0">
                                            <textarea id="textarea1" placeholder="Type and enter" class="form-control border-0"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <a class="btn-circle btn-lg btn-cyan float-right text-white" href="javascript:void(0)"><i class="fas fa-paper-plane"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer text-center">
            </footer>
        </div>
    </div>
</body>
<script>
	function openFormMake(g_idx){
		
		window.open("../club/clubMakeFormation.do?g_idx="+g_idx, '_blank', 
				"width=800,height=650, toolbar=no, menubar=no, resizable=no");
	}
	function openFormCheck(g_idx){
		
		window.open("../club/clubCheckFormation.do?g_idx="+g_idx, '_blank',
				"width=800,height=650, toolbar=no, menubar=no, resizable=no");
	}
</script>
</html>