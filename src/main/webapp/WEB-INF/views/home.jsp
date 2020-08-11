<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>B-PRO</title>
<!--
Template Name: Chillaid
Author: <a href="https://www.os-templates.com/">OS Templates</a>
Author URI: https://www.os-templates.com/
Copyright: OS-Templates.com
Licence: Free to use under our free template licence terms
Licence URI: https://www.os-templates.com/template-terms
--> 
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<meta charset="utf-8">
<meta name="viewport" 
   content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="./resources/css/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<!-- ############################## T O P############################################################ -->
<%@ include file="./include/top_main.jsp"%>
<!-- ################################################################################################ -->
<div class="jb-box">
   <div>
      <video autoplay muted loop id="myVideo">
        <source src="./resources/videos/testmov002.mp4" type="video/mp4">
      </video> 
   </div>
   
  <div class="jb-text"> 
    <!-- ################################################################################################ -->
    <article>
      <p style="font-size:100px;">We can Be a PRO !</p>
    </article>
    <!-- ################################################################################################ -->
  </div>
</div>

<!-- ################################################################################################ -->
<div class="wrapper row3">

</div>
<!-- ######################################## footer ########################################### -->
<%@ include file="./include/footer.jsp"%>
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="./resources/js/jquery.min.js"></script>
<script src="./resources/js/jquery.backtotop.js"></script>
<!-- Homepage specific -->
<script src="./resources/js/jquery.easypiechart.min.js"></script>
<!-- / Homepage specific -->
</body>
</html>