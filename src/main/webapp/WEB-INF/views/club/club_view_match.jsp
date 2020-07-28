<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이틀</title>

	<link href="./../resources/css/club_view2.css" rel="stylesheet">
    <link href="./../resources/css/club_view_page.css" rel="stylesheet">
    <script src="/resources/js/view_custommin.js"></script>
    <script src="/resources/js/club_view.js"></script>
    <script src="/resources/js/club_sidebarmenu.js"></script>

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
                        <b class="logo-icon p-l-10">

                            <img src="../../assets/images/logo-icon.png" alt="마크" class="light-logo" />
                           
                        </b>
                        <span class="logo-text">
                            
                             <img src="../../assets/images/logo-text.png" alt="B-PRO" class="light-logo" />
                            
                        </span>
                        <!-- Logo icon -->
                        <!-- <b class="logo-icon"> -->
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <!-- <img src="../../assets/images/logo-text.png" alt="homepage" class="light-logo" /> -->
                            
                        <!-- </b> -->
                        <!--End Logo icon -->
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
                        <h2 class="page-title" style="font-size: 40px;">&nbsp;클럽 경기</h2>
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
                            <div class="tab-content tabcontent-border">                           
                                <div>
                                    <div class="p-20">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title" style="text-align: center; font-size: 30px;">클럽 경기</h4>
                                            </div>
                                            <div>
                                                <h4 style="margin-left: 80px;">모든 경기 리스트</h4>
                                            </div>
                                            <div class="comment-widgets scrollable">
                                                <table style="width:1000px;">
                                                    <tr style="border-bottom: 3px solid rgb(59, 209, 116)">
                                                        <th style="width:120px;">날짜</th>
                                                        <th style="width:50px;">시간</th>
                                                        <th style="width:200px;">구장 이름</th>
                                                        <th style="width:200px;">구장 주소</th>
                                                        <th style="width:100px;">상대팀</th>
                                                        <th colspan="2" style="width:100px;">참가여부</th>
                                                        <th colspan="2" style="width:120px;">용병고용/경기취소</th>         
                                                    </tr>
                                                    <tr>
                                                        <th>2020-07-30</th>
                                                        <th>14:00</th>
                                                        <th style="cursor:pointer;">루프탑필드 목동점</th>
                                                        <th>서울 양천구 목동서로 170</th>
                                                        <th>첼시</th>
                                                        <th><input type="button" class="btn btn-outline-success" style="width:50px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="참가" ></th>
                                                        <th><input type="button" class="btn btn-outline-danger" style=" width:50px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="불참" ></th>
                                                        <th><input type="button" class="btn btn-outline-primary" style="width:60px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="용병고용"></th>
                                                        <th><input type="button" class="btn btn-outline-secondary" style="width:50px; height:30px; text-align: center; padding: 0; font-weight:900;" value="취소"></th>
                                                    </tr>
                                                    <tr>
                                                        <th>2020-07-30</th>
                                                        <th>14:00</th>
                                                        <th style="cursor:pointer;">루프탑필드 목동점</th>
                                                        <th>서울 양천구 목동서로 170</th>
                                                        <th>맨유</th>
                                                        <th><input type="button" class="btn btn-outline-success" style="width:50px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="참가" ></th>
                                                        <th><input type="button" class="btn btn-outline-danger" style=" width:50px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="불참" ></th>
                                                        <th><input type="button" class="btn btn-outline-primary" style="width:60px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="용병고용"></th>
                                                        <th><input type="button" class="btn btn-outline-secondary" style="width:50px; height:30px; text-align: center; padding: 0; font-weight:900;" value="취소"></th>
                                                    </tr>
                                                    <tr>
                                                        <th>2020-08-02</th>
                                                        <th>00:00</th>
                                                        <th style="cursor:pointer;" onClick ="window.open('http://naver.com')">성수실내축구장 by리팍</th>
                                                        <th>서울 성동구 성수이로 69</th>
                                                        <th>X</th>
                                                        <th><input type="button" class="btn btn-outline-success" style="width:50px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="참가" ></th>
                                                        <th><input type="button" class="btn btn-outline-danger" style=" width:50px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="불참" ></th>
                                                        <th><input type="button" class="btn btn-outline-primary" style="width:60px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="용병고용"></th>
                                                        <th><input type="button" class="btn btn-outline-secondary" style="width:50px; height:30px; text-align: center; padding: 0; font-weight:900;" value="취소"></th>
                                                    </tr>
                                                    <tr>
                                                        <th>2020-08-06</th>
                                                        <th>16:00</th>
                                                        <th style="cursor:pointer;" onClick ="window.open('http://naver.com')">반포종합운동장(축구장)</th>
                                                        <th>서울 서초구 반포동 15-2</th>
                                                        <th>바르셀로나</th>
                                                        <th><input type="button" class="btn btn-outline-success" style="width:50px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="참가" ></th>
                                                        <th><input type="button" class="btn btn-outline-danger" style=" width:50px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="불참" ></th>
                                                        <th><input type="button" class="btn btn-outline-primary" style="width:60px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="용병고용"></th>
                                                        <th><input type="button" class="btn btn-outline-secondary" style="width:50px; height:30px; text-align: center; padding: 0; font-weight:900;" value="취소"></th>
                                                    </tr>
                                                    <tr>
                                                        <th>2020-08-07</th>
                                                        <th>20:00</th>
                                                        <th style="cursor:pointer;" onClick ="window.open('http://naver.com')">안양천C축구장</th>
                                                        <th>서울 구로구 신도림동 271-64</th>
                                                        <th>레알마드리드</th>
                                                        <th><input type="button" class="btn btn-outline-success" style="width:50px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="참가" ></th>
                                                        <th><input type="button" class="btn btn-outline-danger" style=" width:50px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="불참" ></th>
                                                        <th><input type="button" class="btn btn-outline-primary" style="width:60px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="용병고용"></th>
                                                        <th><input type="button" class="btn btn-outline-secondary" style="width:50px; height:30px; text-align: center; padding: 0; font-weight:900;" value="취소"></th>
                                                    </tr>
                                                </table>
                                            </div>
                                            <br /><br />
                                            <div>
                                                <h4 style="margin-left: 80px;">신청 접수 현황</h4>
                                            </div>
                                            <div class="comment-widgets scrollable">
                                                <table style="width:1000px;">
                                                    <tr style="border-bottom: 3px solid rgb(59, 209, 116)">
                                                        <th style="width:180px;">날짜</th>
                                                        <th style="width:100px;">시간</th>
                                                        <th style="width:200px;">구장 이름</th>
                                                        <th style="width:200px;">상대팀</th>
                                                        <th colspan="2" style="width:120px;">수락/거절</th>
                                                    </tr>
                                                    <tr>
                                                        <th>2020-07-30</th>
                                                        <th>14:00</th>
                                                        <th style="cursor:pointer;">루프탑필드 목동점</th>
                                                        <th>첼시</th>
                                                        <th><input type="button" class="btn btn-outline-success" style="width:70px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="수락" ></th>
                                                        <th><input type="button" class="btn btn-outline-danger" style=" width:70px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="거절" ></th>
                                                    </tr>
                                                    <tr>
                                                        <th>2020-07-30</th>
                                                        <th>14:00</th>
                                                        <th style="cursor:pointer;">루프탑필드 목동점</th>
                                                        <th>맨유</th>
                                                        <th><input type="button" class="btn btn-outline-success" style="width:70px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="수락" ></th>
                                                        <th><input type="button" class="btn btn-outline-danger" style=" width:70px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="거절" ></th>
                                                    </tr>
                                                    <tr>
                                                        <th>2020-08-06</th>
                                                        <th>16:00</th>
                                                        <th style="cursor:pointer;" onClick ="window.open('http://naver.com')">반포종합운동장(축구장)</th>
                                                        <th>바르셀로나</th>
                                                        <th><input type="button" class="btn btn-outline-success" style="width:70px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="수락" ></th>
                                                        <th><input type="button" class="btn btn-outline-danger" style=" width:70px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="거절" ></th>
                                                    </tr>
                                                    <tr>
                                                        <th>2020-08-07</th>
                                                        <th>20:00</th>
                                                        <th style="cursor:pointer;" onClick ="window.open('http://naver.com')">안양천C축구장</th>
                                                        <th>레알마드리드</th>
                                                        <th><input type="button" class="btn btn-outline-success" style="width:70px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="수락"></th>
                                                        <th><input type="button" class="btn btn-outline-danger" style=" width:70px; height: 30px; text-align: center; padding: 0; font-weight:900;" value="거절"></th>
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