<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../../assets/images/favicon.png">
    <title>B-PRO STADIUM</title>
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="./../resources/admin_css/multicheck.css">
    <link href="./../resources/admin_css/dataTables.bootstrap4.css" rel="stylesheet">
    <link href="./../resources/admin_css/style.min.css" rel="stylesheet">
</head>
<style>
    table{
        margin-left: auto; margin-right: auto;
        width: 1100px;
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
        <!-- 탑바 -->
		<%@ include file="./../include/stadiumTopBar.jsp" %>
        <!-- 사이드바 -->
		<%@ include file="./../include/stadiumSideBar.jsp" %>
		
		<!-- 페이지 내용 -->
        <div class="page-wrapper">
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
                                            <form action="../stadium/stEdit.do" method="post">
                                            <div class="card-body">
                                                <h2 style="text-align:center;">경기장 정보</h2>
                                                <input type="hid den" name="s_idx" id="s_idx" value="${sessionScope.siteUserInfo.s_idx }" />
                                                <input type="hid den" name="s_id" id="s_id" value="${sessionScope.siteUserInfo.s_id }" />
                                                <input type="hid den" name="s_pw" id="s_pw" value="${sessionScope.siteUserInfo.s_pw }" />
                                                <input type="hid den" name="s_gu" id="s_gu" value="${sessionScope.siteUserInfo.s_gu }" />
                                                <input type="hid den" name="s_pic" id="s_pic" value="${sessionScope.siteUserInfo.s_pic }" />
                                                <input type="hid den" name="s_memo" id="s_memo" value="${sessionScope.siteUserInfo.s_memo }" />
                                                <input type="hid den" name="s_lat" id="s_lat" value="${sessionScope.siteUserInfo.s_lat }" />
                                                <input type="hid den" name="s_lng" id="s_lng" value="${sessionScope.siteUserInfo.s_lng }" />
                                                <input type="hid den" name="s_starttime" id="s_starttime" value="${sessionScope.siteUserInfo.s_starttime }"/>
                                                <input type="hid den" name="s_endtime" id="s_endtime" value="${sessionScope.siteUserInfo.s_endtime }"/>
                                            </div>
                                            <div class="comment-widgets scrollable">
                                                <table>
                                                    <tr style="border-bottom: 3px solid #036">
                                                    	<th>경기장 이름</th>
														<th>전화번호</th>
														<th>주소</th>
														<th>경기장 종류</th>
														<th>경기장 크기</th>
														<th>편의 시설</th>
														<th>회당 가격</th>
														<th>이용 가능 시간</th>
														<th>수정</th>
                                                    </tr>
													<%-- <c:forEach items="${list }" var="row" varStatus="status">  --%>
														<tr>
															<th name="s_name" id="s_name" >${sessionScope.siteUserInfo.s_name }</th>
															<th name="s_phone" id="s_phone" >${sessionScope.siteUserInfo.s_phone }</th>
															<th name="s_addr" id="s_addr" >${sessionScope.siteUserInfo.s_addr }</th>
															<th name="s_type" id="s_type" >${sessionScope.siteUserInfo.s_type }</th>
															<th name="s_size" id="s_size" >${sessionScope.siteUserInfo.s_size }</th> 
															<th name="s_cv" id="s_cv" >${sessionScope.siteUserInfo.s_cv }</th>
															<th name="s_price" id="s_price" >${sessionScope.siteUserInfo.s_price }</th>
															<th>${sessionScope.siteUserInfo.s_starttime }
															  ~ ${sessionScope.siteUserInfo.s_endtime }
															</th>
															<th><input type="submit" value="클릭" /></th>
														</tr>
													<%-- </c:forEach> --%>
                                                </table>
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>    
                        </div>
                    </div>
                </div>
            </div>
            
        <!-- 페이지 내용 끝 -->
            <footer class="footer text-center">
                All Rights Reserved by Matrix-admin. Designed and Developed by <a href="https://wrappixel.com">WrapPixel</a>.
            </footer>
        </div>
    </div>
<script src="./../resources/admin_js/jquery.min.js"></script>
<!-- Bootstrap tether Core JavaScript -->
<script src="./../resources/admin_js/popper.min.js"></script>
<script src="./../resources/admin_js/bootstrap.min.js"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script src="./../resources/admin_js/perfect-scrollbar.jquery.min.js"></script>
<script src="./../resources/admin_js/sparkline.js"></script>
<!--Wave Effects -->
<script src="./../resources/admin_js/waves.js"></script>
<!--Menu sidebar -->
<script src="./../resources/admin_js/sidebarmenu.js"></script>
<!--Custom JavaScript -->
<script src="./../resources/admin_js/custom.min.js"></script>
<!-- this page js -->
<script src="./../resources/admin_js/datatable-checkbox-init.js"></script>
<script src="./../resources/admin_js/jquery.multicheck.js"></script>
<script src="./../resources/admin_js/datatables.min.js"></script>
<script>
    /****************************************
     *       Basic Table                   *
     ****************************************/
    $('#zero_config').DataTable();
</script>

</body>

</html>