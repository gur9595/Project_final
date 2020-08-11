<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<aside class="left-sidebar" data-sidebarbg="skin5">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
            <ul id="sidebarnav" class="p-t-30">
                <li class="sidebar-item"> 
	                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath }/admin/adminMain.do" aria-expanded="false">
		                <i class="mdi mdi-blur-linear"></i>
		                <span class="hide-menu">홈</span>
	                </a>
                </li>
                <li class="sidebar-item"> 
	                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath }/admin/adminMember.do" aria-expanded="false">
	                	<i class="mdi mdi-view-dashboard"></i>
	                	<span class="hide-menu">회원 관리</span>
                	</a>
                </li>
                <li class="sidebar-item"> 
	                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath }/admin/adminManager.do" aria-expanded="false">
	                	<i class="mdi mdi-chart-bar"></i>
	                	<span class="hide-menu">매니저 신청 관리</span>
	                </a>
                </li>
                <li class="sidebar-item"> 
	                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath }/admin/adminClub.do" aria-expanded="false">
		                <i class="mdi mdi-chart-bubble"></i>
		                <span class="hide-menu">클럽 관리</span>
	                </a>
                </li>
                <li class="sidebar-item"> 
	                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath }/admin/adminStadium.do" aria-expanded="false">
		                <i class="mdi mdi-border-inside"></i>
		                <span class="hide-menu">경기장 관리</span>
	                </a>
                </li>
            </ul>
        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
</aside>