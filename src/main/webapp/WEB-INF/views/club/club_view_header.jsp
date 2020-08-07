<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal.username" var="m_id" />
</sec:authorize>
<!DOCTYPE html>
<html>
<body>
        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin5">
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                    <a class="navbar-brand" href="introduce.html">
                        <b class="logo-icon p-l-10">

                            <img src="./../resources/img/bprologo.png" height="30px" alt="마크" style="padding-left: 10px; color: #fff; -webkit-filter : opacity(.5) drop-shadow(0 0 0 white); filter :opacity(.5) drop-shadow(0 0 0 white);" />
                           
                        </b>
                    </a>
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
                </div>
                
            </nav> 
        </header>
</body>
</html>