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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
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
        margin-left: auto; margin-right: auto; font-size : 130%; color:black;
        width: 750px;
        table-layout: fixed;
        border-collapse: collapse;
    }
    td{
        border-bottom: 1px solid #444444;
        width: 70px; height: 30px;
        text-align:center;
    }
    th{
        height:40px; text-align: center;
        border-bottom: 1px solid #444444;
    }
    
	button{
	  background:#1AAB8A; 
	  color:#fff;
	  border:none;
	  position:relative;
	  height:30px;
	  font-size:0.8em;
	  cursor:pointer;
	  transition:800ms ease all;
	  outline:none;
	}
	
	button:hover{
	  background:#fff;
	  color:#1AAB8A;
	}
	
	button:before,button:after{
	  content:'';
	  position:absolute;
	  top:0;
	  right:0;
	  height:2px;
	  width:0;
	  background: #1AAB8A;
	  transition:400ms ease all;
	}
	button:after{
	  right:inherit;
	  top:inherit;
	  left:0;
	  bottom:0;
	}
	button:hover:before,button:hover:after{
	  width:100%;
	  transition:800ms ease all;
	}
</style>

<body onresize="parent.resizeTo(1280,800)" onload="parent.resizeTo(1280,800)">
	<div id="main-wrapper">
    	<%@ include file="./club_view_header.jsp" %>
        <%@ include file="./club_view_sidebar.jsp" %>
        <div class="page-wrapper" style="margin-left:200px;margin-top:-20px;">
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
                                        <div class="card" >
                                            <div class="card-body">
                                                <h4 class="card-title" style="text-align: center; font-size: 30px;">경기 결과</h4>
                                            </div>
                                            <h5 style="margin-left: 140px; font-weight: 700;"></h5>
                                            <div class="comment-widgets scrollable">
                                                <table style="width: 750px; text-align: center; ">
                                                    <tr style="border-bottom: 3px solid rgb(59, 209, 116)">
                                                        <th width="180px;"></th>
                                                        <th></th>
                                                        <th width="30px;"></th>
                                                        <th width="30px;"></th>
                                                        <th width="30px;"></th>
                                                        <th></th>
                                                        <th width="40px;"></th>
                                                    </tr>
                                                    <c:forEach items="${lists }" var="row" varStatus="status">
	                                                    <tr>
	                                                        <th>${row.g_date }</th>
	                                                        <c:choose>
	                                                        	<c:when test="${row.g_check== 'owner' }">
			                                                        <td>${row.home }</td>      
	                                                        	</c:when>
	                                                        	<c:when test="${row.home==null }">
			                                                        <td style="color: red;">삭제된 팀</td>      
	                                                        	</c:when>
	                                                        	<c:otherwise>
	                                                        		<td><a href="javascript:openClubView(${row.home_idx})">${row.home }</a></td> 
	                                                        	</c:otherwise>
	                                                        </c:choose>
	                                                        
	                                                        	<td>${row.home_score }</td>
	                                                        	<th>
	                                                        	<button type="button"  onclick="javascript:openMatchDetail">VS</button>
	                                                        	</th>
	                                                        	<td>${row.away_score }</td>
	                                                        	
	                                                        <c:choose>
	                                                        	<c:when test="${row.g_check== 'yes' }">
	                                                        		<td>${row.away }</td> 
	                                                        	</c:when>
	                                                        	<c:when test="${row.away==null }">
			                                                        <td style="color: red;">삭제된 팀</td>      
	                                                        	</c:when>
	                                                        	<c:otherwise>
	    		                                                    <td><a href="javascript:openClubView(${row.away_idx})">${row.away }</a></td>                                    
	                                                        	</c:otherwise>
	                                                        </c:choose>
	                                                        
	                                                        <th>
	                                                    		<c:choose>
	                                                    			<c:when test="${row.g_result=='W' }">
	                                                    				승
	                                                    			</c:when>
	                                                    			<c:when test="${row.g_result=='D' }">
	                                                    				무
	                                                    			</c:when>
	                                                    			<c:when test="${row.g_result=='L' }">
	                                                    				패
	                                                    			</c:when>
	                                                    		</c:choose>
	                                                    	</th>
	                                                    </tr>
                                                    </c:forEach>
		                                            <tr>
		                                            	<td style="border-bottom: 0"colspan="7">${paging }</td>
		                                            </tr> 
                                                </table>
                                            </div>
                                            <br /><br/>
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
function openMatchDetail(g_num){
	window.open("../club/clubMatchDetail.do?g_num="+g_num, '_blank',
			"width=1000,height=800, toolbar=no, menubar=no, resizable=no");
}
</script>
</html>