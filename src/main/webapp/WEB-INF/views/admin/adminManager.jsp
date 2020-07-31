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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="../../assets/images/favicon.png">
<title>B-PRO ADMIN</title>
<!-- Custom CSS -->
<link rel="stylesheet" type="text/css"
	href="./../resources/admin_css/multicheck.css">
<link href="./../resources/admin_css/dataTables.bootstrap4.css"
	rel="stylesheet">
<link href="./../resources/admin_css/style.min.css" rel="stylesheet">



</head>

<style>
table {
	margin-left: auto;
	margin-right: auto;
	width: 900px;
	table-layout: fixed;
	border-collapse: collapse;
	font-size: 18px;
}

td {
	border-bottom: 1px solid #444444;
	width: 70px;
	height: 30px;
	text-align: center;
}

th {
	height: 40px;
	text-align: center;
	border-bottom: 1px solid #444444;
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
		<%@ include file="./../include/adminTopBar.jsp"%>
		<!-- 사이드바 -->
		<%@ include file="./../include/adminSideBar.jsp"%>
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
											<h2 style="text-align: center;">매니저 신청 관리</h2>
											</div>
											<div class="comment-widgets scrollable">
												<table>
													<tr  style="border-bottom: 3px solid #036;">
														<th>No</th>
														<th>ID</th>
														<th style="width: 300px">신청서</th>
														<th>수락</th>
														<th>거절</th>
													</tr>
													<c:forEach items="${lists }" var="row" varStatus="status">
														<tr>
															
															<td style="text-align: center;">
																${status.count }
																<input type="hidden" id="m_idx"/>
															</td>
															<td>${row.m_id }</td> 
															<td>
																	<button class="btn btn-warning" type="button" data-toggle="modal"
																		onclick="modal('${row.mr_idx }','${row.m_id }','${row.mr_rfa }', '${row.mr_work }', '${row.mr_area }', '${row.mr_duration }', '${row.mr_career }');"
																		data-target="#myModal1">
																			신청서 보기
																	</button>
															</td>
															<td style="text-align: center;"><button class="btn btn-success" onclick="location.href='managerUpdate.do?m_id=${row.m_id}';">수락</button></td>
															<td style="text-align: center;"><button class="btn btn-danger" onclick="location.href='managerDelete.do?m_id=${row.m_id}';">거절</button></td>
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
			<!-- 모달창 신청폼 -->
	<div class="modal" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static" style="color: black;">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
	
				<div class="modal-header">
					<h2 class="modal-title"
						style="font-size: 20px; text-align: center;" id="myModalLabel">매니저 신청서</h2>
	
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
				
					아이디 : <span id="m_id"></span><br />	<br />		

					활동 가능 기간 : <span id="mr_duration"></span>개월<br />	<br />			
					활동 할 수 있는 지역 : <span id="mr_area"></span><br />	<br />			
					지원 동기  <br />
					<textarea class="form-control" name="memo"id="mr_rfa"
						style="width: 100%; height: 100px; background: #ffffff;" readonly></textarea><br />
					현재 하는 일  <br />
					<textarea class="form-control" name="memo"id="mr_work"
						style="width: 100%; height: 100px; background: #ffffff;" readonly></textarea><br />
					주요 경력  <br />
					<textarea class="form-control" name="memo"id="mr_career"
						style="width: 100%; height: 100px; background: #ffffff;" readonly></textarea><br />
	
				</div>
	
				<div class="modal-footer">
		          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        </div>
		
			</div>
		</div>
	</div>
	<!-- ################ 모달 끝 #################-->
			<!-- 페이지 내용 끝 -->
			<footer class="footer text-center">
				All Rights Reserved by Matrix-admin. Designed and Developed by <a
					href="https://wrappixel.com">WrapPixel</a>.
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
<script>

function modal(mr_idx, m_id, mr_rfa, mr_work, mr_area, mr_duration, mr_career) {
	
	$('#mr_idx').val(mr_idx);
	document.getElementById("m_id").innerHTML = m_id;
	document.getElementById("mr_rfa").innerHTML = mr_rfa;
	document.getElementById("mr_work").innerHTML = mr_work;
	document.getElementById("mr_career").innerHTML = mr_career;
	document.getElementById("mr_area").innerHTML = mr_area;
	document.getElementById("mr_duration").innerHTML = mr_duration;
	
}

</script>

</html>