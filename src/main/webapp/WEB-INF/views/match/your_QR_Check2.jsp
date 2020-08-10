<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<link href="./../resources/css/create.css" rel="stylesheet"	type="text/css" media="all">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
h2 { 
	font-size : 30px; color:#000066; line-height:30px;
	margin:35px auto 10px 0px;
	padding : 2px 10px 2px 0px;
	border-bottom : 3px solid #000066;
}
.box select {
  background-color: #FFFFFF;
  color: black;
  padding: 12px;
  width: 250px;
  border: none;
  font-size: 20px;
  box-shadow: 0 5px 25px rgba(0, 0, 0, 0.2);
  -webkit-appearance: button;
  appearance: button;
  outline: none;
}
.box::before {
  content: "\f13a";
  position: absolute;
  top: 0;
  right: 0;
  width: 20%;
  height: 100%;
  text-align: center;
  font-size: 28px;
  line-height: 45px;
  color: rgba(255, 255, 255, 0.5);
  background-color: rgba(255, 255, 255, 0.1);
  pointer-events: none;
}
.box:hover::before {
  color: rgba(255, 255, 255, 0.6);
  background-color: rgba(255, 255, 255, 0.2);
}
.box select option {
  padding: 30px;
}
input[type=text]{
	font-size:25px;
}
input[type=checkbox], input[type=radio]
{
	width : 20px; height : 20px; cursor: pointer;
}
label {
    cursor: pointer; font-size : 18px; display:inline;
}

.txtBox31 { border-style: solid; border-width: 2px 2px 2px 8px; padding: 12px; word-break: break-all; }
.txtBox31 { border-color: DodgerBlue; width: 600px; height:40px;}

.co {
	max-width:600px;
	margin-left:auto; margin-right:auto;
}

@import url(https://fonts.googleapis.com/css?family=BenchNine:700);
.snip1535 {
  background-color: #c47135;
  border: none;
  color: #ffffff;
  cursor: pointer;
  display: inline-block;
  font-family: 'BenchNine', Arial, sans-serif;
  font-size: 1em;
  font-size: 22px;
  line-height: 1em;
  margin: 15px 40px;
  outline: none;
  padding: 12px 40px 10px;
  position: relative;
  text-transform: uppercase;
  font-weight: 700;
}
.snip1535:before,
.snip1535:after {
  border-color: transparent;
  -webkit-transition: all 0.25s;
  transition: all 0.25s;
  border-style: solid;
  border-width: 0;
  content: "";
  height: 24px;
  position: absolute;
  width: 24px;
}
.snip1535:before {
  border-color: #c47135;
  border-right-width: 2px;
  border-top-width: 2px;
  right: -5px;
  top: -5px;
}
.snip1535:after {
  border-bottom-width: 2px;
  border-color: #c47135;
  border-left-width: 2px;
  bottom: -5px;
  left: -5px;
}
.snip1535:hover {
  background-color: #c47135;
}
.snip1535:hover:before,
.snip1535:hover:after {
  height: 100%;
  width: 100%;
}



</style>
<%
request.setCharacterEncoding("UTF-8");
String keyword = request.getParameter("keyword");
%>
<body>
<div class="hoc container clear" style="max-width:1200px;">
	<div class="co">
	<center class="center">경기 결과</center>
	<br /><br />
	
		
		<form method="get" action="<c:url value="/match/your_ratingmemo.do" />">
			<input type="hid den" value="<%=request.getAttribute("g_idx")%>"/>
			<input type="hid den" value="<%=request.getAttribute("g_num")%>"/>
			<h2>평가</h2>
			
			<div>
				<input type="text" class="txtBox31" placeholder="상대팀을 평가해주세요" id="c_momo" name="c_memo" >
			</div>
			<br /><br />
			<div style="text-align:center;">
				<Button type="submit" id="joinBtn" class="snip1535" >완료</Button>
			</div>
			
		</form>
		

	</div>
</div>
</body>
</html>