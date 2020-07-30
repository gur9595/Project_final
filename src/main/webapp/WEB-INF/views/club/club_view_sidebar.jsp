<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
	
	<aside class="left-sidebar" data-sidebarbg="skin5">
	    <div class="scroll-sidebar">
	        <nav class="sidebar-nav">
	            <ul id="sidebarnav" class="p-t-30">
	                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="clubView.do?c_idx=${clubDTO.c_idx }" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span class="hide-menu">HOME</span></a></li>
	                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="clubViewMember.do?c_idx=${clubDTO.c_idx }" aria-expanded="false"><i class="mdi mdi-chart-bar"></i><span class="hide-menu">MEMBER</span></a></li>
	                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="clubViewRank.do?c_idx=${clubDTO.c_idx }" aria-expanded="false"><i class="mdi mdi-chart-bubble"></i><span class="hide-menu">RANKING</span></a></li>
	                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="clubViewMatch.do?c_idx=${clubDTO.c_idx }" aria-expanded="false"><i class="mdi mdi-border-inside"></i><span class="hide-menu">MATCH</span></a></li>
	                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="clubViewFormation.do?c_idx=${clubDTO.c_idx }" aria-expanded="false"><i class="mdi mdi-receipt"></i><span class="hide-menu">TACTIC</span></a>    
	                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="clubViewManage.do?c_idx=${clubDTO.c_idx }" aria-expanded="false"><i class="mdi mdi-receipt"></i><span class="hide-menu">MANAGE</span></a>                             
	            </ul>
	        </nav>
	    </div>
	</aside>
</body>
</html>