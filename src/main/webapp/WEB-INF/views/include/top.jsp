<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="wrapper row1" style="background-color: #ffffff">
  <header id="header" class="hoc clear">
  <!-- <hr color="green" style="margin-top: 5px;margin-bottom: 0px;"> -->
    <div id="logo" class="fl_left"> 
      <!-- ################################################################################################ -->
      <h1 class="logoname"><a href="${pageContext.request.contextPath }"style="color: #000000">B-PRO<span></span></a></h1>
      <!-- ################################################################################################ -->
    </div>
    <nav id="mainav" class="fl_right"> 
      <!-- ################################ 상 단 메 뉴 바######################################## -->
      <ul class="clear" style="font-size: 20px; color: #000000;">
        <li class="active">
        	<a href="${pageContext.request.contextPath }" style="font-size: 20px; color: #000000;">Company</a>
        </li>
        
        <c:if test="${not empty m_id }">
        
         	<li>
	        <a class="drop" href="#">MyPage</a>
	          <ul>
	            <li><a href="${pageContext.request.contextPath }/member/memberEdit.do">회원정보 수정</a></li>
	            <li><a href="${pageContext.request.contextPath }/member/memberHistory.do">회원전적 보기</a></li>
	            <li><a href="${pageContext.request.contextPath }/member/memberPay.do">회원결제 내역</a></li>
	          </ul>
	        </li>
        
        </c:if>
        
        
        <li>
        <a class="drop" href="${pageContext.request.contextPath }/club/clubMain.do">Club</a>
        </li>
        
        <li><a class="drop" href="${pageContext.request.contextPath }/match/matchMain.do">Matching</a>
        </li>
        
        <li><a class="drop" href="${pageContext.request.contextPath }/market/marketMain.do">Market</a>
        </li>
       
        <li><a class="drop" href="${pageContext.request.contextPath }/member/managerMain.do">Manager</a>
        </li>
        <li><a class="drop" href="${pageContext.request.contextPath }/customer/qnaMain.do">Q & A</a>
        </li>
        <li><a class="fas fa-donate" href="${pageContext.request.contextPath }/payment/paymentMain.do"></a>
        	
        </li>
        <li>
			<c:choose>
				<c:when test="${not empty m_id }">
					<form:form method="post" action="${pageContext.request.contextPath }/member/logout">
						${m_id }<button style="border: 0; outline: 0; background: white;" class="fas fa-user-alt-slash" type="submit" src="./../resources/logout.png" alt="로그아웃" >LOGOUT</button>
					</form:form>	
				</c:when>
				<c:otherwise>					
					<a class="fas fa-user" href="${pageContext.request.contextPath }/member/login.do">Login</a>
				</c:otherwise>
			</c:choose>
        </li>

      </ul>
      <!-- ################################################################################################ -->
    </nav>
  </header>
</div>