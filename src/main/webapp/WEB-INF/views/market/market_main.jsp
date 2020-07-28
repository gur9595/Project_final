<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>B-PRO</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="./../resources/css/layout.css" rel="stylesheet"
	type="text/css" media="all">

<!-- 미리보기 화면 -->	
<script>
	function setImg(id) {
	   
	    var img = document.getElementById("image");
	    
	    if(id=="btn101"){
	        img.src="./../resources/img/balls/101유니포리아 프로(FH7362).jpg";
	    }
	    if(id=="btn102"){
	        img.src="./../resources/img/balls/102나이키 바르셀로나 스킬볼-FA20 (CQ7884620).jpg";
	    }
	    if(id=="btn103"){
	        img.src="./../resources/img/balls/103파리 생제르망 나이키 스트라이크-JORDAN(CQ6384010).jpg";
	    }
	    if(id=="btn104"){
	        img.src="./../resources/img/balls/104나이키 플라이트 엘리트(CN5332100).jpg";
	    }
	    if(id=="btn105"){
	        img.src="./../resources/img/balls/105파이널 이스탄불 프로(FH7343).jpg";
	    }
	    if(id=="btn106"){
	        img.src="./../resources/img/balls/106코리아 나이키 피치-SU20(CW5410670).jpg";
	    }
	    if(id=="btn107"){
	        img.src="./../resources/img/balls/107아스토레 코스모스 R(ASTORE2015RED).png";
	    }
	    if(id=="btn108"){
	        img.src="./../resources/img/balls/108올 뉴 프리메로 2(ASBP201).png";
	    }
	    if(id=="btn109"){
	        img.src="./../resources/img/balls/109나이키 스트라이크-EC20(CV9498020).jpg";
	    }
	    if(id=="btn110"){
	        img.src="./../resources/img/balls/110츠바사 프로(FR8367).jpg";
	    }
	    if(id=="btn111"){
	        img.src="./../resources/img/balls/111골든볼(gold01).jpg";
	    }
	    if(id=="btn12"){
	        img.src="./../resources/img/shop_etc/상품준비중입니다.png";
	    }
	    /*************************************************************************************/
	    
	    if(id=="btn201"){
	        img.src="./../resources/img/foots/201푸마 퓨처 5.1 넷핏 FG_AG.jpg";
	    }
	    if(id=="btn202"){
	        img.src="./../resources/img/foots/202미즈노 모렐리아 네오 2 클럽 TF.jpg";
	    }
	    if(id=="btn203"){
	        img.src="./../resources/img/foots/203아디다스 프레데터 20.3 LL FG.jpg";
	    }
	    if(id=="btn204"){
	        img.src="./../resources/img/foots/204아디다스 네메시스 19+ FG.jpg";
	    }
	    if(id=="btn205"){
	        img.src="./../resources/img/foots/205아디다스 엑스 19.4 FG.jpg";
	    }
	    if(id=="btn206"){
	        img.src="./../resources/img/foots/206아디다스 네메시스 19.3 AG_MG.jpg";
	    }
	    if(id=="btn207"){
	        img.src="./../resources/img/foots/207아디다스 코파 20.1 FG.jpg";
	    }
	    if(id=="btn208"){
	        img.src="./../resources/img/foots/208아디다스 코파 20+ FG.jpg";
	    }
	    if(id=="btn209"){
	        img.src="./../resources/img/foots/209아디다스 코파 문디알 FG.jpg";
	    }
	    if(id=="btn210"){
	        img.src="./../resources/img/foots/210아디다스 네메시스 19.4 FG.jpg" ;
	    }
	    if(id=="btn211"){
	        img.src="./../resources/img/foots/211아디다스 프레데터 19.1 FG.jpg";
	    }
	}
</script>	
<!--------------------------------------------------------------------------------------->

<style>
.divborder {
	border: 0px solid black;	
}

.side_bar {
	background-color: black; 
	padding: 30px; 
	width: 175px; 
	height: auto; 
	cursor: pointer; 
	font-size: 20px; 
	color: white;	
}

</style>
</head>

<body id="top">
	<!--top-->
	<%@ include file="./../include/top.jsp"%>
	<!--각 페이지 이미지-->
	<div class="bgded overlay"
		style="background-image: url('../images/demo/backgrounds/01.png');">
		<div id="breadcrumb" class="hoc clear">
			<!--이미지 위에 글쓰는곳-->
		</div>
	</div>
	<div class="wrapper row3">
		<main class="hoc container clear">
			<!-- main body -->
			<div class="content">
				<div class="container">
					<div class="row">
					
						<!-- 영역 1. 사이드바 -->
						<div class="divborder col-2" style="height:px; ">
						
							<!-- 검색창 -->						
							<div class="side_menu" style="position: fixed; ">	
								<div class="row" style="border-color:black; ">						
									<input type="text" placeholder="Search" style="width:160px; margin-left: 0px; text-align: center; ">
										<button class="btn btn-success" type="submit" style="width:50px; background-color: black;">검색</button>
									</input>
								</div>&nbsp							
								<div class="side_bar" onclick="location.href='./../market/marketMain.do';">PRODUCTS</div> &nbsp							
								<div class="side_bar" onclick="location.href='./../market/marketUniform.do';">CUSTOM-UNIFORM</div> &nbsp
								<div class="side_bar" onclick="location.href='./../market/marketRental.do';">RENTAL</div> &nbsp
								<div class="side_bar" onclick="location.href='./../market/marketBasket.do';">SHOPPING BASKET</div>
							</div>
						</div>
						<!-------------------------------------------------------------------------------------->

						<!-- 영역 2. 미리보기 -->
						<div class="divborder col-6" style="height:px; ">
							<!-- <div class="preview" style="margin-left:50px; position: fixed; "> -->
							<div class="preview" style="text-align: right;">
								<div style="display: inline-block; ">
								    <img id="image" src="./../resources/img/best/001.u20 월드컵 트로피.png"
								        style="width: 500px; height: 500px; border: 5px solid black; ">
							    </div><br /><br />
							</div>	  							    
						
							<div class="info" style="text-align: left; width:500px; margin-left: 53px;">
								<table border=1 >
									<tr>
										<td>제조사</td>
										<td>아디다스</td>
									</tr>
									<tr>
										<td>원산지</td>
										<td>중국</td>
									</tr>
									<tr>
										<td>소비자가</td>
										<td><del>189,000원</del></td>
									</tr>
									<tr style="color: blue";>
										<td>판매가</td>
										<td><b>109,900원</b></td>
									</tr>
									<tr>
										<td>적립금</td>
										<td>1,100원 (1%)</td>
									</tr>
									<tr>
										<td>브랜드</td>
										<td>아디다스</td>
									</tr>
									<tr style="color: red";>
										<td>상품요약정보</td>
										<td>2020 UEFA 유로 공식사용구</td>
									</tr>	
								</table>
								
								<table border=1>
									<tr style="text-align: left;">
										<td style="width: 165px;">사이즈</td>
										<td>
											<select name="choice" style="height: 30px";>
												<option value="chk">- [필수] 옵션을 선택해 주세요 -</option>
												<option value="">---------------------------------</option>
												<option value="">[4호]</option>
												<option value="">[5호]</option>
											</select>	
										</td>
									</tr>
										
									<tr style="text-align: left;">
										<td style="width: 165px;">수량</td>
										<td>
											<select name="choice" style="height: 30px";>
												<option value="chk">- [필수] 갯수를 선택해 주세요 -</option>
												<option value="">---------------------------------</option>
												<option value="">1개</option>
												<option value="">2개</option>
												<option value="">3개</option>
												<option value="">4개</option>
												<option value="">5개</option>
												<option value="">6개</option>
												<option value="">7개</option>
												<option value="">8개</option>
												<option value="">9개</option>
												<option value="">10개</option>
											</select>	
										</td>
									</tr>
								</table>	
							</div>
							
							<div id="totalPrice" class="row" 
								style="margin-left:180px; padding: 19px 9px 19px; border-top: 1px solid #dedfdf;
   									vertical-align: middle; ">
                				<strong>총 상품금액</strong>(수량) : 
                					<div id="total" class="row"; >
                						<input type="text" id="won" style="height: 30px; width:100px; margin-left: 30px; margin-right: 10px;">원</input> 
                						(<input type="text" id="count" style="height: 30px; width:50px; margin-right: 10px; margin-left: 10px;"/>개)</div>
           					</div>
           					
						    <div class="row" style="text-align: center;">
						    	<div class="" style="border: 1px solid black; background-color: white; padding: 10px; width: 150px; height: auto; 
									margin-left:250px; cursor: pointer; font-size: 20px; color: black;" onclick="location.href='./../market/marketBasket.do';">장바구니</div>&nbsp;&nbsp;&nbsp;&nbsp;
						   
						   	 	<div class="" style="border: 1px solid black; background-color: red; padding: 10px; width: 150px; height: auto; 
									margin-right: 0px; cursor: pointer; font-size: 20px; color: white;" onclick="location.href=#;">구매하기</div>
							</div>	
							
							<!-- 미리보기 바닥부분 -->
							<div class="container" style="width:100%;">  
								<ul class="nav nav-tabs" role="tablist">
									<li class="nav-item">
										<a class="nav-link active" data-toggle="tab" href="#home">상품상세정보</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#menu1">상품구매안내</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#menu2">상품사용후기</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#menu3">상품Q&A</a>
									</li>
								</ul>

							  	<!-- Tab panes -->
							  	<div class="tab-content" style="width:100%;">
									<div id="home" class="container tab-pane active"><br>
										<h3>상품상세정보</h3>
										<p>상세정보 넣자</p>
									</div>
									
									<div id="menu1" class="container tab-pane fade"><br>
										<img src="./../resources/img/shop_etc/shopping_guide.jpg" width="100%">
									</div>
									
									<div id="menu2" class="container tab-pane fade"><br>
										<h3>상품사용후기</h3>
										<p>상품사용후기 넣자</p>
									</div>
									
									<div id="menu3" class="container tab-pane fade"><br>
										<img src="./../resources/img/shop_etc/qna.jpg" width="100%" />
									</div>							
								</div>						
							</div>
						</div>
						<!-------------------------------------------------------------------------------------->
						
						<!-- 영역 3. 아이템 -->
						<div class="divborder col-4" style="height:;">  
						
						<!-- 아이템 best -->
							<button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demob" 
									style="width: 300px; margin-left: 30px; font-size: 20px; background-color: green;">BEST 상품 미완</button><br /><br />
							<div id="demob" class="collapse">
								<table border= "1">
									<tr style="height:150px;">
										<td class="item">  
											<input type="image" id="btn1" src="./../resources/img/balls/01유니포리아 프로(FH7362).jpg" 
									       	style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td>  
											<input type="image" id="btn2" src="./../resources/img/balls/02인피니트 수프림 2.0(B159901).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td>  
											<input type="image" id="btn3" src="./../resources/img/balls/03나이키 네이마르 스킬볼(SC3961-100).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
									</tr>
									
									<tr style="height:150px;">
										<td>  
											<input type="image" id="btn4" src="./../resources/img/balls/04코리아 나이키 피치-SU20(CW5410-670).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td><input type="image" id="btn5" src="./../resources/img/balls/05파리 생제르망 나이키 스트라이크-JORDAN(CQ6384-100).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
										<td><input type="image" id="btn6" src="./../resources/img/balls/06파이널 이스탄불 프로(FH7343).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
									</tr>
									
									<tr style="height:150px;">
										<td>  
											<input type="image" id="btn7" src="./../resources/img/balls/07아스토레 코스모스 R 본딩볼(ASTORE2015RED).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td><input type="image" id="btn8" src="./../resources/img/balls/08나이키 마지아 라운드 볼(SC3622-100)(3622100).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
										<td><input type="image" id="btn9" src="./../resources/img/balls/09리볼브(ASBR01).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
									</tr>
									
									<tr style="height:150px;">
										<td>  
											<input type="image" id="btn10" src="./../resources/img/balls/10올 뉴 프리메로 2(ASBP201).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td>
											<input type="image" id="btn11" src="./../resources/img/balls/11골든볼(gold01).jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
										<td>
											<input type="image" id="btn12" src="./../resources/img/상품준비중입니다.png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
									</tr>
								</table>
							</div>
							
							<!-- 아이템 1 -->
							<button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo1" 
									style="width: 300px; margin-left: 30px; font-size: 20px; background-color: green;">축구공 ok</button><br /><br />
							<div id="demo1" class="collapse" >
								<table border= "1" >
									<tr style="height:150px; ">
										<td class="item">  
											<input type="image" id="btn101"  title="유니포리아 프로(FH7362)" src="./../resources/img/balls/101유니포리아 프로(FH7362).jpg" 
									       	style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td>  
											<input type="image" id="btn102" title="나이키 바르셀로나 스킬볼-FA20(CQ7884620)" src="./../resources/img/balls/102나이키 바르셀로나 스킬볼-FA20 (CQ7884620).jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td>  
											<input type="image" id="btn103" title="파리 생제르망 나이키 스트라이크-JORDAN(CQ6384010)" src="./../resources/img/balls/103파리 생제르망 나이키 스트라이크-JORDAN(CQ6384010).jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
									</tr>
									
									<tr style="height:150px;">
										<td>  
											<input type="image" id="btn104" title="나이키 플라이트 엘리트(CN5332100)" src="./../resources/img/balls/104나이키 플라이트 엘리트(CN5332100).jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td><input type="image" id="btn105" title="파이널 이스탄불 프로(FH7343)" src="./../resources/img/balls/105파이널 이스탄불 프로(FH7343).jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
										<td><input type="image" id="btn106" title="코리아 나이키 피치-SU20(CW5410670)" src="./../resources/img/balls/106코리아 나이키 피치-SU20(CW5410670).jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
									</tr>
									
									<tr style="height:150px;">
										<td>  
											<input type="image" id="btn107" title="아스토레 코스모스 R(ASTORE2015RED)" src="./../resources/img/balls/107아스토레 코스모스 R(ASTORE2015RED).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td><input type="image" id="btn108" title="올 뉴 프리메로 2(ASBP201)" src="./../resources/img/balls/108올 뉴 프리메로 2(ASBP201).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
										<td><input type="image" id="btn109" title="나이키 스트라이크-EC20(CV9498020)" src="./../resources/img/balls/109나이키 스트라이크-EC20(CV9498020).jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
									</tr>
									
									<tr style="height:150px;">
										<td>  
											<input type="image" id="btn110" title="츠바사 프로(FR8367)" src="./../resources/img/balls/110츠바사 프로(FR8367).jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td>
											<input type="image" id="btn111" title="골든볼" src="./../resources/img/balls/111골든볼(gold01).jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
										<td>
											<input type="image" id="btn12" src="./../resources/img/shop_etc/상품준비중입니다.png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
									</tr>
								</table>
							</div>
								
							<!-- 아이템 2 -->
							<button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo2" 
									style="width: 300px; margin-left: 30px; font-size: 20px; background-color: green;">축구화 미완</button><br /><br />
							<div id="demo2" class="collapse">
								<table border= "1">
									<tr style="height:150px;">
										<td class="item">  
											<input type="image" id="btn201" src="./../resources/img/foots/201푸마 퓨처 5.1 넷핏 FG_AG.jpg" 
									       	style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td>  
											<input type="image" id="btn202" src="./../resources/img/foots/202미즈노 모렐리아 네오 2 클럽 TF.jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td>  
											<input type="image" id="btn203" src="./../resources/img/foots/203아디다스 프레데터 20.3 LL FG.jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
									</tr>
									
									<tr style="height:150px;">
										<td>  
											<input type="image" id="btn204" src="./../resources/img/foots/204아디다스 네메시스 19+ FG.jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td><input type="image" id="btn205" src="./../resources/img/foots/205아디다스 엑스 19.4 FG.jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
										<td><input type="image" id="btn206" src="./../resources/img/foots/206아디다스 네메시스 19.3 AG_MG.jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
									</tr>
									
									<tr style="height:150px;">
										<td>  
											<input type="image" id="btn207" src="./../resources/img/foots/207아디다스 코파 20.1 FG.jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td><input type="image" id="btn208" src="./../resources/img/foots/208아디다스 코파 20+ FG.jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
										<td><input type="image" id="btn209" src="./../resources/img/foots/209아디다스 코파 문디알 FG.jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
									</tr>
									
									<tr style="height:150px;">
										<td>  
											<input type="image" id="btn210" src="./../resources/img/foots/210아디다스 네메시스 19.4 FG.jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td>
											<input type="image" id="btn211" src="./../resources/img/foots/211아디다스 프레데터 19.1 FG.jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
										<td>
											<input type="image" id="btn12" src="./../resources/img/상품준비중입니다.png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
									</tr>
								</table>
							</div>
							
							<!-- 아이템 3 -->
							<button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo3" 
									style="width: 300px; margin-left: 30px; font-size: 20px; background-color: green;">유니폼 미완</button><br /><br />
							<div id="demo3" class="collapse">
								<table border= "1">
									<tr style="height:150px;">
										<td class="item">  
											<input type="image" id="btn1" src="./../resources/img/balls/01유니포리아 프로(FH7362).jpg" 
									       	style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td>  
											<input type="image" id="btn2" src="./../resources/img/balls/02인피니트 수프림 2.0(B159901).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td>  
											<input type="image" id="btn3" src="./../resources/img/balls/03나이키 네이마르 스킬볼(SC3961-100).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
									</tr>
									
									<tr style="height:150px;">
										<td>  
											<input type="image" id="btn4" src="./../resources/img/balls/04코리아 나이키 피치-SU20(CW5410-670).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td><input type="image" id="btn5" src="./../resources/img/balls/05파리 생제르망 나이키 스트라이크-JORDAN(CQ6384-100).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
										<td><input type="image" id="btn6" src="./../resources/img/balls/06파이널 이스탄불 프로(FH7343).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
									</tr>
									
									<tr style="height:150px;">
										<td>  
											<input type="image" id="btn7" src="./../resources/img/balls/07아스토레 코스모스 R 본딩볼(ASTORE2015RED).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td><input type="image" id="btn8" src="./../resources/img/balls/08나이키 마지아 라운드 볼(SC3622-100)(3622100).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
										<td><input type="image" id="btn9" src="./../resources/img/balls/09리볼브(ASBR01).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
									</tr>
									
									<tr style="height:150px;">
										<td>  
											<input type="image" id="btn10" src="./../resources/img/balls/10올 뉴 프리메로 2(ASBP201).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td>
											<input type="image" id="btn11" src="./../resources/img/balls/11골든볼(gold01).jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
										<td>
											<input type="image" id="btn12" src="./../resources/img/상품준비중입니다.png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
									</tr>
								</table>
							</div>
							
							<!-- 아이템 4 -->
							<button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo4" 
									style="width: 300px; margin-left: 30px; font-size: 20px; background-color: green;">축구용품 미완</button><br /><br />
							<div id="demo4" class="collapse">
								<table border= "1">
									<tr style="height:150px;">
										<td class="item">  
											<input type="image" id="btn1" src="./../resources/img/balls/01유니포리아 프로(FH7362).jpg" 
									       	style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td>  
											<input type="image" id="btn2" src="./../resources/img/balls/02인피니트 수프림 2.0(B159901).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td>  
											<input type="image" id="btn3" src="./../resources/img/balls/03나이키 네이마르 스킬볼(SC3961-100).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
									</tr>
									
									<tr style="height:150px;">
										<td>  
											<input type="image" id="btn4" src="./../resources/img/balls/04코리아 나이키 피치-SU20(CW5410-670).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td><input type="image" id="btn5" src="./../resources/img/balls/05파리 생제르망 나이키 스트라이크-JORDAN(CQ6384-100).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
										<td><input type="image" id="btn6" src="./../resources/img/balls/06파이널 이스탄불 프로(FH7343).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
									</tr>
									
									<tr style="height:150px;">
										<td>  
											<input type="image" id="btn7" src="./../resources/img/balls/07아스토레 코스모스 R 본딩볼(ASTORE2015RED).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td><input type="image" id="btn8" src="./../resources/img/balls/08나이키 마지아 라운드 볼(SC3622-100)(3622100).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
										<td><input type="image" id="btn9" src="./../resources/img/balls/09리볼브(ASBR01).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
									</tr>
									
									<tr style="height:150px;">
										<td>  
											<input type="image" id="btn10" src="./../resources/img/balls/10올 뉴 프리메로 2(ASBP201).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td>
											<input type="image" id="btn11" src="./../resources/img/balls/11골든볼(gold01).jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
										<td>
											<input type="image" id="btn12" src="./../resources/img/상품준비중입니다.png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
									</tr>
								</table>
							</div>
							
							<!-- 아이템 5 -->
							<button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo5" 
									style="width: 300px; margin-left: 30px; font-size: 20px; background-color: green;">기타용품 미완</button>
							<div id="demo5" class="collapse">
								<table border= "1">
									<tr style="height:150px;">
										<td class="item">  
											<input type="image" id="btn1" src="./../resources/img/balls/01유니포리아 프로(FH7362).jpg" 
									       	style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td>  
											<input type="image" id="btn2" src="./../resources/img/balls/02인피니트 수프림 2.0(B159901).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td>  
											<input type="image" id="btn3" src="./../resources/img/balls/03나이키 네이마르 스킬볼(SC3961-100).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
									</tr>
									        
									<tr style="height:150px;">
										<td>  
											<input type="image" id="btn4" src="./../resources/img/balls/04코리아 나이키 피치-SU20(CW5410-670).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td><input type="image" id="btn5" src="./../resources/img/balls/05파리 생제르망 나이키 스트라이크-JORDAN(CQ6384-100).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
										<td><input type="image" id="btn6" src="./../resources/img/balls/06파이널 이스탄불 프로(FH7343).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
									</tr>
									
									<tr style="height:150px;">
										<td>  
											<input type="image" id="btn7" src="./../resources/img/balls/07아스토레 코스모스 R 본딩볼(ASTORE2015RED).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td><input type="image" id="btn8" src="./../resources/img/balls/08나이키 마지아 라운드 볼(SC3622-100)(3622100).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
										<td><input type="image" id="btn9" src="./../resources/img/balls/09리볼브(ASBR01).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
									</tr>
									
									<tr style="height:150px;">
										<td>  
											<input type="image" id="btn10" src="./../resources/img/balls/10올 뉴 프리메로 2(ASBP201).png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
										<td>
											<input type="image" id="btn11" src="./../resources/img/balls/11골든볼(gold01).jpg" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
								        </td>
										<td>
											<input type="image" id="btn12" src="./../resources/img/상품준비중입니다.png" 
									        style="width: 100px; height: 100px; margin-top: 20px; border: 3px solid black;"
									        onclick="setImg(this.id);">
									    </td>
									</tr>
								</table>
							</div>
					</div>
				</div>
			</div>
	</div>
</body>

<!-- / main body -->
<div class="clear"></div>
</main>
</div>
<!-- footer -->
<%@ include file="./../include/footer.jsp"%>
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="./../resources/js/jquery.min.js"></script>
<script src="./../resources/js/jquery.backtotop.js"></script>
<script src="./../resources/js/jquery.mobilemenu.js"></script>
</body>
</html>