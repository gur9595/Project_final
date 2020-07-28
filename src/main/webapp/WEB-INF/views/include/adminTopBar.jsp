<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin5">
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                    <a class="navbar-brand" href="index.html">
                        <!-- Logo icon -->
                        <b class="logo-icon p-l-10">
                        
                        </b>
                        <!--End Logo icon -->
                         <!-- Logo text -->
                        <span class="logo-text">
                             <!-- dark Logo text -->
                             
                            <a  style="color: white;" href="${pageContext.request.contextPath }/admin/adminMain.do"><h2>&nbsp;B-PRO ADMIN</h2></a>
                        </span>
                        <!-- Logo icon -->
                    </a>
                    <!-- End Logo -->
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">

                    <ul class="navbar-nav float-right">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            
                            <img src="./../resources/img/1.jpg" alt="user" class="rounded-circle" width="31"></a>
                            
                            <div class="dropdown-menu dropdown-menu-right user-dd animated">
                             <form:form method="post" action="${pageContext.request.contextPath }/admin/adminLogout">
                                <a class="dropdown-item" href="javascript:void(0)"><button style="width: 100; height: 100%;" class="fa fa-power-off m-r-5 m-l-5" type="submit">Logout</button></a>
							 </form:form>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>