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
<body  onresize="parent.resizeTo(1280,720)" onload="parent.resizeTo(1280,720)">
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
                                                        <c:if test="${getCmgrade.cm_grade!='player'}">
                                                        	<th style="width:120px;">포메이션 작성</th>         
                                                        </c:if>
                                                    </tr>

                                                    <c:forEach items="${lists }" var="row" varStatus="status"> 
														<tr>
															<th>${row.g_date }</th>
															<th>${row.g_time }</th>
															<th>${row.g_sname }</th>
															<th>
																<c:choose>
																	<c:when test="${row.c_name == null }">없음</c:when>
																	<c:otherwise><a href="javascript:openClubView(${row.c_idx})">${row.c_name }</a></c:otherwise>
																</c:choose>
															</th>
															<th><input type="button" class="btn btn-outline-success" onclick="javascript:openFormCheck(${row.g_idx})" style="width:65px; height: 30px; text-align: center; padding: 0; font-weight:900; font-size:17px;" value="확인" ></th>
	                                                        <c:if test="${getCmgrade.cm_grade!='player'}">
	                                                        	<th><input type="button" class="btn btn-outline-primary" onclick="javascript:openFormMake(${row.g_idx})" style="width:65px; height: 30px; text-align: center; padding: 0; font-weight:900; font-size:17px;" value="작성"></th>
	                                                        </c:if>
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
                </div>
            </div>
        </div>
    </div>
</body>
<script>
	function openClubView(c_idx){
		window.open("../club/clubView.do?c_idx="+c_idx, '_blank',
				"width=1500,height=800, toolbar=no, menubar=no, resizable=no");
	}
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