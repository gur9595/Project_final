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

<!-- summernote-lite -->
<script src="./../resources/summernote/summernote-lite.js"></script>
<script src="./../resources/summernote/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="./../resources/summernote/summernote-lite.css" />
<script>
function show_contents(id) {
    
    var doing = document.getElementById("event_doing");
    var end = document.getElementById("event_end");
    
    //탭 선택에 따라 컨텐츠를 다르게 보여준다.
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
		location.href = "eventUpload.do";
	});
});
 
//포스트 업로드
function eventUploading(frm){
	//폼값검증
	if(frm.title.value==""){
		alert("제목을 입력해주세요.");
		return false;
	}
	if(frm.editordata.value==""){
		alert("내용을 입력해주세요.");
		return false;
	}
	frm.submit();
}
</script>
<style>
.table-style{
	overflow: hidden;
	font-size: 1.2em;
}
.input-type input{
	display: inline-block;
}
.color-box{
	background-color: #d6f4ff;
	/*border: 1px solid #27b6ea;*/
	border-radius: 5px;
	padding: 10px;
}
.input-text{
	margin-right: 20px;
}
.dropdown-toggle::after {
    display:none;
}
.upload-btn-wrap{
	width: 49.99%; height: 50px; border: 0px solid black; float: right; position: relative;
}
.upload-btn{
	position: absolute;
	bottom: 0;
	right: 0;
	height: 40px;
	background-color: #b0f2ce;
	border: none;
	border-radius: 5px;
	font-weight: bold;
	color: #149e2b;
	padding: 10px;
	width: 100px;
	font-size: 1.1em;
}
</style>
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
	    <div class="container">
		    <form name="uploadFrm" method="post">
		    	<div style="float: left; border: 0px solid black; width: 49.99%; height: 50px; position: relative; margin-bottom: 10px;">
		    		<div style="font-size: 25px; color: black; position: absolute; bottom: 25%;">이벤트 등록</div>
		    	</div>
				<!-- 버튼 -->
				<div class="upload-btn-wrap">
					<button type="button" class="upload-btn" onclick="eventUploading(this.form);">등록</button>
				</div>
				<table class="table table-bordered table-style" style="color: black;">
					<!-- 분류선택 -->
					<tr>
						<td width="50%;" height="100%;">
							분류
						</td>
						<td>
							이벤트 기간
						</td>
					</tr>
					<tr>
						<td class="input-type">
							<div class="color-box">
								<input type="radio" name="eventType" value="대회" />
									<span class="input-text">대회</span>
								<input type="radio" name="eventType" value="대회" />
									<span class="input-text">협찬</span>
								<input type="radio" name="eventType" value="대회" />
									<span class="input-text">추첨</span>
								<input type="radio" name="eventType" value="대회" />
									<span class="input-text">할인</span>
							</div>
						</td>
						<td>
							달력삽입예정
						</td>
					</tr>
					
					<!-- 제목 -->
					<tr>
						<td colspan="2" class="input-type">
							<input type="text" style="width: 100%; height: 35px; padding-left: 10px;
								border: 1px solid #BDBDBD; border-radius: 5px;
								"placeholder="제목을 입력해주세요." name="title"  />
						</td>
					</tr>
					
					<!-- 본문 -->
					<tr>
						<td colspan="2">
							<textarea name="editordata" id="summernote"></textarea>
						</td>
					</tr>
					
					<!-- 파일첨부 -->
					<tr>
						<td colspan="2">
							태그를 입력해 주세요, 태그 입력 가능하게, 마우스 클릭시#박스 생성, 스페이스바 혹은 엔터 입력시
							다음 #박스 생기게
						</td>
					</tr>
				</table>
			</form>
	    </div>
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>

<!-- footer -->
<%@ include file="./../include/footer.jsp"%>
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>

<!-- JAVASCRIPTS -->
<script>
$('#summernote').summernote({
	focus : true,
	minHeight : 600,
	maxHeight : null,
	placeholder : '내용을 입력해주세요.',
	lang : "ko-KR",
	toolbar: [
		['fontname', ['fontname']],
	    ['fontsize', ['fontsize']],
	    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
	    ['color', ['color']],
	    ['table', ['table']],
	    ['para', ['ul', 'ol', 'paragraph']],
	    ['height', ['height']],
	    ['insert',['picture','link','video']],
	    ['view', ['fullscreen', 'help']]
	],
	fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
	fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
});
</script>

<script src="./../resources/js/jquery.min.js"></script>
<script src="./../resources/js/jquery.backtotop.js"></script>
</body>
</html>