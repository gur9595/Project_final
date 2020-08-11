<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<head>

<title>B-PRO</title>
<% String placeholder="#태그를 입력해주세요."; %>
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
//포스트 업로드
function eventUploading(frm){
	//폼값검증
	if(frm.e_title.value==""){
		alert("제목을 입력해주세요.");
		return false;
	}
	if(frm.editordata.value==""){
		alert("내용을 입력해주세요.");
		return false;
	}
	frm.submit();
}

//해시태그(보류)
$(function(){
	
});
</script>
<style>
.table-style{
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
.hashTag-box{
	width: 100%;
	height: 30px;
}
.hashTag-style{
	width: auto;
	overflow: hidden;
	display: inline-block;
	height: 100%;
	border-radius: 3px;
	background-color: #eff0f2;
}
.tag-place{
	background-color: transparent;
	border: none;
}
.date-style{
	width: 46.7%;
	height: 40px;
	display: inline-block;
	border: 1px solid #BDBDBD;
	border-radius: 5px;
}
</style>
</head>
<body id="top">
<!--top-->
<%@ include file="./../include/top.jsp"%>
<!--각 페이지 이미지-->
<div class="bgded overlay" style="background-image:url('./../resources/img/event.jpg'); background-position: 0 95%;">
  <div id="breadcrumb" class="hoc clear"> 
    <!--이미지 위에 글쓰는곳-->
  </div>
</div>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
	    <div class="container">
		    <form name="uploadFrm" method="post" action='<c:url value="/event/eventUpload.do" />'>
		    	<div style="float: left; border: 0px solid black; width: 49.99%; height: 50px; position: relative; margin-bottom: 10px;">
		    		<div style="font-size: 25px; color: black; position: absolute; top: 25%;">이벤트 등록</div>
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
							<!-- 분류 -->
							<div class="color-box">
								<input type="radio" name="e_type" value="대회" />
									<span class="input-text">대회</span>
								<input type="radio" name="e_type" value="협찬" />
									<span class="input-text">협찬</span>
								<input type="radio" name="e_type" value="추첨" />
									<span class="input-text">추첨</span>
								<input type="radio" name="e_type" value="할인" />
									<span class="input-text">할인</span>
							</div>
						</td>
						<td>
							<!-- 이벤트 기간 -->
							<input class="date-style" type="date" name="e_start" id="e_start" placeholder="시작 날짜를 선택해주세요." />
							&nbsp;&nbsp;~&nbsp;&nbsp;
							<input class="date-style" type="date" name="e_end" id="e_end" />
						</td>
					</tr>
					
					<!-- 제목 -->
					<tr>
						<td colspan="2" class="input-type">
							<input type="text" style="width: 100%; height: 35px; padding-left: 10px;
								border: 1px solid #BDBDBD; border-radius: 5px;
								"placeholder="제목을 입력해주세요." name="e_title" id="e_title"  />
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
							썸네일 등록
							<input type="file" name="file" accept="image/*" />
						</td>
					</tr>
					
					<!-- 파일첨부 -->
					<tr>
						<td colspan="2">
							<input class="tag-place" id="tagPlace" type="text" value="#태그를 입력해주세요.(최대10개)" readonly="readonly" size="25" />
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


$("div.note-editable").on('drop',function(e){
    for(i=0; i< e.originalEvent.dataTransfer.files.length; i++){
    	uploadSummernoteImageFile(e.originalEvent.dataTransfer.files[i],$("#summernote")[0]);
    }
   e.preventDefault();
});

</script>

<script src="./../resources/js/jquery.min.js"></script>
<script src="./../resources/js/jquery.backtotop.js"></script>
</body>
</html>