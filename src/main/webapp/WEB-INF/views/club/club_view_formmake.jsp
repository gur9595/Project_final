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
    	<%@ include file="./club_view_header.jsp" %>
    	<%@ include file="./club_view_sidebar.jsp" %>
        
<div class="page-wrapper">
             <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h2 class="page-title" style="font-size: 40px;">&nbsp;전술</h2>
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
                                                <h4 class="card-title" style="text-align: center; font-size: 30px;">전술</h4>
                                            </div>
                                            <div class="col-lg-7">
	                                            <div id="field" class="more_topspaced">
									                <table style="height: 613px; width: 416px; background:url(http://static.footballuser.com/images/field.jpg); background-size:100% 100%; background-repeat: no-repeat;">
									                    <tr>
									                        <td class="pos" id="pos0"><input type="hidden" id="pos0" value=""></td>
									                        <td class="pos" id="pos1"><input type="hidden" id="pos1" value=""></td>
									                        <td class="pos" id="pos2"><input type="hidden" id="pos2" value=""></td>
									                        <td class="pos" id="pos3"><input type="hidden" id="pos3" value=""></td>
									                        <td class="pos" id="pos4"><input type="hidden" id="pos4" value=""></td>
									                    </tr>
									                    <tr>
									                        <td class="pos" id="pos5"><input type="hidden" id="pos5" value=""></td>
									                        <td class="pos" id="pos6"><input type="hidden" id="pos6" value=""></td>
									                        <td class="pos" id="pos7"><input type="hidden" id="pos7" value=""></td>
									                        <td class="pos" id="pos8"><input type="hidden" id="pos8" value=""></td>
									                        <td class="pos" id="pos9"><input type="hidden" id="pos9" value=""></td>
									                    </tr>
									                    <tr>
									                        <td class="pos" id="pos10"><input type="hidden" id="pos10" value=""></td>
									                        <td class="pos" id="pos11"><input type="hidden" id="pos11" value=""></td>
									                        <td class="pos" id="pos12"><input type="hidden" id="pos12" value=""></td>
									                        <td class="pos" id="pos13"><input type="hidden" id="pos13" value=""></td>
									                        <td class="pos" id="pos14"><input type="hidden" id="pos14" value=""></td>
									                    </tr>
									                    <tr>
									                        <td class="pos" id="pos15"><input type="hidden" id="pos15" value=""></td>
									                        <td class="pos" id="pos16"><input type="hidden" id="pos16" value=""></td>
									                        <td class="pos" id="pos17"><input type="hidden" id="pos17" value=""></td>
									                        <td class="pos" id="pos18"><input type="hidden" id="pos18" value=""></td>
									                        <td class="pos" id="pos19"><input type="hidden" id="pos19" value=""></td>
									                    </tr>
									                    <tr>
									                        <td class="pos" id="pos20"><input type="hidden" id="pos20" value=""></td>
									                        <td class="pos" id="pos21"><input type="hidden" id="pos21" value=""></td>
									                        <td class="pos" id="pos22"><input type="hidden" id="pos22" value=""></td>
									                        <td class="pos" id="pos23"><input type="hidden" id="pos23" value=""></td>
									                        <td class="pos" id="pos24"><input type="hidden" id="pos24" value=""></td>
									                    </tr>
									                    <tr>
									                        <td></td>
									                        <td></td>
									                        <td class="pos" id="pos25"><input type="hidden" id="pos25" value=""></td>
									                        <td></td>
									                        <td></td>
									                    </tr>   
									                </table>
									                <!-- <img id="field_image" height="613" width="416" src="http://static.footballuser.com/images/field.jpg" alt="" /> -->
									            </div>
								            </div>
								            <div class="col-lg-4">
								            	<div class="topspaced">
										            <input id="playername" class="less_topspaced" type="text" value="" size="30" name="playername" />
										            <input id="playerid" class="less_topspaced" type="text" value="" size="30" name="playerid" />
										            <input style="margin-left:20px; height: 33px" class="button" value="add" type="submit" id="addplayer" />
										        </div>        
										        <div id="player_list" class="player_list">
										            <table id="player_table" cellspacing="0" cellpadding="0" border="0" width="100px">
										                <tbody>
										                    <tr>
										                        <td height="22" align="left" class="player_header">
										                            <strong>Name</strong>
										                        </td>
										                        <td height="22" align="right" class="player_header">
										                            <a href="#" class="delete_players no_underline"><strong> « Remove all</strong></a>
										                        </td>
										                     </tr>
										                </tbody>
										            </table>
										        </div>
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