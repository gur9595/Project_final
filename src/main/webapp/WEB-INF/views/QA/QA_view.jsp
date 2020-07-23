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
<div class="bgded overlay" style="background-image:url('../images/demo/backgrounds/01.png');">
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
	<div class="row mt-3 mr-1">
		<table class="table table-bordered">
			<colgroup>
				<col width="20%" />
				<col width="30%" />
				<col width="20%" />
				<col width="*" />
			</colgroup>
			<tbody>
				<tr>
					<th class="text-center table-active align-middle">아이디</th>
					<td>B-PRO</td>
			<th class="text-center table-active align-middle">작성일</th>
			<td>2020/07/19</td>
		</tr>
		<tr>
			<th class="text-center table-active align-middle">작성자</th>
			<td>이태랑</td>
			<th class="text-center table-active align-middle">조회수</th>
			<td>999</td>
		</tr>
		<tr>
			<th class="text-center table-active align-middle">제목</th>
			<td colspan="3">성공띠</td>
		</tr>
		<tr>
			<th class="text-center table-active align-middle">내용</th>
			<td colspan="3" class="align-middle" style="height: 200px;">
				여기 사이트 너무 좋아영 잇힝  ٩( ᐛ )و 
			</td>
		</tr>
		</tbody>
	</table>
</div>
<div class="row mb-3">
	<div class="col-6">
		
	<button type="button" class="btn btn-secondary"
		onclick="location.href='qnaWrite.do'">수정하기</button>
	<!-- 회원제게ㅣ판에서 삭제처리는 별도의 폼이 필요없이 , 사용자에 대한
	인증처리만 되면 즉시 삭제처리한다. -->
	<button type="button" class="btn btn-success"
		onclick="isDelete();">삭제하기</button>
</div>
<div class="col-6 text-right pr-5">
	<button type="button" class="btn btn-warning"
		onclick="location.href='qnaList.do'">리스트보기</button>
</div>
<script>
function isDelete() {
	var c = confirm("삭제해버릴까 주인?");
	if (c) {
		var f = document.deleteFrm;
		f.method = "post";
		f.action = "DeleteProc.jsp";
		f.submit();
	}
}
</script>
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