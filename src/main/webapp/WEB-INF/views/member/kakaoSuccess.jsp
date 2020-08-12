<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="ko">
<head>
<script type="text/javascript"
  src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js"
  charset="utf-8"></script>
<script type="text/javascript"
  src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<style type="text/css">
html, div, body, h3 {
  margin: 0;
  padding: 0;
}

h3 {
  display: inline-block;
  padding: 0.6em;
}
</style>
<!-- <script type="text/javascript">
  $(window).ready(function(){
   		$("#loginFrm").submit();
    });
  //location.href = "${pageContext.request.contextPath}/";
</script> -->
<script type="text/javascript">

</script>

</head>
<body>
  <div
    style="background-color: #fff480; top:50%; width: 100%; height: 50px; text-align: center; color: black;">
    <h3>KakaoLogin Success</h3>
  </div>
  <br>
  <h2 style="text-align: center" id="name"></h2>
  <h2 style="text-align: center" id="m_id"></h2>
  <h4 style="text-align: center" id="email"></h4>
  
  		<c:url value="/member/loginAction" var="loginUrl" />
  		<form:form class="" id="loginFrm" name="loginFrm" action="${loginUrl}" method="post">
  			<input type="hidden" name="m_id" id="m_id" value="${m_id}"/>
  			<input type="hidden" name="m_pw" id="m_pw" value="${m_pw}"/>
  		</form:form>
  
<script>
    $(function () {
      $("body").hide();
      $("body").fadeIn(1000);  // 1초 뒤에 사라 지자 
     
     setTimeout(function(){$("body").fadeOut(1000);},1000);
     setTimeout(function(){$("#loginFrm").submit();},2000);
//      setTimeout(function(){location.href= "${pageContext.request.contextPath}/"},2000);
// 2초 뒤에 메인 화면 으로 가자  
    
    })
  </script>
</body>
</html>