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
<!-- <script>
	function enter() {
		if (event.keyCode == 13) {
			$("#loginFrm").submit();
		}
	}
</script> -->
<body id="top">
	<!--top-->
	<%@ include file="./../include/top.jsp"%>
	<!--각 페이지 이미지-->
	<div class="bgded overlay"
		style="background-image:url('./../resources/img/qna.jpg'); background-position: 0 52%;">
		<div id="breadcrumb" class="hoc clear">
			<!--이미지 위에 글쓰는곳-->
		</div>
	</div>
	<div class="wrapper row3">
		<main class="hoc container clear">
			<!-- main body -->
			<div class="content">

				<!-- 검색창 -->
				<div class="h03-v2-hero-plank">

					<div class="h03-v2-hero-plank">
						<div class=" h03-v2-hero-plank__wrapper plank--fused "
							style="background-image: url(/cms/content/dam/dropbox/www/en-us/help/optimized-hc/unified_home_hero_mobile.png);">
							<img src="https://aem.dropbox.com/cms/content/dam/dropbox/www/en-us/help/optimized-hc/unified_home_hero_desktop.png" class="h03-v2-hero-plank__wrapper--bgImg" alt=""/>
							<div class="h03-v2-hero-plank__container  hide-header-search">
								<!-- <h1 class="h03-v2-hero-plank__headline">아 하기 싫다</h1> -->
								<h2 class="h03-v2-hero-plank__headline">B-PRO 도움말 센터</h2>
								<div class="h03-v2-hero-plank__search-bar standalone-searchbox">
									<!-- <div class="CoveoSearchbox search-input" data-enable-omnibox="true" data-enable-query-suggest-addon="true" data-placeholder='도움말 검색'></div> -->
									<div class="CoveoStyleReplacer">
							<!-- 			<input type="text" id=-"
											style="text-align: center; width: 100%; height: 78px; color: #000000;"
											placeholder="그냥 찾지마세요" onKeypress="enter();" /> -->
									</div>
								</div>
							</div>
							<!-- </div> -->
						</div>

						<!-- 존나 내용물 -->
						<!-- <div class="h09-v2-support-tools-plank"> -->

						<div class="h09-v2-support-tools-plank">

							<div class="h09-v2-support-tools-plank__container">

								<div class="h09-v2-support-tools-plank__col">

									<div class="a04-support-tools">

										<div class="a04-support-tools__wrapper">

											<a class="a04-support-tools__link"
												href="../customer/qnaNotice.do?b_bname=notice"></a>

											<div class="a04-support-tools__container accts ">

												<div class="a04-support-tools__icon">

													<img src="./../resources/img/공지사항.png" />

												</div>

												<div class="a04-support-tools__content">

													<div class="a04-support-tools__info">

														<div class="a04-support-tools__info--title">공지사항</div>

														<div class="a04-support-tools__info--subtitle">지원 도구
														</div>

													</div>

													<div class="a04-support-tools__description">
														공지사항 페이지로 넘어갑니다. <i aria-hidden="true"
															class="a04-support-tools__arrow"></i>
													</div>

												</div>

											</div>

										</div>
									</div>




									<div class="a04-support-tools">

										<div class="a04-support-tools__wrapper">

											<a class="a04-support-tools__link"
												href="../customer/qnaList.do"></a>

											<div class="a04-support-tools__container contact ">

												<div class="a04-support-tools__icon">

													<img src="./../resources/img/구장관련.png" />

												</div>

												<div class="a04-support-tools__content">

													<div class="a04-support-tools__info">

														<div class="a04-support-tools__info--title">서비스</div>

														<div class="a04-support-tools__info--subtitle">지원 도구
														</div>

													</div>

													<div class="a04-support-tools__description">
														 각종 서비스 안내 페이지로 넘어갑니다.  <i aria-hidden="true"
															class="a04-support-tools__arrow"></i>
													</div>

												</div>

											</div>

										</div>
									</div>




									<div class="a04-support-tools">

								<div class="a04-support-tools__wrapper">

											<a class="a04-support-tools__link"
												href="../customer/qnaList.do?b_bname=qna"></a>

											<div class="a04-support-tools__container installs ">

												<div class="a04-support-tools__icon">

													<img src="./../resources/img/매치취소.png" />

												</div>

												<div class="a04-support-tools__content">

													<div class="a04-support-tools__info">

														<div class="a04-support-tools__info--title">Q & A</div>

														<div class="a04-support-tools__info--subtitle">지원 도구
														</div>

													</div>

													<div class="a04-support-tools__description">
														질문게시판으로 넘어갑니다. <i aria-hidden="true"
															class="a04-support-tools__arrow"></i>
													</div>

												</div>

											</div>

										</div>
									</div>


								</div>

								<div class="h09-v2-support-tools-plank__col">
									<div>




										<div class="a02-article-list__wrapper" id="articlesWrapper">
											<div class="a02-article-list__container"
												id="articleListingContainer" data-gromit-count="6">
												<h2 class="a02-article-list__header">자주 묻는 질문</h2>
												<div class="a02-article-list__articles"
													id="fallbackArticles">
													<ul class="a02-article-list__list">

														<li class="a02-article-list__list-item tags"><a
															href="../customer/qnaView.do?b_idx=28"
															class="a02-article-list__link">
																<div class="a02-article-list__link--title">캐시 충전이
																	안돼요</div>
																<div class="a02-article-list__articleTag">Q & A</div> <i
																aria-hidden="true" class="a02-article-list__arrow"></i>
														</a></li>



														<li class="a02-article-list__list-item tags"><a
															href="../customer/qnaView.do?b_idx=29"
															class="a02-article-list__link">
																<div class="a02-article-list__link--title">매치 신청하는
																	법이 궁금해요</div>
																<div class="a02-article-list__articleTag">Q & A</div> <i aria-hidden="true"
																class="a02-article-list__arrow"></i>
														</a></li>



														<li class="a02-article-list__list-item tags"><a
															href="../customer/qnaView.do?b_idx=30"
															class="a02-article-list__link">
																<div class="a02-article-list__link--title">신청한 경기를
																	취소 하고 싶어요</div>
																<div class="a02-article-list__articleTag">Q & A</div> <i aria-hidden="true"
																class="a02-article-list__arrow"></i>
														</a></li>



														<li class="a02-article-list__list-item tags"><a
															href="../customer/qnaView.do?b_idx=31"
															class="a02-article-list__link">
																<div class="a02-article-list__link--title">우천시 경기가
																	진행되나요?</div>
																<div class="a02-article-list__articleTag">Q & A</div> <i
																aria-hidden="true" class="a02-article-list__arrow"></i>
														</a></li>



														<li class="a02-article-list__list-item tags"><a
															href="../customer/qnaView.do?b_idx=32"
															class="a02-article-list__link">
																<div class="a02-article-list__link--title">​​원데이리그 시즌 파이널</div>
																<div class="a02-article-list__articleTag">공지사항</div> <i aria-hidden="true"
																class="a02-article-list__arrow"></i>
														</a></li>
													</ul>
												</div>
												<!-- <div class="a02-article-list__articles" id="gromitArticles" style="display:none">
            <ul class="a02-article-list__list" id="gromitArticleListing"></ul>
        </div> -->
											</div>
										</div>


									</div>
								</div>

							</div>

						</div>

					</div>
					<!-- end content -->
				</div>
			</div>
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