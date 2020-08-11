
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
                                                <h2 style="text-align:center;">클럽 관리</h2>
                                            </div>
                                            <div class="comment-widgets scrollable">
                                                <table>
                                                    <tr style="border-bottom: 3px solid #036">
                                                    	<th>No</th>
                                                        <th>클럽명</th>
                                                        <th>클럽장</th>   
                                                        <th>활동지역</th>
                                                        <th>선호종목</th>
                                                        <th>생성날짜</th>
                                                        <th>실력</th>
                                                        <th>성별</th>
                                                        <th>인원수제한</th>
                                                        <th>연령대</th>
                                                        <th>삭제</th> 
                                                    </tr>
													<c:forEach items="${lists }" var="row" varStatus="status"> 
														<tr>
															<th>${status.count }</th>
															<th><a href='javascript:openClubView(${row.c_idx });'>
																	${row.c_name }
																</a></th>
															<th><a href="" data-toggle="modal"
																onclick="modal('${row.m_id}', '${row.m_name}', '${row.m_email}', '${row.m_phone}', '${row.m_addr}', '${row.m_date}','${row.m_sex}');"
																data-target="#myModal" style="width: 100%; height: 100%;">${row.m_name}</a></th>
															<th>${row.c_area }</th>
															<th>${row.c_type }</th>
															<th>${row.c_date }</th>
															<th>${row.c_ability }</th>
															<th>${row.c_gender }</th> 
															<th>${row.c_memlimit }</th>															
															<th>${row.c_age }</th>
															<th>
																<input type="button" class="btn btn-danger" onclick="" value="삭제">
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
            <footer class="footer text-center">
                All Rights Reserved by Matrix-admin. Designed and Developed by <a href="https://wrappixel.com">WrapPixel</a>.
            </footer>
        </div>
    </div>
    <!-- 모달창 신청폼 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" data-backdrop="static"
		style="color: black;">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
	
				<div class="modal-header">
					<h2 class="modal-title"
						style="font-size: 30px; text-align: center;" id="myModalLabel">클럽장 정보</h2>
	
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" style="font-size: 20px;">
					아이디 : <span id="list_id" style="font-style: italic; font-size: 15px;"></span><br /><br />
					이름 : <span id="list_name" style="font-style: italic;font-size: 15px;"></span><br /><br />
					이메일 : <span id="list_email" style="font-style: italic;font-size: 15px;"></span><br /><br />
					연락처 : <span id="list_phone" style="font-style: italic;font-size: 15px;"></span><br /><br />
					주소 : <span id="list_addr" style="font-style: italic;font-size: 15px;"></span><br /><br />
					가입일 : <span id="list_date" style="font-style: italic;font-size: 15px;"></span><br />	<br />		
					성별 : <span id="list_sex" style="font-style: italic;font-size: 15px;"></span><br /><br />	
				</div>
				</form>
			</div>
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
<script>

function modal(m_id, m_name, m_email, m_phone, m_addr, m_date, m_sex) {
	
	document.getElementById("list_name").innerHTML = m_name;
	document.getElementById("list_id").innerHTML = m_id;
	document.getElementById("list_email").innerHTML = m_email;
	document.getElementById("list_phone").innerHTML = m_phone;
	document.getElementById("list_addr").innerHTML = m_addr;
	document.getElementById("list_date").innerHTML = m_date;
	document.getElementById("list_sex").innerHTML = m_sex;
	
}

function openClubView(c_idx){
	window.open("../club/clubView.do?c_idx="+c_idx, '_blank',
			"width=1250,height=700, toolbar=no, menubar=no, resizable=no");
}

$('#writeFrm').submit(function(){
	alert("신청 완료!");
});

</script>
</body>

</html>