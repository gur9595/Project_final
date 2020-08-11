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
	function enter() {
		if (event.keyCode == 13) {
			$("#searchFrm").submit();
		}
	}
</script>
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

			<div class="h03-v2-hero-plank">
				<div class="h03-v2-hero-plank">
			<!-- 검색창 -->
				<form name="searchFrm" id="searchFrm" method="get">
					<div class=" h03-v2-hero-plank__wrapper plank--fused "
						style="background-image: url(/cms/content/dam/dropbox/www/en-us/help/optimized-hc/unified_home_hero_mobile.png);">
						<img
							src="https://aem.dropbox.com/cms/content/dam/dropbox/www/en-us/help/unified-home/unified_home_a2_community.png"
							class="h03-v2-hero-plank__wrapper--bgImg" alt="" />
						<div class="h03-v2-hero-plank__container  hide-header-search">
							<h2 class="h03-v2-hero-plank__headline" style="color:black;"><a href="${pageContext.request.contextPath }/customer/qnaMain.do">B-PRO 도움말 센터</a></h2>
							<div class="h03-v2-hero-plank__search-bar standalone-searchbox">
								<div class="CoveoStyleReplacer">
									<!-- <input type="text" name="searchTxt" id="searchTxt"
										style="text-align: center; width: 100%; height: 78px; color: #000000;"
										placeholder="그냥 찾지마세요" onKeypress="enter();" /> -->
								</div>
							</div>
						</div>

					</div>
					</form>

					<div class="content">

						<!-- 레프트바 -->
						<%@include file="./../include/QA_left.jsp"%>

						<div class="three_quarter">
							<!-- 게시판리스트부분 -->
							<table class="table table-bordered table-hover table-striped">
								<colgroup>
									<col width="80px" />
									<col width="*" />
									<col width="120px" />
									<col width="120px" />
									<col width="80px" />
									<col width="50px" />
								</colgroup>

								<thead>
									<tr class="text-center">
										<th>번호</th>
										<th>제목</th>
										<th>작성자</th>
										<th>작성일</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${empty listRows }">
											<tr>
												<td colspan="4" class="text-center">등록된 게시물이 없습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${listRows }" var="row" varStatus="loop">
												<tr>
													<td class="text-center">${row.virtualNum }</td>
													<td class="text-center"><a
														href="./../customer/qnaView.do?b_idx=${row.b_idx }&nowPage=${nowPage}">
															${row.b_title } </a></td>
													<td class="text-center">관리자</td>
													<td class="text-center">${row.b_postdate }</td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
						</div>
						<div class="row">
							<div class="col text-right">
								<!-- 글쓰기  -->
							
								<!-- <button type="button" class="btn btn-primary">수정하기</button>
			<button type="button" class="btn btn-success">삭제하기</button>
			<button type="button" class="btn btn-info">답글쓰기</button>
			<button type="button" class="btn btn-warning">리스트보기</button>
			<button type="submit" class="btn btn-danger">전송하기</button> -->
							
							<div style="text-align: center; padding: 0 0 10px 0;"></div>
								<!-- 페이지번호 부분 -->
								<ul class="pagination justify-content-center">
								${pagingImg }
								</ul>
							</div>
						</div>
					</div>
				</div>
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