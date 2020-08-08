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
    <title>B-PRO ADMIN</title>
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="./../resources/admin_css/multicheck.css">
    <link href="./../resources/admin_css/dataTables.bootstrap4.css" rel="stylesheet">
    <link href="./../resources/admin_css/style.min.css" rel="stylesheet">
</head>
<style>
    table{
        margin-left: auto; margin-right: auto;
        width: 1200px;
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
		<%@ include file="./../include/adminTopBar.jsp" %>
        <!-- 사이드바 -->
		<%@ include file="./../include/adminSideBar.jsp" %>
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
                                                <h2 style="text-align:center;">회원 관리</h2>
                                            </div>
                                            <div class="comment-widgets scrollable">
                                                <table>
                                                    <tr style="border-bottom: 3px solid #036">
                                                    	<th>No</th>
                                                        <th>이름</th>
                                                        <th>ID</th>   
                                                        <th>생년월일</th>
                                                        <th width="150px;">E-mail</th>
                                                        <th width="120px;">전화번호</th>
                                                        <th width="350px;">주소</th>
                                                        <th>가입날짜</th>
                                                        <th colspan="2" width="150px;">수정/삭제</th>
                                                        
                                                    </tr>
													<c:forEach items="${lists }" var="row" varStatus="status"> 
														<tr>
															<th>${status.count }</th>
															<th>${row.m_name }</th>
															<th>${row.m_id }</th>
															<th>${row.m_birth }</th>
															<th>${row.m_email }</th>
															<th>${row.m_phone }</th>
															<th>${row.m_addr }</th>
															<th>${row.m_date }</th>
															<th colspan="2">
																<input type="button" class="btn btn-success" value="수정">
																<input type="button" class="btn btn-danger" value="삭제">
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