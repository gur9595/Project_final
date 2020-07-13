<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="wrapper row1" style="background-color: #ffffff">
  <header id="header" class="hoc clear">
  <!-- <hr color="green" style="margin-top: 5px;margin-bottom: 0px;"> -->
    <div id="logo" class="fl_left"> 
      <!-- ################################################################################################ -->
      <h1 class="logoname"><a href="${pageContext.request.contextPath }"style="color: #000000">B-PRO<span></span></a></h1>
      <!-- ################################################################################################ -->
    </div>
    <nav id="mainav" class="fl_right"> 
      <!-- ################################ 상 단 메 뉴 바######################################## -->
      <ul class="clear" style="font-size: 20px; color: #000000;">
        <li class="active">
        	<a href="${pageContext.request.contextPath }" style="font-size: 20px; color: #000000;">Company</a>
        </li>
        
        <li>
        <a class="drop" href="${pageContext.request.contextPath }/club/myClubMain.do">Club</a>
          <ul>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
          </ul>
        </li>
        
        <li><a class="drop" href="${pageContext.request.contextPath }/stadium/stadiumMain.do">Stadium</a>
          <ul>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
          </ul>
        </li>
        <li><a class="drop" href="${pageContext.request.contextPath }/market/marketMain.do">Market</a>
        	<ul>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
          </ul>
        </li>
        <li><a class="drop" href="${pageContext.request.contextPath }/customer/qnaMain.do">Q & A</a>
        	<ul>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
          </ul>
        </li>
        <li><a class="drop" href="${pageContext.request.contextPath }/member/memberAgree.do">Join</a>
        	<ul>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
          </ul>
        </li>
        <li>
			<a class="fas fa-user-circle" href="${pageContext.request.contextPath }/member/login.do">Login</a>
        </li>
      </ul>
      <!-- ################################################################################################ -->
    </nav>
  </header>
</div>