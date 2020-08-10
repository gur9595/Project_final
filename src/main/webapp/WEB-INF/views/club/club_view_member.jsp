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
<body onresize="parent.resizeTo(1280,720)" onload="parent.resizeTo(1280,720)">
	<div id="main-wrapper">
    	<%@ include file="./club_view_header.jsp" %>
        <%@ include file="./club_view_sidebar.jsp" %>
        
        <div class="page-wrapper" style="margin-top:-20px;">
            <div class="container-fluid">
                <div class="row">
                    <!-- column -->
                    <div class="col-lg-12">
                        <!-- Tabs -->
                        <div class="card">
                            <!-- Tab panes -->
                            <div class="tab-content tabcontent-border">
                                <div>
                                    <div class="p-20">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="page-title" style="text-align: center; font-size: 30px;">&nbsp;클럽회원</h4>
                                            </div>
                                            <div class="comment-widgets scrollable">
                                                <table>
                                                    <tr style="border-bottom: 3px solid #036">
                                                    	<th>사진</th>
                                                        <th>이름</th>
                                                        <th>생년월일</th>
                                                        <th style="width:100px;">전화번호</th>
                                                        <th>주 포지션</th>
                                                        <th>직책</th>
                                                        <th>클럽 가입일</th>
                                                    </tr>
													<c:forEach items="${lists }" var="row" varStatus="status"> 
														<tr height="70px">
															<th><img src="./../resources/uploadsFile/${row.m_pic }" alt="" style="height:70px; width:auto; max-width:100px;" /></th>
															<th>${row.m_name }</th>
															<th>${row.m_birth }</th>
															<th>${row.m_phone }</th>
															<th>${row.m_position }</th>
															<th>${row.cm_grade }</th>
															<th>${row.m_date }</th>
														</tr>
													</c:forEach>
													<tr>
														<td colspan='7' style="text-align: center; font-size: 25px;">
															${paging }
														</td>
													</tr>
                                                </table>
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