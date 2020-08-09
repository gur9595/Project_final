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
<link href="./../resources/css/layout.css" rel="stylesheet" type="text/css" media="all">
<link href="./../resources/css/match_main.css" rel="stylesheet" type="text/css" media="all">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<script src="./../resources/js/match_main.js"></script>
<style>
body{
    border: 0px solid black;
    margin: 0; padding: 0;
    /* box-sizing: border-box; */
}

/* --------------- 메뉴영역 --------------- */
.tab-wrap{
    height: 100%;
    width: 100%; /* 전체 사이즈 */
    margin: auto; /* 전체 컨텐츠 가운데 정렬 */
    overflow: hidden; /* 박스안으로 컨텐츠가 들어오게 함 */
    border: 0px solid black;
}
.tab-menu-container{
	border: 0px solid black;
    overflow: hidden;
}
.radio-align{
    float: left; /* 라디오 박스 옆으로 나란히 */
    width: 49.9%;
}
.radio-align .tab-radio{
    display: none;
}
.tab-radio:checked ~ .tab-label{
    /* color: white; */
    /* background-color: #27547b; */
    border-radius: 10px 10px 0 0;
}
.tab-label{
	font-size: 1.2em;
    width: 100%;
    height: 50px;
    display: block;
    cursor: pointer;
    line-height: 50px; /* 텍스트 세로정렬 */
    font-weight: bold;
    text-align: center;
    transition: all 0.2s; /* 버튼 넘김시 부드럽게 */
    border-radius: 10px 10px 0 0;
    /* border-bottom: 3px solid #27547b; */
}
.t-style{
	color: black;
}
.tab-underLine{
    height: 3px;
    width: 50%;
    background-color: #27547b;
    transform: translateX(0);
}
/* --------------- 컨텐츠 영역 --------------- */
.tab-box-container{
    border: 0px solid orange;
    overflow: hidden;
    margin-top: 30px;
}
#event-doing{
    display: block;
}
#event_end{
    display: none;
}
.tab-table{
	overflow: hidden;
	border: 0;
}
.tab-table td{
	position: relative;
	height: 800px;
	width: 33.33%;
	border: 0px solid black;
}
.contents-box-left{
	position: absolute; 
	display: inline-block;
	width: 95%;
	height: 100%;
	top: 0;
	left: 0;
}

.contents-box-middle{
	position: absolute;
	display: inline-block;
	width: 95%;
	height: 100%;
	top: 0;
	left: 50%;
	transform: translateX(-50%);
}
.contents-box-right{
	position: absolute;
	display: inline-block;
	width: 95%;
	height: 100%;
	top: 0;
	right: 0;
}
.tab-table img{
	height: 600px;
	width: 440px;
}
.content-text{
	margin-top: 30px;
	padding-left: 15px;
	line-height: 35px;
	border-left: 2px solid #BDBDBD;
}
.content-type{
	font-weight: bold;
	font-size: 1.7em;
	color: black;
}
.content-title{
	font-weight: bold;
	font-size: 1.7em;
	color: black;
}
.content-date{
	font-size: 1.2em;
}
.contents-ul{
	border: 0px solid orange;
	width: 100%;
	height: 100%;  
	overflow: hidden; 
	list-style: none;
	padding: 0; margin: 0;
}
.contents-box-lineFirst{
	width: 32%;
	height: 100%; 
	float: left;
	margin-bottom: 70px;
} 
.contents-box{
	width: 32%;
	height: 100%; 
	float: left;
	margin-left: 2%;
	margin-bottom: 70px;
}
.contents-ul img{
	width: 100%;
	height: 620px;
}
</style>
<script>
function show_contents(id) {
    
    var doing = document.getElementById("event_doing");
    var end = document.getElementById("event_end");
    
    if(id=="tab1"){
        //alert("tabl1체크됨");
        doing.style.display = "block";
        end.style.display = "none";
    }
    else if(id=="tab2"){
        //alert("tab2체크됨");
        doing.style.display = "none";
        end.style.display = "block";
    }

}

$(function(){
	$('#label1').click(function(){
		$('#tab-underLine').css('transform', 'translateX(0)');
	});
	$('#label2').click(function(){
		$('#tab-underLine').css('transform', 'translateX(100%)');
	});
	$('#uploadBtn').click(function(){
		//alert("버튼눌림");
		location.href = "eventWrite.do";
	});
});


</script>
</head>
<body id="top">
<!--top-->
<%@ include file="./../include/top.jsp"%>
<!--각 페이지 이미지-->
<div class="bgded overlay">
  <div id="breadcrumb" class="hoc clear"> 
    <!--이미지 위에 글쓰는곳-->
  </div>
</div>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <div class="content">
    
    	<!-- 탭 전체 영역 -->
	    <div class="tab-wrap">
	        <!-- 탭메뉴 영역 -->
	        <div class="tab-menu-container">
	            <div class="radio-align">
	                <input type="radio" class="tab-radio" name="tabs" id="tab1" checked onchange="show_contents(this.id);">
	                <label class="tab-label" id="label1" for="tab1">
	                	<span class="t-style">진행중인 이벤트</span>
	                </label>
	            </div>
	            
	            <div class="radio-align">
	                <input type="radio" class="tab-radio" name="tabs" id="tab2" onchange="show_contents(this.id);">
	                <label class="tab-label" id="label2" for="tab2">
	                	<span class="t-style">종료된 이벤트</span>
	                </label>
	            </div>            
	        </div>
	        <div class="tab-underLine" id="tab-underLine"></div>
	
	
	
	        <!-- 탭 컨텐츠 영역 -->
	        <div class="tab-box-container">
	        	<!-- 진행중인 이벤트 -->
	            <div class="tab-contents" id="event_doing">
	            	<!-- 반복부분 -->
					<ul class="contents-ul">
						<c:forEach items="${e_list }" var="row" varStatus="loop">
							<c:choose>
								<c:when test="${(loop.index+1) % 3 == 1 }">
									<li>
									<div class="contents-box-lineFirst">
		                				<a href="./eventView.do?e_idx=${row.e_idx }">
			                				<img src="../resources/img/event/event7.jpg"  />
		                				</a>
		                				<a href="javascript:void(0);"> 
			                				<div class="content-text">
			                					<div class="content-type">[${row.e_type }]</div>
			                					<div class="content-title">${row.e_title }</div>
			                					<div class="content-date">${row.e_start } ~ ${row.e_end }</div>
			                				</div>
		                				</a>
	                				</div>
	                				</li>
								</c:when>
								<c:when test="${(loop.index+1) % 3 != 1 }"> 
									<li>
									<div class="contents-box">
		                				<a href="./eventView.do?e_idx=${row.e_idx }">
			                				<img src="../resources/img/event/event5.jpg"  />
		                				</a>
		                				<a href="javascript:void(0);">
			                				<div class="content-text">
			                					<div class="content-type">[${row.e_type }]</div>
			                					<div class="content-title">${row.e_title }</div>
			                					<div class="content-date">${row.e_start } ~ ${row.e_end }</div>
			                				</div>
		                				</a>
	                				</div>
	                				</li>
								</c:when>
								<c:when test="${loop.count%3==0 }">
									</ul><ul>
								</c:when>
							</c:choose>
						</c:forEach>
					</ul>
		                
		            <!-- 글쓰기 버튼 / 페이징 -->
		            <div style="border: 1px solid black; width: 100%; overflow: hidden; position: relative;">
		            	<div style="display: inline-block; position: absolute; bottom: 0; left: 50%; transform: translateX(-50%)">${pagingImg }</div>
			            <input type="button" id="uploadBtn" value="글쓰기" style="float: right; width: 120px; height: 40px; background-color: white; border: 1px solid black;" />
		            </div>
	            </div>
	            
	            
	            
	            <!-- 종료된 이벤트 -->
	            <div class="tab-contents" id="event_end">
	                <table class="tab-table">
	                	<tr>
	                		<td>
	                			<div class="contents-box-left">
	                				<a href="javascript:void(0);">
		                				<img src="../resources/img/event/event4.jpg"  />
	                				</a>
	                				<a href="javascript:void(0);">
		                				<div class="content-text">
		                					<div class="content-type">[협찬]</div>
		                					<div class="content-title">나이키 프로모션 행사</div>
		                					<div class="content-date">2020.03.04 ~ 2020.04.14</div>
		                				</div>
	                				</a>
	                			</div>
	                		</td>
	                		<td>
	                			<div class="contents-box-middle">
	                				<a href="javascript:void(0);">
		                				<img src="../resources/img/event/event5.jpg"  />
	                				</a>
	                				<a href="javascript:void(0);">
		                				<div class="content-text">
		                					<div class="content-type">[추첨]</div>
		                					<div class="content-title">영화 펠레 시사회 추첨</div>
		                					<div class="content-date">2020.06.20 ~ 2020.09.01</div>
		                				</div>
	                				</a>
	                			</div>
	                		</td>
	                		<td>
	                			<div class="contents-box-right">
	                				<a href="javascript:void(0);">
		                				<img src="../resources/img/event/event6.jpg"  />
	                				</a>
	                				<a href="javascript:void(0);">
		                				<div class="content-text">
		                					<div class="content-type">[추첨]</div>
		                					<div class="content-title">제주 유스 축구대회 티켓 추첨</div>
		                					<div class="content-date">2020.01.04 ~ 2020.06.21</div>
		                				</div>
	                				</a>
	                			</div>
	                		</td>
	                	</tr>
	                	<tr>
	                		<td>
	                			<div class="contents-box-left">
	                				<a href="javascript:void(0);">
		                				<img src="../resources/img/event/event7.jpg"  />
	                				</a>
	                				<a href="javascript:void(0);">
		                				<div class="content-text">
		                					<div class="content-type">[추첨]</div>
		                					<div class="content-title">강원FC vs 서울FC 티켓 추첨</div>
		                					<div class="content-date">2020.05.04 ~ 2020.05.30</div>
		                				</div>
	                				</a>
	                			</div>
	                		</td>
	                		<td>
	                			<!-- 빈 컨텐츠 -->
	                		</td>
	                		<td>
	                			<!-- 빈 컨텐츠 -->
	                		</td>
	                	</tr>
	                </table>
	            </div>
	        </div>
	    </div>
	    <!-- 탭 전체 영역 END -->
	    
	</div>
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- footer -->
<%@ include file="./../include/footer.jsp"%>
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
</body>
<!-- JAVASCRIPTS -->
<script>
	function paging(pNum){
		$('#event_doing').load("eventMain.do?nowPage=" + pNum);
	}
</script>
<script src="./../resources/js/jquery.min.js"></script>
<script src="./../resources/js/jquery.backtotop.js"></script>
</html>