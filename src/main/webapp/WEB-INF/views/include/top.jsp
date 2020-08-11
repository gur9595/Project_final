<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal.username" var="m_id" />
</sec:authorize>
<style>
.user-common{
   border: 0px solid orange; 
   display: inline-block;
   width: auto;
}
.menu-common{  
   border: 0px solid orange; width: auto; padding: 0; overflow: hidden; margin-left: auto; margin-right: auto;
}
.li-common{
   font-size: 30px;
}
</style>
<!-- 네비바 -->
<div class="row hoc" style="background-color: #000000"> 
   <div class="col-md-12 right" >
      <nav id="mainav" class="right text-right" style="padding-top: 10px; padding-right: 20px; padding-bottom: 10px;">
         <ul class="cl ear ml-auto mb-0" style="font-size: 15px; color: #fff; border: 0px solid green;">  
            <li>
               <c:choose>
                  <c:when test="${empty m_id }">
                     <div class="user-common"> 
                        <a style="color: #FF8000;" href="${pageContext.request.contextPath }/member/memberSelect.do">SIGN UP</a>
                     </div>
                     <div class="user-common" style="margin-left: 20px;">
                        <a style="color: #FF8000;" href="${pageContext.request.contextPath }/member/login.do">LOGIN</a>
                     </div>
                  </c:when> 
                  <c:otherwise>    
                     <div class="user-common">
                            <a style="color: #FF8000;" href="${pageContext.request.contextPath }/member/mypageMain.do">MYPAGE</a>
                     </div>
                     <div class="user-common" style="margin-left: 20px;">
                        <a style="color: #FF8000;" href="${pageContext.request.contextPath }/member/logout">LOGOUT</a>
                     </div>
                  </c:otherwise> 
               </c:choose>
            </li>
         </ul>
       </nav>
    </div>
</div>
<div style="background-color: #fff">
<header id="header" class="hoc clear"> 
<div class="row" style="padding-top: 25px; padding-bottom: 25px;">

   <div class="menu-common" style="width: 550px;">  
      <nav id="mainav" class="right text-right"> 
         <ul class="cl ear" style="font-size: 10px; color: black;">
              <li class="li-common"><a class="dr op menu-style" href="${pageContext.request.contextPath }/club/clubMain.do">Club</a></li>
              
              <li class="li-common" style="margin-left: 30px;"><a class="dr op menu-style" href="${pageContext.request.contextPath }/match/matchMain.do">Matching</a></li>
              
              <li class="li-common" style="margin-left: 30px; margin-right: 20px;"><a class="dr op menu-style" href="${pageContext.request.contextPath }/manager/managerMain.do">Manager</a></li>
         </ul> 
      </nav> 
   </div>
   
   <div class="menu-common">
      <nav id="mainav" class="left text-left">
         <ul class="cl ear" style="font-size: 10px; text-align: center; width: auto;">
             <li style="font-size: 30px; display: inline-block;">
                <a href="${pageContext.request.contextPath }">
                   <!--  b-pro로고 -->
                   <img src="${pageContext.request.contextPath }/resources/img/bprologo.png" style = "width:auto;height:30px;"/>
                </a>
             </li>
         </ul>
      </nav>
   </div>
   
   <div class="menu-common" style="width: 550px;"> 
      <nav id="mainav" class="right text-left"> 
         <ul class="cl ear" style="font-size: 10px; color: black;">
              <li class="li-common" style="margin-right: 80px; margin-left: 20px;"><a class="dr op menu-style" href="${pageContext.request.contextPath }/event/eventMain.do">Event</a></li>
 
              <li class="li-common" style="margin-right: 80px;"><a class="dr op menu-style" href="${pageContext.request.contextPath }/payment/paymentMain.do">Charge</a></li>
    
              <li class="li-common"><a class="dr op menu-style" href="${pageContext.request.contextPath }/customer/qnaMain.do">Q & A</a></li>
         </ul> 
      </nav>
   </div>
   
</div>
</header>
</div> 