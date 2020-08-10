<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<body>
	<i class="fab fa-adobe"></i>
<<<<<<< HEAD
	<aside class="left-sidebar" style="width:200px" data-sidebarbg="skin5">
=======
	<aside class="left-sidebar" data-sidebarbg="skin5" style="width:200px;">
>>>>>>> branch 'master' of https://github.com/gur9595/Project_final.git
	    <div class="scroll-sidebar">
	        <nav class="sidebar-nav">
	            <ul id="sidebarnav" class="p-t-30">
	            
	                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="clubView.do?c_idx=${clubDTO.c_idx }" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span class="hide-menu">HOME</span></a></li>
	                <c:if test="${checkMember == 1 }">
		                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="clubViewMember.do?c_idx=${clubDTO.c_idx }" aria-expanded="false"><i class="mdi mdi-account"></i><span class="hide-menu">MEMBER</span></a></li>
		                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="clubViewRank.do?c_idx=${clubDTO.c_idx }" aria-expanded="false"><i class="mdi mdi-poll"></i><span class="hide-menu">RANKING</span></a></li>
		                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="clubViewMatch.do?c_idx=${clubDTO.c_idx }" aria-expanded="false"><i class="mdi mdi-soccer"></i><span class="hide-menu">MATCH</span></a></li>
		                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="clubViewFormation.do?c_idx=${clubDTO.c_idx }" aria-expanded="false"><i class="mdi mdi-clipboard-outline"></i><span class="hide-menu">TACTIC</span></a></li>    
	                </c:if>
	                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="clubViewHistory.do?c_idx=${clubDTO.c_idx }" aria-expanded="false"><i class="mdi mdi-format-list-bulleted"></i><span class="hide-menu">HISTORY</span></a></li>                             
	                <c:if test="${getCmgrade.cm_grade != 'player' && getCmgrade.cm_grade != null }">
	                	<li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="clubViewManage.do?c_idx=${clubDTO.c_idx }" aria-expanded="false"><i class="mdi mdi-account-plus"></i><span class="hide-menu">JOIN</span></a></li>                             
	                </c:if>
	            </ul>
	        </nav>
	    </div> 
	</aside> 
</body>
</html>