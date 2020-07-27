<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이틀</title>

	<link href="./../resources/css/club_view2.css" rel="stylesheet">
    <link href="./../resources/css/club_view_page.css" rel="stylesheet">
    <script src="./..resources/js/view_custommin.js"></script>
    <script src="./..resources/js/club_view.js"></script>
    <script src="./..resources/js/club_sidebarmenu.js"></script>

</head>
<style>
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
                        <!-- Logo icon -->
                        <b class="logo-icon p-l-10"></b>
                            <img src="../../assets/images/logo-icon.png" alt="homepage" class="light-logo" /> 
                        </b>
                        <span class="logo-text">  
                             <img src="../../assets/images/logo-text.png" alt="homepage" class="light-logo" />
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
                                            <a href="javascript:void(0)" class="link border-top">
                                                <div class="d-flex no-block align-items-center p-10">
                                                    <span class="btn btn-success btn-circle"><i class="ti-calendar"></i></span>
                                                    <div class="m-l-10">
                                                        <h5 class="m-b-0">Event today</h5> 
                                                        <span class="mail-desc">Just a reminder that event</span> 
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="javascript:void(0)" class="link border-top">
                                                <div class="d-flex no-block align-items-center p-10">
                                                    <span class="btn btn-info btn-circle"><i class="ti-settings"></i></span>
                                                    <div class="m-l-10">
                                                        <h5 class="m-b-0">Settings</h5> 
                                                        <span class="mail-desc">You can customize this template</span> 
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="javascript:void(0)" class="link border-top">
                                                <div class="d-flex no-block align-items-center p-10">
                                                    <span class="btn btn-primary btn-circle"><i class="ti-user"></i></span>
                                                    <div class="m-l-10">
                                                        <h5 class="m-b-0">Pavan kumar</h5> 
                                                        <span class="mail-desc">Just see the my admin!</span> 
                                                    </div>
                                                </div>
                                            </a>
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
            <div class="scroll-sidebar">
                <nav class="sidebar-nav">
                    <ul id="sidebarnav" class="p-t-30">
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="introduce.html" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span class="hide-menu">클럽 소개</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="clubmember.html" aria-expanded="false"><i class="mdi mdi-chart-bar"></i><span class="hide-menu">클럽회원</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="rank.html" aria-expanded="false"><i class="mdi mdi-chart-bubble"></i><span class="hide-menu">랭킹</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="match.html" aria-expanded="false"><i class="mdi mdi-border-inside"></i><span class="hide-menu">클럽경기</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="formation.html" aria-expanded="false"><i class="mdi mdi-receipt"></i><span class="hide-menu">전술</span></a>                        
                    </ul>
                </nav>
            </div>
        </aside>
        <div class="page-wrapper">
             <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h2 class="page-title" style="font-size: 40px;">&nbsp;클럽 소개</h2>
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
                    <div class="col-lg-9"> 
                        <div class="card">
                            <div class="tab-content tabcontent-border">
                                <div>
                                    <div class="p-20">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title" style="text-align: center; font-size: 30px;">클럽 소개</h4>
                                            </div>
                                            <div class="comment-widgets scrollable">                           
                                                <div class="container-fluid" id="mainHolder">
                                                    <div class="row teamheader">
                                                      <div class="col-xs-12" style="background-color:#333333; height:350px; width:100%;">
                                                  <div class="col-xs-4" style="height:100%;margin:0; padding:0;">
                                                    <div class="row" style="position:relative;height:80%;margin:0; padding:0; margin-top:20px;">
                                                      
                                                      <div style="height:100%;">
                                                        <div style="margin:auto; display:table; height:120px;width:200px;">
                                                            <div style="display:table-cell; ">
                                                                <div style="background-color: white; height: 250px;width:200px; margin-left:25px;"></div>
                                                            </div>
                                                    
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-2"></div>
                                                    </div>
                                                  </div>
                                                  <div class="col-xs-8" style="color:white; height:100%; padding-left: 0px;">
                                                    <div class="row" style="margin:0; padding:0; margin-top:20px;">
                                                      <div class="col-xs-12" style="margin:0; padding:0;">
                                                        <h1 style="margin:0; font-size:26px; font-weight:600">토트넘</h1>
                                                      </div>
                                                      <div class="col-xs-4">
                                                      </div>
                                                    </div>
                                                    <div class="row" style="margin:0; padding:0;">
                                                      <div>
                                                        <h6 style="margin:0;font-size:18px; font-weight:600; color:#7F7F7F; margin-top:4px;">팀 등록일 : 2020-07-27</h6>
                                                      </div>
                                                    </div>
                                                    <div class="container-fluid" style="margin-top:20px;">
                                                      <div class="col-xs-6" style="padding-right: 50px; padding-left: 0px;" >
                                                        <table style="width: 100%;">
                                                            <tr>
                                                                <td style="border-bottom: none; width: 20px;">·팀장</td>
                                                                <td style="border-bottom: none">김희철</td>
                                                            </tr>
                                                            <tr>
                                                                <td style="border-bottom: none">·연령대</td>
                                                                <td style="border-bottom: none">중년층</td>
                                                            </tr>
                                                            <tr>
                                                                <td style="border-bottom: none">·성별</td>
                                                                <td style="border-bottom: none">혼성</td>
                                                            </tr>
                                                            <tr>
                                                                <td style="border-bottom: none">·회원수</td>
                                                                <td style="border-bottom: none">30명</td>
                                                            </tr>
                                                            <tr>
                                                                <td style="border-bottom: none">·실력</td>
                                                                <td style="border-bottom: none">중하</td>
                                                            </tr>
                                                            <tr>
                                                                <td style="border-bottom: none">·유형</td>
                                                                <td style="border-bottom: none">축구</td>
                                                            </tr>
                                                            <tr>
                                                                <td style="border-bottom: none">·활동지역</td>
                                                                <td style="border-bottom: none">금천구</td>
                                                            </tr>
                                                        </table>
                                                      </div>
                                                      <div class="col-xs-6">
                                                        <div class="row" style="margin:0; padding:0; margin-bottom:15px;">
                                                          <h6 style="margin:0; padding:0; color:#BFBFBF; font-size:20px; font-weight:600; margin-bottom:15px;">팀 소개</h6>
                                                          <div class="col-xs-12" style="margin:0; padding:0; background-color:#ADADAD;height:100%; border-radius:15px;padding:10px; height:100px">
                                                            안녕하세요 토트넘 클럽입니다.
                                                            <div style="overflow-y:hidden;height:100%;width:100%;">
                                                              <h6 style="margin:0; padding:0; color:black;white-space:pre-line"></h6>
                                                            </div>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                                    </div>
                                                    <div class="row status" style="height:250px;">
                                                    <div class="col-xs-6 log-outer-holder">
                                                        <div class="log-inner-holder">
                                                        <table class="table log" style="height: 170px;">
                                                            <thead>
                                                            <tr>
                                                                <th rowspan="2">총</th>
                                                                <th rowspan="2">승</th>
                                                                <th rowspan="2">무</th>
                                                                <th rowspan="2">패</th>
                                                                <th colspan="2">경기당</th>
                                                            </tr>
                                                            <tr>
                                                                <th>득점</th>
                                                                <th>실점</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                            <tr style="font-weight: bolder;">
                                                                <td style="vertical-align: middle;">20</td>
                                                                <td style="vertical-align: middle;">10</td>
                                                                <td style="vertical-align: middle;">0</td>
                                                                <td style="vertical-align: middle;">10</td>
                                                                <td style="vertical-align: middle;">20</td>
                                                                <td style="vertical-align: middle;">10</td>
                                                            </tr>
                                                            </tbody>
                                                        </table>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-6 log-outer-holder">
                                                        <div class="m-t-20">
                                                            <div class="d-flex no-block align-items-center">
                                                                <span style="font-size: 30px; color: white;">승률</span>
                                                                <div class="ml-auto">
                                                                    <span style="color: white;">50%</span>
                                                                </div>
                                                            </div>
                                                            <div class="progress">
                                                                <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 50%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="d-flex no-block align-items-center m-t-25">
                                                                <span style="font-size: 30px; color: white;">인원수</span>
                                                                <div class="ml-auto">
                                                                    <span style="color: white;">60%</span>
                                                                </div>
                                                            </div>
                                                            <div class="progress">
                                                                <div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 60%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>    
                                                    </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>    
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Chat Option</h4>
                                <div class="chat-box scrollable" style="height:475px;">
                                    <ul class="chat-list">
                                        <li class="chat-item">
                                            <div class="chat-img"><img src="../../assets/images/users/1.jpg" alt="user"></div>
                                            <div class="chat-content">
                                                <h6 class="font-medium">James Anderson</h6>
                                                <div class="box bg-light-info">Lorem Ipsum is simply dummy text of the printing &amp; type setting industry.</div>
                                            </div>
                                            <div class="chat-time">10:56 am</div>
                                        </li>
                                        <li class="chat-item">
                                            <div class="chat-img"><img src="../../assets/images/users/2.jpg" alt="user"></div>
                                            <div class="chat-content">
                                                <h6 class="font-medium">Bianca Doe</h6>
                                                <div class="box bg-light-info">It’s Great opportunity to work.</div>
                                            </div>
                                            <div class="chat-time">10:57 am</div>
                                        </li>
                                        <li class="odd chat-item">
                                            <div class="chat-content">
                                                <div class="box bg-light-inverse">I would love to join the team.</div>
                                                <br>
                                            </div>
                                        </li>
                                        <li class="odd chat-item">
                                            <div class="chat-content">
                                                <div class="box bg-light-inverse">Whats budget of the new project.</div>
                                                <br>
                                            </div>
                                            <div class="chat-time">10:59 am</div>
                                        </li>
                                        <li class="chat-item">
                                            <div class="chat-img"><img src="../../assets/images/users/3.jpg" alt="user"></div>
                                            <div class="chat-content">
                                                <h6 class="font-medium">Angelina Rhodes</h6>
                                                <div class="box bg-light-info">Well we have good budget for the project</div>
                                            </div>
                                            <div class="chat-time">11:00 am</div>
                                        </li>
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
                Copyright © 2018 - All Rights Reserved <a href="https://wrappixel.com">Be-Pro</a>.
            </footer>
        </div>
    </div>
</body>
</html>