<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<link href="./../resources/css/create.css" rel="stylesheet"	type="text/css" media="all">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
h2 { font-size : 24px; color:#000066; line-height:30px;
	margin:52px auto 10px 0px;
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
input[type=checkbox], input[type=radio]
{
	width : 20px; height : 20px; cursor: pointer;
}
label {
    cursor: pointer; font-size : 18px;

}
</style>
<script>
function isValidate(frm){
	if(frm.name.value==""){
		alert('이름을 입력하세요');
		frm.name.focus();
		return false;
	}
	
	if(frm.user_id.value==""){
        alert('아이디를 입력하세요');
        frm.id.focus();
        return false;
    }
	
    if(frm.user_pw.value=="" || frm.user_pw2.value==""){
        alert('패스워드를 입력하세요');
        return false;
    }
    
	if (frm.user_pw.value != frm.user_pw2.value) {
		alert("입력한 두 개의 비밀번호가 서로  일치하지 않습니다.");
		return false;
	}
   
    if(frm.tel1.value=="" || frm.tel2.value=="" || frm.tel3.value==""){
    	alert("전화번호를 입력하세요");
    	return false;
    }
    
    if(frm.mobile1.value=="" || frm.mobile2.value=="" || frm.mobile3.value==""){
    	alert("핸드폰번호를 입력하세요");
    	return false;
    }
    
    
    if(frm.email_1.value=="" || frm.email_2.value==""){
    	alert("이메일을 입력하세요");
    	return false;
    }
    
    if(frm.zip1.value=="" || frm.addr1.value=="" || frm.addr2.value=="" || frm.addr3.value==""){
    	alert("우편번호를 입력하세요");
    	return false;
    }
    
}
</script>
<%
request.setCharacterEncoding("UTF-8");
String keyword = request.getParameter("keyword");
%>
<body>
	<center class="center">클럽 생성</center>
	<br /><br />
	<form>
		<h2>팀명</h2>
		<div>
			<input type="text" placeholder="팀명을 입력해주세요" id="c_name" name="c_name" style="width:250px; height:40px;">
		</div>
		
		<h2>아이콘 넣기</h2>
		<div>
			<input type="text" placeholder="아이콘넣기" id="c_pro" name="c_pro" style="width:400px; height:300px;">
		</div>
		
		<h2>주 활동지역</h2>
		<div class="box">
		    <select id="c_area" name="c_area" title="선택 구분">
		        <option selected="selected">선택해 주세요</option>
		        <option value="강남구">강남구</option>
		        <option value="강동구">강동구</option>
		        <option value="강북구">강북구</option>
		        <option value="강서구">강서구</option>
		        <option value="관악구">관악구</option>
		        <option value="광진구">광진구</option>
		        <option value="구로구">구로구</option>
		        <option value="금천구">금천구</option>
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
		<h2>성별</h2>
		<table class="table table-borderless">
	     	<tr>
				<td width="20px;"><input type="radio" name="c_gender" id="man" value="man" ></td>
				<td><label for="man">남자</label></td>
				<td width="20px;"><input type="radio" name="c_gender" id="woman" value="woman"></td>
				<td><label for="woman">여자</label></td>
				<td width="20px;"><input type="radio" name="c_gender" id="mixed" value="mixed"></td>
				<td><label for="mixed">혼성</label></td>
			</tr>
		</table>
		
		<h2>인원수 제한</h2>
		<div class="box">
		    <select id="c_memlimit" name="c_memlimit" title="선택 구분">
				<option placeholder="" value="">선택해 주세요</option>
				<option>30명미만</option>
				<option>30명이상 40명미만</option>
				<option>40명이상 50명미만</option>
				<option>50명이상</option>
		    </select>
		</div>
		
		<h2>실력</h2>
		<div class="box">
			<select id="c_ability" name="c_ability" title="선택 구분">
				<option selected="" value="">선택해 주세요</option>
				<option>최상</option>
				<option>상</option>
				<option>중상</option>
				<option>중</option>
				<option>중하</option>
				<option>하</option>
			</select>
		</div>
		
		<h2>선호 종목</h2>
		<table class="table table-borderless">
	     	<tr>
				<td width="20px;"><input type="radio" name="c_type" id="soccer" value="socceer"></td>
				<td><label for="soccer">축구</label></td>
				<td width="20px;"><input type="radio" name="c_type" id="footsal" value="footsal" ></td>
				<td><label for="footsal">풋살</label></td>
			</tr>
		</table>
		
		<div style="text-align:center;">
			<button type="submit" id="joinBtn" class="btn btn-outline-success">클럽생성</button>
		</div>
	</form>
</body>
</html>