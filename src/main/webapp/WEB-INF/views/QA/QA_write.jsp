<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>B-PRO</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="./../resources/css/layout.css" rel="stylesheet" type="text/css" media="all">
<!-- dropbox css -->
<!-- <link rel="stylesheet" href="https://aem.dropbox.com/cms/etc.clientlibs/settings/wcm/designs/dropbox-common/clientlib-cms-common.757d73acbd22d3e2bf4eeb953c16c4d5.css" type="text/css">
<link rel="stylesheet" href="https://static.cloud.coveo.com/searchui/v2.5549/css/CoveoFullSearch.css"/> -->
<!-- <link rel="stylesheet" href="https://aem.dropbox.com/cms/etc.clientlibs/settings/wcm/designs/dropbox-birch-help/clientlib-all.9788ba1fa73be9983563c003a3209114.css" type="text/css"> -->
<link rel="stylesheet" href="./../resources/css/Q&A.css" />
<!-- dropbox css end -->
</head>
<script>
function enter() {
	if(event.keyCode==13){
		location.href="http://instagram.com";
	}
}
</script>
<body id="top">
<!--top-->
<%@ include file="./../include/top.jsp"%>
<!--각 페이지 이미지-->
<div class="bgded overlay" style="background-image:url('./../resources/img/qna.jpg'); background-position: 0 52%;">
  <div id="breadcrumb" class="hoc clear"> 
    <!--이미지 위에 글쓰는곳-->
  </div>
</div>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <div class="one_quarter first">
	<div class="a04-support-tools">

<div class="a04-support-tools__wrapper" style="width:295px;height:94px;">

<a class="a04-support-tools__link" href="../customer/qnaList.do"></a>

<div class="a04-support-tools__container accts ">

    <div class="a04-support-tools__icon">

        <img src="./../resources/img/매치진행.png"/>

    </div>

    <div class="a04-support-tools__content">

        <div class="a04-support-tools__info">

            <div class="a04-support-tools__info--title">
                경기장
            </div>
        </div>
   </div>

</div>

</div>
</div>

	<div class="a04-support-tools">

<div class="a04-support-tools__wrapper" style="width:295px;height:94px;">

<a class="a04-support-tools__link" href="../customer/qnaList.do"></a>

<div class="a04-support-tools__container communitty ">

    <div class="a04-support-tools__icon">

        <img src="./../resources/img/캐시.png"/>

    </div>

    <div class="a04-support-tools__content">

        <div class="a04-support-tools__info">

            <div class="a04-support-tools__info--title">
                포인트 적립
            </div>
       </div>
    </div>

</div>

</div>
</div>

	<div class="a04-support-tools">
<div class="a04-support-tools__wrapper" style="width:295px;height:94px;">

<a class="a04-support-tools__link" href="../customer/qnaList.do"></a>

<div class="a04-support-tools__container installs ">

    <div class="a04-support-tools__icon">

        <img src="./../resources/img/비옴.png"/>

    </div>

    <div class="a04-support-tools__content">

        <div class="a04-support-tools__info">

            <div class="a04-support-tools__info--title">
                날씨
            </div>
        </div>
   </div>

</div>

</div>
</div>
</div>
		<div class="three_quarter">
	<script>
		//유기명함수
		function checkValidate(frm) {
			if(frm.title.value=="") {
				alert("제목써라");//경고창 띄움
				frm.title.focus();//입력란으로 포커스 이동
				return false;//전송되지 않도록 이벤트리스너로 false반환
			}
			if(frm.content.value=="") {
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
	<div class="row mt-3 mr-1">
		<table class="table table-bordered table-striped">
			<form name="writeFrm" method="post" action="WriteProc.jsp" onsubmit="return checkValidate(this);">
				<colgroup>
					<col width="20%" />
					<col width="*" />
				</colgroup>
				<tbody>
							<!-- <tr>
		<th class="text-center align-middle">작성자</th>
		<td>
			<input type="text" class="form-control"	style="width:100px;"/>
		</td>
	</tr> -->
							<!-- <tr>
		<th class="text-center" 
			style="vertical-align:middle;">패스워드</th>
		<td>
			<input type="password" class="form-control"
				style="width:200px;"/>
		</td>
	</tr> -->
		<tr>
			<th class="text-center" style="vertical-align: middle;">제목</th>
			<td><input type="text" class="form-control" name="title" />
			</td>
		</tr>
		<tr>
			<th class="text-center" style="vertical-align: middle;">내용</th>
			<td><textarea rows="10" class="form-control"
					name="content"></textarea>
			</td>
		</tr>
	<!-- <tr>
		<th class="text-center"
			style="vertical-align:middle;">첨부파일</th>
		<td>
			<input type="file" class="form-control" />
		</td>
	</tr> -->

						</tbody>
				</table>
			</div>
			<div class="row mb-3">
				<div class="col text-right">
					<!-- 각종 버튼 부분 -->
					<!-- <button type="button" class="btn">Basic</button> -->
					<!-- <button type="button" class="btn btn-primary" 
					onclick="location.href='BoardWrite.jsp';">글쓰기</button> -->
					<!-- <button type="button" class="btn btn-secondary">수정하기</button>
					<button type="button" class="btn btn-success">삭제하기</button>
					<button type="button" class="btn btn-info">답글쓰기</button>
					<button type="button" class="btn btn-light">Light</button>
					<button type="button" class="btn btn-link">Link</button> -->
					<button type="submit" class="btn btn-danger" onclick="location.href='writeprc.do'">전송하기</button>
					<!-- <button type="reset" class="btn btn-dark">Reset</button> -->
					<button type="button" class="btn btn-warning"
						onclick="location.href='qnaList.do';">리스트보기</button>
				</div>
				</form>
			</div>
		</div>
    </div><!-- end content -->
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