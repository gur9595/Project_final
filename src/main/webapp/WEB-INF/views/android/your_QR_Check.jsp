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
	font-size : 30px; color:#000066;
	margin:35px auto 10px 0px;
	padding : 2px 10px 2px 0px;
	border-bottom: 0;
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

.star-input>.input,
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{display: inline-block;vertical-align:middle;background:url('./../resources/img/grade_img.png')no-repeat;}
.star-input{display:inline-block; white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
.star-input>.input{display:inline-block;width:150px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
.star-input>.input>input{position:absolute;width:1px;height:1px;opacity:0;}
star-input>.input.focus{outline:1px dotted #ddd;}
.star-input>.input>label{width:30px;height:0;padding:28px 0 0 0;overflow: hidden;float:left;cursor: pointer;position: absolute;top: 0;left: 0;}
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{background-size: 150px;background-position: 0 bottom;}
.star-input>.input>label:hover~label{background-image: none;}
.star-input>.input>label[for="p1"]{width:30px;z-index:5;}
.star-input>.input>label[for="p2"]{width:60px;z-index:4;}
.star-input>.input>label[for="p3"]{width:90px;z-index:3;}
.star-input>.input>label[for="p4"]{width:120px;z-index:2;}
.star-input>.input>label[for="p5"]{width:150px;z-index:1;}
.star-input>output{display:inline-block;width:60px; font-size:18px;text-align:right; vertical-align:middle;}


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
		<h2><%=request.getAttribute("cName1") %> &nbsp; <%=request.getAttribute("goal1") %> &nbsp; VS &nbsp; <%=request.getAttribute("goal2") %> &nbsp; <%=request.getAttribute("cName2") %> </h2>

		
		<form method="get" action="<c:url value="/android/your_ratingmemo.do" />">
			<input type="hidden" name="g_idx" value="<%=request.getAttribute("g_idx")%>"/>
			<input type="hidden" name="g_num" value="<%=request.getAttribute("g_num")%>"/>
			<br/><br/>
			<h3>별점주기</h3>
			
			<span class="star-input">
				<span class="input">
			    	<input type="radio" name="star-input" value="1" id="p1">
			    	<label for="p1">1</label>
			    	<input type="radio" name="star-input" value="2" id="p2">
			    	<label for="p2">2</label>
			    	<input type="radio" name="star-input" value="3" id="p3">
			    	<label for="p3">3</label>
			    	<input type="radio" name="star-input" value="4" id="p4">
			    	<label for="p4">4</label>
			    	<input type="radio" name="star-input" value="5" id="p5">
			    	<label for="p5">5</label>
			  	</span>
			  	<output for="star-input"><b>0</b>점</output>						
			</span>
			
			<br/>
			<div>
				<input type="text" class="txtBox31" placeholder="상대팀을 평가해주세요" id="c_momo" name="g_ratingmemo" >
			</div>
			<br />
			<div style="text-align:center;">
				<Button type="submit" id="joinBtn" class="snip1535" >완료</Button>
			</div>
			
		</form>
		

	</div>
</div>
</body>
<script src="./../resources/js/jquery-1.11.3.min.js"></script>
<script src="./../resources/js/star.js"></script>
</html>