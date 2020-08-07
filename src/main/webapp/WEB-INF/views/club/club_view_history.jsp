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
                                                <table style="width: 750px; text-align: center;">
                                                    <tr style="border-bottom: 3px solid rgb(59, 209, 116)">
                                                    	<th width="30px;"></th>
                                                        <th width="180px;">날짜</th>
                                                        <th></th>
                                                        <th width="30px;"></th>
                                                        <th width="30px;"></th>
                                                        <th width="30px;"></th>
                                                        <th></th>
                                                        <th width="40px;">결과</th>
                                                    </tr>
                                                    <c:forEach items="${lists }" var="row" varStatus="status">
	                                                    <tr>
	                                                    	<th>${status.count}</th>
	                                                        <th>${row.g_date }</th>
	                                                        <c:choose>
	                                                        	<c:when test="${row.g_check== 'owner' }">
			                                                        <td>${row.home }</td>      
	                                                        	</c:when>
	                                                        	<c:otherwise>
	                                                        		<td><a href="javascript:openClubView(${row.home_idx})">${row.home }</a></td> 
	                                                        	</c:otherwise>
	                                                        </c:choose>
	                                                        	<td>${row.home_score }</td>
	                                                        <th><button type="button" value="">VS</button></th>
	                                                        	<td>${row.away_score }</td>
	                                                        <c:choose>
	                                                        	<c:when test="${row.g_check== 'yes' }">
	                                                        		<td>${row.away }</td> 
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
                                                </table>
                                                ${paging } 
                                            </div>
                                            <br /><br/>
                                            <h4 style="margin-left: 80px; color:black; font-weight: 700;">최근 10경기 전적</h4>
                                            <div class="comment-widgets scrollable">
                                                <table style="width: 750px;">
                                                    <tr style="border-bottom: 3px solid rgb(59, 209, 116)">
                                                        <th>승</th>
                                                        <th>무</th>
                                                        <th>패</th>
                                                        <th>승률</th>
                                                        <th>득점</th>
                                                        <th>실점</th>
                                                    </tr>
                                                    <tr>
                                                        <th>5승</th>
                                                        <th>0무</th>                                         
                                                        <th>5패</th>                                         
                                                        <th>50%</th>
                                                        <th>2.6</th>
                                                        <th>0.3</th>                                         
                                                    </tr>
                                                   
                                                </table>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3">

                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Chat Option</h4>
                                <div class="chat-box scrollable" style="height:475px;">
                                    <ul class="chat-list">
                                        <li class="chat-item">
                                            <div class="chat-img"><img src="../../assets/images/users/1.jpg" alt="user"></div>
                                            <div class="chat-content">
                                                <h6 class="font-medium">James Anderson</h6>
                                                <div class="box bg-light-info">Lorem Ipsum is simply dummy text of the printing &amp; type setting industry.</div>
                                            </div>
                                            <div class="chat-time">10:56 am</div>
                                        </li>
                                        <li class="chat-item">
                                            <div class="chat-img"><img src="../../assets/images/users/2.jpg" alt="user"></div>
                                            <div class="chat-content">
                                                <h6 class="font-medium">Bianca Doe</h6>
                                                <div class="box bg-light-info">It’s Great opportunity to work.</div>
                                            </div>
                                            <div class="chat-time">10:57 am</div>
                                        </li>
                                        <li class="odd chat-item">
                                            <div class="chat-content">
                                                <div class="box bg-light-inverse">I would love to join the team.</div>
                                                <br>
                                            </div>
                                        </li>
                                        <li class="odd chat-item">
                                            <div class="chat-content">
                                                <div class="box bg-light-inverse">Whats budget of the new project.</div>
                                                <br>
                                            </div>
                                            <div class="chat-time">10:59 am</div>
                                        </li>
                                        <li class="chat-item">
                                            <div class="chat-img"><img src="../../assets/images/users/3.jpg" alt="user"></div>
                                            <div class="chat-content">
                                                <h6 class="font-medium">Angelina Rhodes</h6>
                                                <div class="box bg-light-info">Well we have good budget for the project</div>
                                            </div>
                                            <div class="chat-time">11:00 am</div>
                                        </li>

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
                Copyright © 2020 - All Rights Reserved <a href="${pageContext.request.contextPath }">Be-Pro</a>.
            </footer>
        </div>
    </div>  
</body>
<script>
function openClubView(c_idx){
	window.open("../club/clubView.do?c_idx="+c_idx, '_blank',
			"width=1500,height=800, toolbar=no, menubar=no, resizable=no");
}
</script>
</html>