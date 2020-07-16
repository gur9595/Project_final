<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>B-PRO</title>

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script> -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="./../resources/css/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<style>
h2 { font-size : 24px; color:#000066; line-height:30px; font-family : Nanum Pen Script;
	margin:52px auto 10px 0px;
	padding : 2px 10px 2px 0px;
	border-bottom : 3px solid #000066;
}



.box select {
  background-color: #000000;
  color: white;
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
  font-family: FontAwesome;
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

input[type=checkbox]
{
	width : 25px; height : 25px;
}

</style>

</head>
<body id="top">
<!--top-->
<%@ include file="./../include/top.jsp"%>
<!--각 페이지 이미지-->
<div class="bgded overlay" style="background-image:url('../images/demo/backgrounds/01.png');">
	<div id="breadcrumb" class="hoc clear"> 
	  <!-- 이미지 위에 글쓰는곳 -->
	</div>
</div>
  <main class="hoc container clear">
    <div class="container">
    <h1 class="title-join" style="font-size:40px; font-weight:bold; text-align:center; font-family : Musinsa">회&nbsp;원&nbsp;가&nbsp;입</h1>
    <form action="" method="post" id="myForm">
        
		<!-- Header -->
		<header class="member-header">
		    <div class="logo">
		
		    </div>
		
		</header>
		<!-- //Header -->
        
		<h2>주 포지션 체크</h2>
		<table style="background-color: white;">
			<tr>
				<td>	
					<input type="checkbox" name="position" value="ST" style="width:25px;height:25px;"/><span>ST</span>
				</td>
				<td>
					<input type="checkbox" name="position" value="RW"/>RW
				</td>
				<td>
					<input type="checkbox" name="position" value="LW"/>LW
				</td>
			</tr>
			<tr>
				<td>
					<input type="checkbox" name="position" value="RM"/>RM
				</td>
				<td>	
					<input type="checkbox" name="position" value="AM"/>AM
				</td>	
				<td>
					<input type="checkbox" name="position" value="LM"/>LM
				</td>
			</tr>
			<tr>
				<td>
					<input type="checkbox" name="position" value="CW"/>CM
				</td>
				<td>
					<input type="checkbox" name="position" value="CB"/>CB
				</td>
				<td>	
					<input type="checkbox" name="position" value="DM"/>DM
				</td>
			</tr>	
			<tr>
				<td>	
					<input type="checkbox" name="position" value="LB"/>LB
				</td>
				<td>
					<input type="checkbox" name="position" value="GK"/>GK
				</td>
				<td>
					<input type="checkbox" name="position" value="RB"/>RB
				</td>
			</tr>
			<tr>
				
			</tr>				
		</table>
		

		<h2>주관적인 실력</h2>
		<table style="background-color: white;">
			<tr>
				<td width=50 style="word-break:break-all">
	        		<input type="radio" name="abil" value="best">최상
	        	</td>
	        	<td>
	        		<input type="radio" name="abil" value="top">상
	        	</td>
	        	<td>
	        		<input type="radio" name="abil" value="mediumhigh">중상
	        	</td>
	        	<td>
	        		<input type="radio" name="abil" value="medium">중
	        	</td>
	        	<td>
	        		<input type="radio" name="abil" value="mediumlow">중하
	        	</td>
	        	<td>
	        		<input type="radio" name="abil" value="low">하
	        	</td>
	        </tr>
        </table>
        
        
        <h2>주로쓰는 발</h2>
        <ul>
        	<li>
        		<input type="radio" name="foot" value="LF">왼발
        	</li>
        	<li>
        		<input type="radio" name="foot" value="RF">오른발
        	</li>
        	<li>
        		<input type="radio" name="foot" value="ALL">양발
        	</li>
        </ul>
        
        <h2>사는 지역</h2>
		<div class="box">
		    <select id="selectbox" title="선택 구분">
		        <option selected="selected">선택해 주세요</option>
		        <option>강남구</option>
		        <option>강동구</option>
		        <option>강북구</option>
		        <option>강서구</option>
		        <option>관악구</option>
		        <option>광진구</option>
		        <option>구로구</option>
		        <option>금천구</option>
		        <option>노원구</option>
		        <option>도봉구</option>
		        <option>동대문구</option>
		        <option>동작구</option>
		        <option>마포구</option>
		        <option>서대문구</option>
		        <option>서초구</option>
		        <option>성동구</option>
		        <option>성북구</option>
		        <option>송파구</option>
		        <option>양천구</option>
		        <option>영등포구</option>
		        <option>용산구</option>
		        <option>은평구</option>
		        <option>종로구</option>
		        <option>중구</option>
		        <option>중랑구</option>  
		    </select>
		</div>
        
        
        <div style="text-align:center">
        	<button type="button" class="btn btn-outline-info" style="font-size:20px;" onclick="location.href= 'memberAgree.do'">이전페이지</button>  
	        <button class="btn btn-outline-success" type="submit" style="font-size:20px;" >가입완료!!</button>
        </div>
    </form>
</div>
<script src="/js/jquery-3.2.1.js"></script>
<script>
    
</script>    
		<div class="clear"></div>
	</main>
	<!-- footer -->
	
<%@ include file="./../include/footer.jsp"%>
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="./../resources/js/jquery.min.js"></script>
<script src="./../resources/js/jquery.backtotop.js"></script>
<script src="./../resources/js/jquery.mobilemenu.js"></script>
</body>  
</html> 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  