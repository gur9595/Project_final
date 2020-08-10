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
                    <div class="col-lg-12"  style="font-size: 20px;">
                        <!-- Tabs -->
                        <div class="card">
                            <!-- Tab panes -->
                            <div class="tab-content tabcontent-border"> 
                                <div>
                                    <div class="p-20">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title" style="text-align: center; font-size: 30px;">클럽 내 랭킹</h4>
                                            </div>
                                            <h5 style="margin-left: 140px; font-weight: 700;">득점 순위</h5>
                                            <div class="comment-widgets scrollable">
                                                <table style="width: 550px;">
                                                		<tr style="border-bottom: 3px solid #036">
	                                                        <th>순위</th>
	                                                        <th></th>
	                                                        <th>선수명</th>
	                                                        <th>경기 수</th>
	                                                        <th>득점</th>
	                                                    </tr>
                                                	<c:forEach items="${goalRank }" var="row" varStatus="status" begin="0" end="4">
	                                                    <tr style="height:70px;">
	                                                        <th>${status.count }</th>
	                                                        <th><img src="./../resources/uploadsFile/${row.m_pic}" alt="" style="height:70px; width:auto; max-width:100px;" /></th>
	                                                        <th>${row.m_name}</th>
	                                                        <th>${row.appearance }</th>
	                                                        <th>${row.goal }</th>
	                                                    </tr>
                                                    </c:forEach>
                                                </table>
                                            </div>
                                            <br /><br />
                                            <h5 style="margin-left: 140px; font-weight: 700;">어시스트 순위</h5>
                                            <div class="comment-widgets scrollable">
                                                <table style="width: 550px;">
                                                    <tr style="border-bottom: 3px solid #036">
                                                        <th>순위</th>
                                                        <th></th>
                                                        <th>선수명</th>
                                                        <th>경기 수</th>
                                                        <th>어시스트</th>                                                  
                                                    </tr>
                                                    <c:forEach items="${assistRank }" var="row" varStatus="status" begin="0" end="4">
	                                                    <tr style="height:70px;">
	                                                        <th>${status.count }</th>
	                                                        <th><img src="./../resources/uploadsFile/${row.m_pic}" alt="" style="height:70px; width:auto; max-width:100px;" /></th>
	                                                        <th>${row.m_name}</th>
	                                                        <th>${row.appearance }</th>
	                                                        <th>${row.assist }</th>
	                                                    </tr>
                                                    </c:forEach>
                                                </table>
                                            </div>
                                            <br /><br />
                                            <h5 style="margin-left: 140px; font-weight: 700;">공격포인트 순위</h5>
                                            <div class="comment-widgets scrollable">
                                                <table style="width: 550px;">
                                                    <tr style="border-bottom: 3px solid #036">
                                                        <th>순위</th>
                                                        <th></th>
                                                        <th>선수명</th>
                                                        <th>경기 수</th>
                                                        <th>공격 포인트</th>                                                  
                                                    </tr>
                                                    <c:forEach items="${pointRank }" var="row" varStatus="status" begin="0" end="4">
	                                                    <tr style="height:70px;">
	                                                        <th>${status.count }</th>
	                                                        <th><img src="./../resources/uploadsFile/${row.m_pic}" alt="" style="height:70px; width:auto; max-width:100px;" /></th>
	                                                        <th>${row.m_name}</th>
	                                                        <th>${row.appearance }</th>
	                                                        <th>${row.point }</th>
	                                                    </tr>
                                                    </c:forEach>
                                                </table>
                                            </div>
                                            <br /><br />  
                                            <h5 style="margin-left: 140px; font-weight: 700;">최다 출전</h5>
                                            <div class="comment-widgets scrollable">
                                                <table style="width: 550px;">
                                                    <tr style="border-bottom: 3px solid #036">
                                                        <th>순위</th>
                                                        <th></th>
                                                        <th>선수명</th>
                                                        <th>경기 수</th>                                                  
                                                    </tr>
                                                   	<c:forEach items="${appearanceRank }" var="row" varStatus="status" begin="0" end="4">
	                                                    <tr style="height:70px;">
	                                                        <th>${status.count }</th>
	                                                        <th><img src="./../resources/uploadsFile/${row.m_pic}" alt="" style="height:70px; width:auto; max-width:100px;" /></th>
	                                                        <th>${row.m_name}</th>
	                                                        <th>${row.appearance }</th>
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
</html>