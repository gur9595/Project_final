<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<aside class="left-sidebar" data-sidebarbg="skin5">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
            <ul id="sidebarnav" class="p-t-30">
             <%--    <li class="sidebar-item"> 
	                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath }/stadium/stMember.do" aria-expanded="false">
	                	<i class="mdi mdi-view-dashboard"></i>
	                	<span class="hide-menu">회원 관리</span>
                	</a>
                </li> --%>
                <li class="sidebar-item"> 
	                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath }/stadium/Reservation.do" aria-expanded="false">
	                	<i class="mdi mdi-chart-bar"></i>
	                	<span class="hide-menu">예약 현황</span>
	                </a>
                </li>
                <li class="sidebar-item"> 
	                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath }/stadium/Income.do" aria-expanded="false">
		                <i class="mdi mdi-chart-bubble"></i>
		                <span class="hide-menu">수입 현황</span>
	                </a>
                </li>
                <li class="sidebar-item"> 
	                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath }" aria-expanded="false">
		                <i class="mdi mdi-border-inside"></i>
		                <span class="hide-menu">이용내역</span>
	                </a>
                </li>
                <%-- <li class="sidebar-item"> 
	                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath }/stadium/stBoard.do" aria-expanded="false">
		                <i class="mdi mdi-blur-linear"></i>
		                <span class="hide-menu">게시판 관리</span>
	                </a>
                </li> --%>
            </ul>
        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
</aside>