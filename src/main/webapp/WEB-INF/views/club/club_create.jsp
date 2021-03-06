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


</style>
<%
request.setCharacterEncoding("UTF-8");
String keyword = request.getParameter("keyword");
%>
<body>
<div class="hoc container clear" style="max-width:1200px;">
	<div class="co">
	<center class="center">클럽 생성</center>
	<br /><br />
	<form name="creFrm" id="creFrm" enctype="multipart/form-data" action="<c:url value="/club/clubCreate.do" />" method="post" onsubmit="return isValidate(creFrm);">
		<h2>팀명</h2>
		<div>
			<input type="text" class="txtBox31" value="팀 비프로" placeholder="팀명을 입력해주세요" id="c_name" name="c_name">
		</div>
		
        <h2>엠블럼 등록하기</h2>
		<table style="text-align: center; vertical-align: middle;">
			<tr>
				<th colspan="2">엠블럼을 등록할 파일</th>
			</tr>
			<tr>
				<td width="30%" style="border:1px solid black"><input type="file" name="file" accept="image/*" onchange="setPic(event)" style="margin-left: 10%;" /></td>
				<td width="35%">
					<div id="image_container" style="width: 250px; height: 300px;" align="center"></div>
				</td>
			</tr>
		</table>
		
		<h2>주 활동지역</h2>
		<div class="box">
		    <select id="c_area" name="c_area">
		        <option value="">선택해 주세요</option>
		        <option value="강남구">강남구</option>
		        <option value="강동구">강동구</option>
		        <option value="강북구">강북구</option>
		        <option value="강서구">강서구</option>
		        <option value="관악구">관악구</option>
		        <option value="광진구">광진구</option>
		        <option value="구로구">구로구</option>
		        <option selected="selected" value="금천구">금천구</option>
		        <option value="노원구">노원구</option>
		        <option value="도봉구">도봉구</option>
		        <option value="동대문구">동대문구</option>
		        <option value="동작구">동작구</option>
		        <option value="마포구">마포구</option>
		        <option value="서대문구">서대문구</option>
		        <option value="서초구">서초구</option>
		        <option value="성동구">성동구</option>
		        <option value="성북구">성북구</option>
		        <option value="송파구">송파구</option>
		        <option value="양천구">양천구</option>
		        <option value="영등포구">영등포구</option>
		        <option value="용산구">용산구</option>
		        <option value="은평구">은평구</option>
		        <option value="종로구">종로구</option>
		        <option value="중구">중구</option>
		        <option value="중랑구">중랑구</option>  
		    </select>
		</div>

		
		<h2>성별 체크</h2>
		<input type="radio" name="c_gender" id="man" value="남자" style="display:inline;">
		<label for="man" style="padding-right:200px;">남자</label>
		<input type="radio" name="c_gender" id="wowan" value="여자" style="display:inline;">
		<label for="wowan" style="padding-right:200px;">여자</label>
		<input type="radio" name="c_gender" id="c_mixed" checked value="혼성" style="display:inline;">
		<label for="c_mixed">혼성</label>
		
		<h2>인원수 제한</h2>
		<div class="box">
		    <select id="c_memlimit" name="c_memlimit">
				<option value="">선택해 주세요</option>
				<option value="30">30</option>
				<option value="40" selected>40</option>
				<option value="50">50</option>
		    </select>
		</div>
		
		<h2>선수 나이대</h2>
		<div class="box">
		    <select id="c_age" name="c_age">
				<option placeholder="" value="">선택해 주세요</option>
				<option value="유소년부">유소년부</option>
				<option value="청소년부">청소년부</option>
				<option value="청년부" selected>청년부</option>
				<option value="중년부">중년부</option>
		    </select>
		</div>
		
		<h2>실력</h2>
		<div class="box">
			<select id="c_ability" name="c_ability" >
				<option value="">선택해 주세요</option>
				<option value="최상" selected>최상</option>
				<option value="상">상</option>
				<option value="중상">중상</option>
				<option value="중">중</option>
				<option value="중하">중하</option>
				<option value="하">하</option>
			</select>
		</div>
		
		<h2>선호 종목</h2>

			<input type="radio" name="c_type" id="c_soccer" checked value="축구" style="display:inline;">
			<label for="c_soccer" style="padding-right:200px;">축구</label>
			<input type="radio" name="c_type" id="c_footsal" value="풋살" style="display:inline;">
			<label for="c_footsal" style="padding-right:200px;">풋살</label>
			<input type="radio" name="c_type" id="c_both" value="혼합" style="display:inline;">
			<label for="c_both">혼합</label>

		
		<h2>클럽 소개글</h2>
		<div>
			<input type="text" value="뭐든지 할 수 있습니다. 열심히 하는 팀 비프로." class="txtBox31" placeholder="클럽을 자유롭게 소개해 주세요" id="c_momo" name="c_memo" >
		</div>
		<br /><br />
		<div style="text-align:center;">
			<Button type="submit" id="joinBtn" class="snip1535" >클럽생성</Button>
		</div>
	</form>
	</div>
</div>
</body>
<script>
function isValidate (creFrm){
	if(creFrm.c_name.value==""){
		alert('팀명을 입력하세요');
		creFrm.c_name.focus();
		return false;
	}
	
	if(creFrm.c_emb.value==""){
		alert('엠블럼을 넣어주세요');
		creFrm.c_emb.focus();
		return false;
	}
	
	if(creFrm.c_area.value==""){
		alert('활동지역을 선택해 주세요');
		creFrm.c_area.focus();
		return false;
	}
	
	if(creFrm.c_gender.value==""){
		alert('성별을 선택해 주세요');
		creFrm.c_gender.focus();
		return false;
	}
	
	if(creFrm.c_gender.value==""){
		alert('성별을 선택해 주세요');
		creFrm.c_gender.focus();
		return false;
	}
	
	if(creFrm.c_memlimit.value==""){
		alert('인원수를 선택해 주세요');
		creFrm.c_memlimit.focus();
		return false;
	}
	
	if(creFrm.c_ability.value==""){
		alert('실력을 선택해 주세요');
		creFrm.c_ability.focus();
		return false;
	}
	
	if(creFrm.c_type.value==""){
		alert('선호종목을 선택해 주세요');
		creFrm.c_type.focus();
		return false;
	}
	
	if(creFrm.c_memo.value==""){
		alert('팀을 소개해주세요');
		creFrm.c_memo.focus();
		return false;
	}
}

function setPic(event) {
	var reader = new FileReader();
	
	reader.onload = function(event) {
		if(document.getElementById('newImg')){
			var el = document.getElementById('newImg');
			el.remove();
		}
		
		var img = document.createElement("img");
		img.style.align = "center";
		img.setAttribute("width", 250);
		img.setAttribute("height", 250);
		img.setAttribute("id", "newImg");
		img.setAttribute("src", event.target.result);
		document.querySelector("#image_container").appendChild(img);
	};
	reader.readAsDataURL(event.target.files[0]);
}
</script>
</html>