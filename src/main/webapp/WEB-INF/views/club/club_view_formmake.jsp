<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<title>포메이션 작성</title>

<!-- 전술판 전용 -->  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="http://static.footballuser.com/javascripts/jquery.json-2.3.min.js"></script>
<script type="text/javascript" src="./../resources/js/formation.js"></script>
<link rel="stylesheet" type="text/css"
	href="./../resources/css/framework.css">
<script type="text/javascript"
	src="http://static.footballuser.com/javascripts/jquery.ui.touch-punch-1.7.2.js"></script>
<script type="text/javascript"
	src="http://static.footballuser.com/javascripts/chosen.jquery.min.js"></script>
	
<!-- 이미지 저장용 -->

<script src="https://cdn.rawgit.com/eligrey/FileSaver.js/5ed507ef8aa53d8ecfea96d96bc7214cd2476fd2/FileSaver.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.5.0-beta4/html2canvas.js"></script>
<body>
	<style>
.dropped_name {
	color: #fff;
}
/* .ground td {
	border:0.5px solid black; 
} 
.ground .no{
	border:0;
} */
</style>

  	<div class="two_third first">
  	<form>
  	<input type="hidden" name="imgSrc" id="imgSrc" />
  	<input type="hidden" name="g_idx" id="g_idx" value="${g_idx }" />
  	</form>
			<c:choose>
  			<c:when test="${gameDTO.g_type=='축구' }">
  				<div id="field" style="height: 613px; width: 416px;">
				<table class="football" 
					style=" background: url(./../resources/img/field.jpg); 
						height: 613px;
						 width: 416px;
						background-size: 100% 100%;
						 background-repeat: no-repeat;">
			</c:when>
  			<c:otherwise>
  				<div id="field" style="height: 613px; width: 446px;">
  				<table class="futsal" 
	  					style="height: 613px;
						 width: 446px;
						background-size: 100% 100%;
						 background-repeat: no-repeat; background: url(./../resources/img/futsalfield.jpg); ">
  			</c:otherwise>
  		</c:choose>
				<c:forEach items="${squad }" var="row" varStatus="status">
					<c:choose>
						<c:when test="${status.count==1 }">
							<tr style="height: 102px">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos0" style="width:20%"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos0" style="width:20%">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==2 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos1" style="width:20%"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos1" style="width:20%">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==3 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos2" style="width:20%"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos2" style="width:20%">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==4 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos3" style="width:20%"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos3" style="width:20%">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==5 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos4" style="width:20%"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos4" style="width:20%">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
							</tr>
						</c:when>
						<c:when test="${status.count==6 }">
							<tr style="height: 102px">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos5"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos5">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==7 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos6"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos6">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==8 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos7"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos7">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==9 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos8"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos8">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==10 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos9"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos9">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
							</tr>
						</c:when>
						<c:when test="${status.count==11 }">
							<tr style="height: 102px">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos10"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos10">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==12 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos11"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos11">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==13 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos12"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos12">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==14 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos13"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos13">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==15 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos14"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos14">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
							</tr>
						</c:when>
						<c:when test="${status.count==16 }">
							<tr style="height: 102px">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos15"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos15">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==17 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos16"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos16">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==18 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos17"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos17">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==19 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos18"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos18">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==20 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos19"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos19">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
							</tr>
						</c:when>
						<c:when test="${status.count==21 }">
							<tr style="height: 102px">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos20"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos20">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==22 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos21"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos21">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==23 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos22"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos22">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==24 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos23"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos23">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:when test="${status.count==25 }">
							<c:choose>
								<c:when test="${row.m_name ==null }">
									<td class="pos" id="pos24"></td>
								</c:when>
								<c:otherwise>
									<td class="pos" id="pos24">
										<div class="dropped_player">
											<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
										</div>
										<div class="dropped_name">
											${row.m_name}
										</div>
									</td>
								</c:otherwise>
							</c:choose>
							</tr>
						</c:when>
						<c:when test="${status.count== 26 }">
							<tr style="height: 102px">
								<td class="no"></td>
								<td class="no"></td>
									<c:choose>
										<c:when test="${row.m_name ==null }">
											<td class="pos" id="pos25"></td>
										</c:when>
										<c:otherwise>
											<td class="pos" id="pos25">
												<div class="dropped_player">
													<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
												</div>
												<div class="dropped_name">
													${row.m_name}
												</div>
											</td>
										</c:otherwise>
									</c:choose>
								<td class="no"></td>
								<td class="no"></td>
							</tr>
						</c:when>
					</c:choose>
				</c:forEach>
			</table>
			<!-- <img id="field_image" height="613" width="416" src="http://static.footballuser.com/images/field.jpg" alt="" /> -->
		</div>
	</div>

	<div class="one_third " >
		<div class="">
			<br class="clear" />

			<div class="">
				<div id="shirts" class="left_padded more_topspaced"
					style="height: 220px; width: 316px; overflow: auto; display: none;">

					<img id="_1.png" class="active_shirt shirt"
						src="http://static.footballuser.com/images/shirts/_1.png" alt="" />

					<img id="_2.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_2.png" alt="" />
					<img id="_3.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_3.png" alt="" />
					<img id="_4.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_4.png" alt="" />
					<img id="_5.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_5.png" alt="" />
					<img id="_6.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_6.png" alt="" />
					<img id="_7.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_7.png" alt="" />
					<img id="_8.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_8.png" alt="" />
					<img id="_9.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_9.png" alt="" />
					<img id="_10.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_10.png" alt="" />
					<img id="_11.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_11.png" alt="" />
					<img id="_12.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_12.png" alt="" />
					<img id="_13.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_13.png" alt="" />
					<img id="_14.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_14.png" alt="" />
					<img id="_15.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_15.png" alt="" />
					<img id="_16.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_16.png" alt="" />
					<img id="_17.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_17.png" alt="" />
					<img id="_18.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_18.png" alt="" />
					<img id="_19.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_19.png" alt="" />
					<img id="_20.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_20.png" alt="" />
					<img id="_21.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_21.png" alt="" />
					<img id="_22.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_22.png" alt="" />
					<img id="_23.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_23.png" alt="" />
					<img id="_24.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_24.png" alt="" />
					<img id="_25.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_25.png" alt="" />
					<img id="_26.png" class="shirt"
						src="http://static.footballuser.com/images/shirts/_26.png" alt="" />
				</div>
				<!-- <div class="" >
				<input id="playername" type="text" value="" size="30"
					name="playername" /> <input id="playerid" type="text" value=""
					size="30" name="playerid" /> <input
					style="margin-left: 20px; height: 33px" class="button" value="add"
					type="submit" id="addplayer" />
			</div> -->
			
				<div style="font-size:35px;">
					<p>
						벤치 멤버
					</p>
				</div>
				<div id="player_list" class="player_list" style="width:200px; height:500px; overflow-x:hidden;"> 
					<table id="player_table"  
					style="overflow:hidden; height:auto;  cellspacing:0; cellpadding:0; border:0">
						<tbody>
							<c:forEach items="${bench }" var="row" varStatus="status">
								<tr>
									<td align="left" class="player_header"  style="height:40px;">
										<div class="player ui-draggable" style="font-size: 20px;"
											value="${row.m_name }">${row.m_name }</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

			</div>

		</div>
		<div class="">
			<p>
				<input class="btn btn-success" type="submit" value="스쿼드 저장" id="submit"
					name="submit" />
				<button class="btn btn-warning" id="save" onclick="javascript:capture()">이미지</button>
			</p>
		</div>

	</div>
	

	<br class="clear" />



</body>
<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push([ '_setAccount', 'UA-15165482-2' ]);
	_gaq.push([ '_trackPageview' ]);
	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www')
				+ '.google-analytics.com/ga.js';
		(document.getElementsByTagName('head')[0] || document
				.getElementsByTagName('body')[0]).appendChild(ga);
	})();
</script>
<script type="text/javascript">
	var config = {
		'.edit_field' : {}
	}
	for ( var selector in config) {
		$(selector).chosen(config[selector]);
	}
</script>

<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.17.2/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.17.2/firebase-messaging.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.17.2/firebase-analytics.js"></script>

<script type="text/javascript">

	var config = {
		'.edit_field' : {}
	}
	for ( var selector in config) {
		$(selector).chosen(config[selector]);
	}
	
function capture() {
       html2canvas($("#field"), {
             onrendered: function(canvas) {
               //document.body.appendChild(canvas);
               //alert(canvas.toDataURL("image/png"));
               $("#imgSrc").val(canvas.toDataURL("image/png"));
               $.ajax({
                   type: "post",
                   data : $("form").serialize(),
                   url:"../club/imageCreate.do",
                   error:function(request,status,error){ 
                	   alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); 
                	},
                   success: function (data) {
                       try{
                    	   alert("이미지 저장 완료! 팀원들에게 공유됩니다.");
                       }catch(e){                
                           alert('server Error!!');
                       }
                   }
               });
             }
       
       
       });

   }     

</script> 
</html>