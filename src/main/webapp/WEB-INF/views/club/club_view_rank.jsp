<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이틀</title>

	<link href="./../resources/css/club_view2.css" rel="stylesheet">
    <link href="./../resources/css/club_view_page.css" rel="stylesheet">
    <link href="./../resources/admin_css/style.min.css" rel="stylesheet">
    <script src="/resources/js/view_custommin.js"></script>
    <script src="/resources/js/club_view.js"></script>
    <script src="/resources/js/club_sidebarmenu.js"></script>

</head>
<style>
	body{
		font-size: 150%;
	}
    h2 { 
        font-size: 250%;
        font-weight: bold;
        text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
        color: #666; border-bottom: 2px solid #ccc;
        border-left: 10px solid #55555B;
        margin: 5px 0; letter-spacing: 1px; word-spacing: 3px;
    }

    table{
        margin-left: auto; margin-right: auto;
        width: 750px;
        table-layout: fixed;
        border-collapse: collapse;
    }
    td{
        border-bottom: 1px solid #444444;
        width: 70px; height: 30px;
    }
    th{
        height:40px; text-align: center;
        border-bottom: 1px solid #444444;
    }
</style>
<body>
    <div id="main-wrapper">
        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin5">
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                    <a class="navbar-brand" href="introduce.html">
 						<span class="logo-text">  
                             <a  style="color: white;" href="${pageContext.request.contextPath }"><h1>&nbsp;B-PRO</h1></a>
                        </span>
                    </a>
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
                </div>
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <ul class="navbar-nav float-left mr-auto">
                        <li class="nav-item d-none d-md-block"><a class="nav-link sidebartoggler waves-effect waves-light" href="javascript:void(0)" data-sidebartype="mini-sidebar"><i class="mdi mdi-menu font-24"></i></a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                             <span class="d-none d-md-block">Create New <i class="fa fa-angle-down"></i></span>
                             <span class="d-block d-md-none"><i class="fa fa-plus"></i></span>   
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                    </ul>
                    <ul class="navbar-nav float-right">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-bell font-24"></i>
                            </a>
                             <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle waves-effect waves-dark" href="" id="2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="font-24 mdi mdi-comment-processing"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right mailbox animated bounceInDown" aria-labelledby="2">
                                <ul class="list-style-none">
                                    <li>
                                        <div class="">
                                             <!-- Message -->
                                            <a href="javascript:void(0)" class="link border-top">
                                                <div class="d-flex no-block align-items-center p-10">
                                                    <span class="btn btn-success btn-circle"><i class="ti-calendar"></i></span>
                                                    <div class="m-l-10">
                                                        <h5 class="m-b-0">Event today</h5> 
                                                        <span class="mail-desc">Just a reminder that event</span> 
                                                    </div>
                                                </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)" class="link border-top">
                                                <div class="d-flex no-block align-items-center p-10">
                                                    <span class="btn btn-info btn-circle"><i class="ti-settings"></i></span>
                                                    <div class="m-l-10">
                                                        <h5 class="m-b-0">Settings</h5> 
                                                        <span class="mail-desc">You can customize this template</span> 
                                                    </div>
                                                </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)" class="link border-top">
                                                <div class="d-flex no-block align-items-center p-10">
                                                    <span class="btn btn-primary btn-circle"><i class="ti-user"></i></span>
                                                    <div class="m-l-10">
                                                        <h5 class="m-b-0">Pavan kumar</h5> 
                                                        <span class="mail-desc">Just see the my admin!</span> 
                                                    </div>
                                                </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)" class="link border-top">
                                                <div class="d-flex no-block align-items-center p-10">
                                                    <span class="btn btn-danger btn-circle"><i class="fa fa-link"></i></span>
                                                    <div class="m-l-10">
                                                        <h5 class="m-b-0">Luanch Admin</h5> 
                                                        <span class="mail-desc">Just see the my new admin!</span> 
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="../../assets/images/users/1.jpg" alt="user" class="rounded-circle" width="31"></a>
                            <div class="dropdown-menu dropdown-menu-right user-dd animated">
                                <a class="dropdown-item" href="javascript:void(0)"><i class="ti-user m-r-5 m-l-5"></i> My Profile</a>
                                <a class="dropdown-item" href="javascript:void(0)"><i class="ti-wallet m-r-5 m-l-5"></i> My Balance</a>
                                <a class="dropdown-item" href="javascript:void(0)"><i class="ti-email m-r-5 m-l-5"></i> Inbox</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="javascript:void(0)"><i class="ti-settings m-r-5 m-l-5"></i> Account Setting</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="javascript:void(0)"><i class="fa fa-power-off m-r-5 m-l-5"></i> Logout</a>
                                <div class="dropdown-divider"></div>
                                <div class="p-l-30 p-10"><a href="javascript:void(0)" class="btn btn-sm btn-success btn-rounded">View Profile</a></div>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <aside class="left-sidebar" data-sidebarbg="skin5">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav" class="p-t-30">
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="clubView.do?c_idx=${clubDTO.c_idx }" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span class="hide-menu">클럽 소개</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="clubViewMember.do?c_idx=${clubDTO.c_idx }" aria-expanded="false"><i class="mdi mdi-chart-bar"></i><span class="hide-menu">클럽회원</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="clubViewRank.do?c_idx=${clubDTO.c_idx }" aria-expanded="false"><i class="mdi mdi-chart-bubble"></i><span class="hide-menu">랭킹</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="clubViewMatch.do?c_idx=${clubDTO.c_idx }" aria-expanded="false"><i class="mdi mdi-border-inside"></i><span class="hide-menu">클럽경기</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="clubViewFormation.do?c_idx=${clubDTO.c_idx }" aria-expanded="false"><i class="mdi mdi-receipt"></i><span class="hide-menu">전술</span></a>
                    </ul>  
                </nav>
            </div>
        </aside>

        
        <div class="page-wrapper">
             <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h2 class="page-title" style="font-size: 40px;">&nbsp;랭크</h2>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Library</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <!-- column -->
                    <div class="col-lg-9">
                        <!-- Tabs -->
                        <div class="card">
                            <!-- Tab panes -->
                            <div class="tab-content tabcontent-border"> 
                                <div>
                                    <div class="p-20">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title" style="text-align: center; font-size: 30px;">클럽 내 랭킹</h4>
                                            </div>
                                            <h5 style="margin-left: 140px; font-weight: 700;">득점순위</h5>
                                            <div class="comment-widgets scrollable">
                                                <table style="width: 550px;">
                                                    <tr style="border-bottom: 3px solid #036">
                                                        <th>순위</th>
                                                        <th>선수명</th>
                                                        <th>경기</th>
                                                        <th>득점</th>
                                                    </tr>
                                                    <tr>
                                                        <th>1</th>
                                                        <th>김희철</th>
                                                        <th>30</th>
                                                        <th>10</th>
                                                    </tr>
                                                    <tr>
                                                        <th>2</th>
                                                        <th>김희철</th>
                                                        <th>30</th>
                                                        <th>10</th>
                                                    </tr>
                                                    <tr>
                                                        <th>3</th>
                                                        <th>김희철</th>
                                                        <th>30</th>
                                                        <th>10</th>
                                                    </tr>
                                                    <tr>
                                                        <th>4</th>
                                                        <th>김희철</th>
                                                        <th>30</th>
                                                        <th>10</th>
                                                    </tr>
                                                    <tr>
                                                        <th>5</th>
                                                        <th>김희철</th>
                                                        <th>30</th>
                                                        <th>10</th>
                                                    </tr>
                                                </table>
                                            </div>
                                            <br /><br />
                                            <h5 style="margin-left: 140px; font-weight: 700;">어시스트순위</h5>
                                            <div class="comment-widgets scrollable">
                                                <table style="width: 550px;">
                                                    <tr style="border-bottom: 3px solid #036">
                                                        <th>순위</th>
                                                        <th>선수명</th>
                                                        <th>경기</th>
                                                        <th>도움</th>                                                  
                                                    </tr>
                                                    <tr>
                                                        <th>1</th>
                                                        <th>김희철</th>
                                                        <th>10</th>
                                                        <th>30</th>                                                     
                                                    </tr>
                                                    <tr>
                                                        <th>2</th>
                                                        <th>김희철</th>
                                                        <th>10</th>
                                                        <th>30</th>                                                      
                                                    </tr>
                                                    <tr>
                                                        <th>3</th>
                                                        <th>김희철</th>
                                                        <th>10</th>
                                                        <th>30</th>                                                      
                                                    </tr>
                                                    <tr>
                                                        <th>4</th>
                                                        <th>김희철</th>
                                                        <th>10</th>
                                                        <th>30</th>                                                        
                                                    </tr>
                                                    <tr>
                                                        <th>5</th>
                                                        <th>김희철</th>
                                                        <th>10</th>
                                                        <th>30</th>                                                      
                                                    </tr>
                                                </table>
                                            </div>
                                            <br /><br />
                                            <h5 style="margin-left: 140px; font-weight: 700;">공격포인트 순위</h5>
                                            <div class="comment-widgets scrollable">
                                                <table style="width: 550px;">
                                                    <tr style="border-bottom: 3px solid #036">
                                                        <th>순위</th>
                                                        <th>선수명</th>
                                                        <th>득점+도움</th>                                                  
                                                    </tr>
                                                    <tr>
                                                        <th>1</th>
                                                        <th>김희철</th>
                                                        <th>30</th>                                                     
                                                    </tr>
                                                    <tr>
                                                        <th>2</th>
                                                        <th>김희철</th>
                                                        <th>30</th>                                                      
                                                    </tr>
                                                    <tr>
                                                        <th>3</th>
                                                        <th>김희철</th>
                                                        <th>30</th>                                                      
                                                    </tr>
                                                    <tr>
                                                        <th>4</th>
                                                        <th>김희철</th>
                                                        <th>30</th>                                                        
                                                    </tr>
                                                    <tr>
                                                        <th>5</th>
                                                        <th>김희철</th>
                                                        <th>30</th>                                                      
                                                    </tr>
                                                </table>
                                            </div>
                                            <br /><br />  
                                            <h5 style="margin-left: 140px; font-weight: 700;">최다출전순위</h5>
                                            <div class="comment-widgets scrollable">
                                                <table style="width: 550px;">
                                                    <tr style="border-bottom: 3px solid #036">
                                                        <th>순위</th>
                                                        <th>선수명</th>
                                                        <th>경기</th>                                                  
                                                    </tr>
                                                    <tr>
                                                        <th>1</th>
                                                        <th>김희철</th>
                                                        <th>30</th>                                                     
                                                    </tr>
                                                    <tr>
                                                        <th>2</th>
                                                        <th>김희철</th>
                                                        <th>30</th>                                                      
                                                    </tr>
                                                    <tr>
                                                        <th>3</th>
                                                        <th>김희철</th>
                                                        <th>30</th>                                                      
                                                    </tr>
                                                    <tr>
                                                        <th>4</th>
                                                        <th>김희철</th>
                                                        <th>30</th>                                                        
                                                    </tr>
                                                    <tr>
                                                        <th>5</th>
                                                        <th>김희철</th>
                                                        <th>30</th>                                                      
                                                    </tr>
                                                </table>
                                            </div>  
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <!-- column -->
                    <div class="col-lg-3">
                        <!-- Card -->
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Chat Option</h4>
                                <div class="chat-box scrollable" style="height:475px;">
                                    <!--chat Row -->
                                    <ul class="chat-list">
                                        <!--chat Row -->
                                        <li class="chat-item">
                                            <div class="chat-img"><img src="../../assets/images/users/1.jpg" alt="user"></div>
                                            <div class="chat-content">
                                                <h6 class="font-medium">James Anderson</h6>
                                                <div class="box bg-light-info">Lorem Ipsum is simply dummy text of the printing &amp; type setting industry.</div>
                                            </div>
                                            <div class="chat-time">10:56 am</div>
                                        </li>
                                        <!--chat Row -->
                                        <li class="chat-item">
                                            <div class="chat-img"><img src="../../assets/images/users/2.jpg" alt="user"></div>
                                            <div class="chat-content">
                                                <h6 class="font-medium">Bianca Doe</h6>
                                                <div class="box bg-light-info">It’s Great opportunity to work.</div>
                                            </div>
                                            <div class="chat-time">10:57 am</div>
                                        </li>
                                        <!--chat Row -->
                                        <li class="odd chat-item">
                                            <div class="chat-content">
                                                <div class="box bg-light-inverse">I would love to join the team.</div>
                                                <br>
                                            </div>
                                        </li>
                                        <!--chat Row -->
                                        <li class="odd chat-item">
                                            <div class="chat-content">
                                                <div class="box bg-light-inverse">Whats budget of the new project.</div>
                                                <br>
                                            </div>
                                            <div class="chat-time">10:59 am</div>
                                        </li>
                                        <!--chat Row -->
                                        <li class="chat-item">
                                            <div class="chat-img"><img src="../../assets/images/users/3.jpg" alt="user"></div>
                                            <div class="chat-content">
                                                <h6 class="font-medium">Angelina Rhodes</h6>
                                                <div class="box bg-light-info">Well we have good budget for the project</div>
                                            </div>
                                            <div class="chat-time">11:00 am</div>
                                        </li>
                                        <!--chat Row -->
                                    </ul>
                                </div>
                            </div>
                            <div class="card-body border-top">
                                <div class="row">
                                    <div class="col-9">
                                        <div class="input-field m-t-0 m-b-0">
                                            <textarea id="textarea1" placeholder="Type and enter" class="form-control border-0"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <a class="btn-circle btn-lg btn-cyan float-right text-white" href="javascript:void(0)"><i class="fas fa-paper-plane"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer text-center">
                Copyright © 2020 - All Rights Reserved <a href="${pageContext.request.contextPath }">Be-Pro</a>.
            </footer>
        </div>
    </div>
</body>    
</html>