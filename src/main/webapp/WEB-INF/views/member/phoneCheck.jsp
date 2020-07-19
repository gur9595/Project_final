<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="./../resources/css/layout.css" rel="stylesheet" type="text/css" media="all">

</head>
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
<form method="post" id="smsForm">
<table border = "1" align="right" width = "300" height = "200" >
 
<tr>
<td>
<center>
<br>
<span style="color: green; font-weight: bold;">SMS 전송 (문자보내기)</span>
 </center>
    <ul>
      <li>보낼사람 : <input type="text" name="from" placeholder=" 전화번호 입력 ( '-' 포함 )"/></li><br>
      <li>내용 : <textarea name="text" placeholder=" 보낼 내용 입력 "></textarea>    </li><br>
      <center>
      <input type="button" onclick="sendSMS('sendSms')" value="전송하기" /><br>
      </center>
    </ul>
 
    </td>
    </tr>
    </table>
  </form>
 
  <script>
    function sendSMS(pageName){
 
        console.log("문자를 전송합니다.");
        $("#smsForm").attr("action", pageName + ".do"); //위에 있는 폼태그를 컨트롤러로 전송한다.
        $("#smsForm").submit();
    }
  </script>

<div id="dropDownSelect1"></div>
    
    <!-- / main body end -->
    <div class="clear"></div>
  </main>
</div>
<!-- footer -->
<%@ include file="./../include/footer.jsp"%>
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- 로그인 script -->
<script src="js/main.js"></script>
<!-- JAVASCRIPTS -->
<script src="./../resources/js/jquery.min.js"></script>
<script src="./../resources/js/jquery.backtotop.js"></script>
<script src="./../resources/js/jquery.mobilemenu.js"></script>

</body>
</html>
