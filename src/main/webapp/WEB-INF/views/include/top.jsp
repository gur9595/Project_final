<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="row hoc">
	<div class="col-md-12 right" style="background-color: #282e39">
		<nav id="mainav" class="right text-right" style="padding-top: 10px; padding-right: 20px; padding-bottom: 10px;">
			<ul class="cl ear ml-auto mb-0" style="font-size: 15px; color: #fff;">
				<li>
					<c:choose>
						<c:when test="${not empty m_id }">
							<form:form method="post" action="${pageContext.request.contextPath }/member/logout">
								<button type="submit" style="border:0; background-color: #282e39; padding-bottom: 2px;" >LOGOUT</button>
							</form:form>	 
						</c:when>
						<c:otherwise>
							<a class="" href="${pageContext.request.contextPath }/member/login.do">Login</a>
						</c:otherwise>
					</c:choose>
				</li>
	        
				<c:if test="${not empty m_id}">
		       		<li><a href="${pageContext.request.contextPath }/member/memberEdit.do">MyPage</a></li>
		        </c:if>
	        
	        	<li><a class="dr op" href="${pageContext.request.contextPath }/customer/qnaMain.do">Q & A</a></li>
	        	
	        	<li><a class="" href="${pageContext.request.contextPath }/payment/paymentMain.do">charge</a></li>
	        
			</ul>
	    </nav>
    </div>
</div>

<div style="background-color: #fff">
<header id="header" class="hoc clear"> 
<div class="row" style="padding-top: 25px; padding-bottom: 25px;">    
	<div class="col-md-6"> 
		<nav id="mainav" class="left text-left">
			<ul class="cl ear ml-auto mb-0" style="font-size: 10px; color: #000000; padding-left: 20px; ">
		    	<li style="font-size: 30px;"><a href="${pageContext.request.contextPath }">B-PRO</a></li>
			</ul>
		</nav>
	</div>
	<div class="col-md-6">
		<nav id="mainav" class="right text-right">
			<ul class="cl ear ml-auto mb-0" style="font-size: 10px; color: #000000; padding-right: 20px; ">
		        
		        <li style="font-size: 30px;"><a class="dr op" href="${pageContext.request.contextPath }/club/clubMain.do">Club</a></li>
		        
		        <li style="font-size: 30px;"><a class="dr op" href="${pageContext.request.contextPath }/match/matchMain.do">Matching</a></li>
		        
		        <li style="font-size: 30px;"><a class="dr op" href="${pageContext.request.contextPath }/market/marketMain.do">Market</a></li>
		        
		        <li style="font-size: 30px;"><a class="dr op" href="${pageContext.request.contextPath }/member/managerMain.do">Manager</a></li>
		        
			</ul>
		</nav>
    
	</div>
</div>
 </header>
 </div> 