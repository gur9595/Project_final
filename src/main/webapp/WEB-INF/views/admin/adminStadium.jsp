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
    .modal {
        text-align: center;
	}
	@media screen and (min-width: 768px) { 
	        .modal:before {
	                display: inline-block;
	                vertical-align: middle;
	                content: " ";
	                height: 100%;
	        }
	}
	.modal-dialog {
	        display: inline-block;
	        text-align: left;
	        vertical-align: middle;
	}
</style>
<body>
	<div class="preloader">
	    <div class="lds-ripple">
	        <div class="lds-pos"></div>
	        <div class="lds-pos"></div>
	    </div>
	</div>
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
                                                <h2 style="text-align:center;">경기장 관리</h2>
                                            </div>
                                            <div class="comment-widgets scrollable">
                                                <table>
                                                    <tr style="border-bottom: 3px solid #036">
                                                    	<th>사업자 번호</th>
                                                        <th>구장명</th>
                                                        <th>구장주 연락처</th>   
                                                        <th>구장 주소</th>
                                                        <th>종류</th>
                                                        <th>크기</th>
                                                        <th>시설</th>
                                                        <th>요금</th>
                                                        <th>메모</th>
                                                        <th>운영 시간</th>
                                                        <th colspan="2">승인/삭제</th> 
                                                    </tr>
													<c:forEach items="${lists }" var="row" varStatus="status"> 
														<tr>
															<th>${row.s_id }</th>
															<th>${row.s_name }</th>
															<th>${row.s_phone }</th>
															<th>${row.s_addr }</th>
															<th>${row.s_type }</th>
															<th>${row.s_size }</th>
															<th>${row.s_cv }</th>
															<th>${row.s_price }</th> 
															<th><a href="" data-toggle="modal"
																onclick="modal('${row.s_memo }')"
																data-target="#myModal" style="width: 100%; height: 100%;">메모</a></th>
															<th>${row.s_starttime } ~ ${row.s_endtime } </th>
															<c:choose>
																<c:when test="${row.s_check == 'yes' }">
																	<th colspan="2">
																		<input type="button" class="btn btn-danger" onclick="" value="삭제">
																	</th>
																</c:when>
																<c:otherwise>
																	<th>
																		<input type="button" class="btn btn-danger" onclick="javascript:adminStadiumApply(${row.s_id})" value="승인">
																	</th>
																	<th>
																		<input type="button" class="btn btn-danger" onclick="" value="삭제">
																	</th>
																</c:otherwise>
															</c:choose>															
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
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" data-backdrop="static"
				style="color: black;">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
			
						<div class="modal-header">
							<h2 class="modal-title"
								style="font-size: 30px; text-align: center;" id="myModalLabel">구장 메모</h2>
			
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body" style="font-size: 20px;">
							<span id="modal_memo" style="font-style: italic; font-size: 15px;"></span><br /><br />
						</div>
						</form>
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
    
    function modal(memo) {
    	
    	document.getElementById("modal_memo").innerHTML = memo;
    	
    }
    
    function adminStadiumApply(s_id){
    	
    	alert("승인 완료!");
    	window.open('adminStadiumApply.do?s_id='+s_id);
    }

</script>

</body>

</html>