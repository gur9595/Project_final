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
                                            <div class="card-body">
                                                <h2 style="text-align:center;">예약 현황</h2>
                                            </div>
                                            <div class="comment-widgets scrollable">
                                                <table>
                                                    <tr style="border-bottom: 3px solid #036">
                                                    	<th>No</th>
                                                        <th>클럽 이름</th><!-- 클릭하면 클럽 정보 나옴 -->
                                                        <th>예약 시간</th>
                                                        <th>수락 및 거절</th>
                                                    </tr>
													<c:forEach items="${lists }" var="row" varStatus="status"> 
														<tr>
															<th>${status.count }</th>
															<th><a href="/club/clubView.do">${row.c_name }</a></th>
															<th>${row.g_date } ${row.g_time }</th>
															<th>
															<button class="btn btn-primary">수락</button>
															&nbsp;&nbsp;
															<button class="btn btn-danger">거절</button>
															</th>
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