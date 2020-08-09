<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이틀</title>

<script src="./../resources/js/jquery.min.js"></script>
<script src="./../resources/js/jquery.backtotop.js"></script>

<!-- summernote-lite -->
<script src="./../resources/summernote/summernote-lite.js"></script>
<script src="./../resources/summernote/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="./../resources/summernote/summernote-lite.css" />

</head>
<body>

<textarea name="editordata" id="summernote"></textarea>
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>

</body>
<script>
$('#summernote').summernote({
	focus : true,
	minHeight : 600,
	maxHeight : null,
	placeholder : '내용을 입력하세요.',
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
	fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
});
</script>
</html>
