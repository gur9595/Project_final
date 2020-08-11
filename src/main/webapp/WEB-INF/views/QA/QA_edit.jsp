<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>B-PRO</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="./../resources/css/layout.css" rel="stylesheet"
	type="text/css" media="all">
<!-- dropbox css -->
<!-- <link rel="stylesheet" href="https://aem.dropbox.com/cms/etc.clientlibs/settings/wcm/designs/dropbox-common/clientlib-cms-common.757d73acbd22d3e2bf4eeb953c16c4d5.css" type="text/css">
<link rel="stylesheet" href="https://static.cloud.coveo.com/searchui/v2.5549/css/CoveoFullSearch.css"/> -->
<!-- <link rel="stylesheet" href="https://aem.dropbox.com/cms/etc.clientlibs/settings/wcm/designs/dropbox-birch-help/clientlib-all.9788ba1fa73be9983563c003a3209114.css" type="text/css"> -->
<link rel="stylesheet" href="./../resources/css/Q&A.css" />
<!-- dropbox css end -->
</head>
<script>
//유기명함수
function checkValidate(frm) {
	if (frm.title.value == "") {
		alert("제목써라");//경고창 띄움
		frm.title.focus();//입력란으로 포커스 이동
		return false;//전송되지 않도록 이벤트리스너로 false반환
	}
	if (frm.content.value == "") {
		alert("내용물좀 써라");//경고창 띄움
		frm.content.focus();//입력란으로 포커스 이동
		return false;//전송되지 않도록 이벤트리스너로 false반환
	}
}

//무기명함수

var checkValidate2 = function(frm) {
	//실행부는 유기명함수와 동일함
}
</script>
<!-- <script>
	function enter() {
		if (event.keyCode == 13) {
			location.href = "http://instagram.com";
		}
	}
</script> -->
<body id="top">
	<!--top-->
	<%@ include file="./../include/top.jsp"%>
	<!--각 페이지 이미지-->
	<div class="bgded overlay"
		style="background-image: url('../images/demo/backgrounds/01.png');">
		<div id="breadcrumb" class="hoc clear">
			<!--이미지 위에 글쓰는곳-->
		</div>
	</div>

	<div class="wrapper row3">
		<main class="hoc container clear">
			<!-- main body -->
			<!-- 레프트바 -->
			<%@include file="./../include/QA_left.jsp"%>
			<div class="three_quarter">

				<form name="writeFrm" method="post"
					onsubmit="return checkValidate(this);"
					action="<c:url value="/customer/qnaEditAction.do"/>">

					<input type="hidden" name="b_idx" id="b_idx"
						value="${viewRow.b_idx }" /> <input type="hidden" name="m_id"
						id="m_id" value="${m_id }" />

					<table class="table table-bordered table-striped">
						<colgroup>
							<col width="20%" />
							<col width="*" />
						</colgroup>
						<tbody>
							<tr>
								<th class="text-center" style="vertical-align: middle;">제목</th>
								<td><input type="text" class="form-control" name="b_title"
									value="${viewRow.b_title}" /></td>
							</tr>
							<tr>
								<th class="text-center" style="vertical-align: middle;">내용</th>
								<td><textarea rows="10" class="form-control"
										name="b_content">${viewRow.b_content }</textarea></td>
							</tr>

						</tbody>
					</table>
					<div class="col text-right">
						<button type="submit" class="btn btn-danger">전송하기</button>
						<input type="hidden" name="b_bname" value="freeboard" />
						<!-- <button type="reset" class="btn btn-dark">Reset</button> -->
						<button type="button" class="btn btn-warning"
							onclick="location.href='qnaList.do';">리스트보기</button>
					</div>

				</form>
			</div>
	</div>
	<!-- end content -->
	<!-- / main body -->
	<div class="clear"></div>
	</main>
	</div>
	<!-- footer -->
	<%@ include file="./../include/footer.jsp"%>
	<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
	<!-- JAVASCRIPTS -->
	<script src="./../resources/js/jquery.min.js"></script>
	<script src="./../resources/js/jquery.backtotop.js"></script>
	<script src="./../resources/js/jquery.mobilemenu.js"></script>
</body>
</html>