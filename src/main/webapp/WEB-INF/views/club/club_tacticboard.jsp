<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<meta name="viewport" content="height=device-height, width=device-width, initial-scale=1.0">
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

<body>

<script type="text/javascript">
	var config = {
		'.edit_field' : {}
	}
	for ( var selector in config) {
		$(selector).chosen(config[selector]);
	}
</script>
<style>
.dropped_name {
color: #fff;
}
</style>  
	<div>
		<button id="button" class="btn btn-light" style="position:absolute; left: 10px ; top: 10px ;">Bench</button>
		<div class="toggler"  align="center"
		style="width:80px; position:absolute; left: 10px ; top: 60px ; background-color: #ffffff;
        opacity: 0.5;">
		  <div id="effect" class="ui-widget-content ui-corner-all">  
		    <h3 class="ui-widget-header ui-corner-all">Bench</h3>
			    <div id="player_list" class="player_list" >
						<table id="player_table" cellspacing="0" cellpadding="0" border="0"> 
							<tbody>
								<c:forEach items="${bench }" var="row" varStatus="status" >
									<tr>
										<td height="22" align="left" class="player_header">
											<div class = "player ui-draggable" style="20px" value="${row }">${row }</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div> 
		  	</div>
		</div>
	<div id="field" style="width:100%; height:100%"> 
		
		<table   
			style="width:100%; height:100%;background: url(./../resources/img/field.jpg); background-size: 100% 100%; background-repeat: no-repeat;">
			<tr style="height:4.25%;">
				<td colspan=5>
					
				</td>
			</tr>
			<c:forEach items="${squad }" var="row" varStatus="status">
				<c:choose>
					<c:when test="${status.count==1 }">
						<tr style="height: 102px">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos0" style="width:20%"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos0" style="width:20%">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==2 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos1" style="width:20%"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos1" style="width:20%">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==3 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos2" style="width:20%"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos2" style="width:20%">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==4 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos3" style="width:20%"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos3" style="width:20%">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==5 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos4" style="width:20%"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos4" style="width:20%">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
						</tr>
					</c:when>
					<c:when test="${status.count==6 }">
						<tr style="height: 102px">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos5"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos5">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==7 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos6"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos6">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==8 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos7"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos7">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==9 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos8"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos8">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==10 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos9"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos9">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
						</tr>
					</c:when>
					<c:when test="${status.count==11 }">
						<tr style="height: 102px">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos10"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos10">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==12 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos11"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos11">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==13 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos12"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos12">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==14 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos13"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos13">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==15 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos14"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos14">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
						</tr>
					</c:when>
					<c:when test="${status.count==16 }">
						<tr style="height: 102px">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos15"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos15">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==17 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos16"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos16">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==18 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos17"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos17">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==19 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos18"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos18">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==20 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos19"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos19">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
						</tr>
					</c:when>
					<c:when test="${status.count==21 }">
						<tr style="height: 102px">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos20"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos20">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==22 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos21"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos21">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==23 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos22"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos22">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==24 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos23"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos23">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:when test="${status.count==25 }">
						<c:choose>
							<c:when test="${row == '' }">
								<td class="pos" id="pos24"></td>
							</c:when>
							<c:otherwise>
								<td class="pos" id="pos24">
									<div class="dropped_player">
										<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
									</div>
									<div class="dropped_name">
										${row}
									</div>
								</td>
							</c:otherwise>
						</c:choose>
						</tr>
					</c:when>
					<c:when test="${status.count== 26 }">
						<tr style="height: 102px">
							<td></td>
							<td></td>
								<c:choose>
									<c:when test="${row == '' }">
										<td class="pos" id="pos25"></td>
									</c:when>
									<c:otherwise>
										<td class="pos" id="pos25">
											<div class="dropped_player">
												<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
											</div>
											<div class="dropped_name">
												${row}
											</div>
										</td>
									</c:otherwise>
								</c:choose>
							<td></td>
							<td></td>
						</tr>
					</c:when>
				</c:choose>
			</c:forEach>
			<!-- <tr>
				<td class="pos" id="pos0"><input type="hidden" id="pos0"
					value=""></td>
				<td class="pos" id="pos1"><input type="hidden" id="pos1"
					value=""></td>
				<td class="pos" id="pos2"><input type="hidden" id="pos2"
					value=""></td>
				<td class="pos" id="pos3"><input type="hidden" id="pos3"
					value=""></td>
				<td class="pos" id="pos4"><input type="hidden" id="pos4"
					value=""></td>
			</tr>
			<tr>
				<td class="pos" id="pos5"><input type="hidden" id="pos5"
					value=""></td>
				<td class="pos" id="pos6"><input type="hidden" id="pos6"
					value=""></td>
				<td class="pos" id="pos7"><input type="hidden" id="pos7"
					value=""></td>
				<td class="pos" id="pos8"><input type="hidden" id="pos8"
					value=""></td>
				<td class="pos" id="pos9"><input type="hidden" id="pos9"
					value=""></td>
			</tr>
			<tr>
				<td class="pos" id="pos10"><input type="hidden" id="pos10"
					value=""></td>
				<td class="pos" id="pos11"><input type="hidden" id="pos11"
					value=""></td>
				<td class="pos" id="pos12"><input type="hidden" id="pos12"
					value=""></td>
				<td class="pos" id="pos13"><input type="hidden" id="pos13"
					value=""></td>
				<td class="pos" id="pos14"><input type="hidden" id="pos14"
					value=""></td>
			</tr>
			<tr>
				<td class="pos" id="pos15"><input type="hidden" id="pos15"
					value=""></td>
				<td class="pos" id="pos16"><input type="hidden" id="pos16"
					value=""></td>
				<td class="pos" id="pos17"><input type="hidden" id="pos17"
					value=""></td>
				<td class="pos" id="pos18"><input type="hidden" id="pos18"
					value=""></td>
				<td class="pos" id="pos19"><input type="hidden" id="pos19"
					value=""></td>
			</tr>
			<tr>
				<td class="pos" id="pos20"><input type="hidden" id="pos20"
					value=""></td>
				<td class="pos" id="pos21"><input type="hidden" id="pos21"
					value=""></td>
				<td class="pos" id="pos22"><input type="hidden" id="pos22"
					value=""></td>
				<td class="pos" id="pos23"><input type="hidden" id="pos23"
					value=""></td>
				<td class="pos" id="pos24"><input type="hidden" id="pos24"
					value=""></td>
			</tr> 
			<tr>
				<td></td>
				<td></td>
				<td class="pos" id="pos25"><input type="hidden" id="pos25"
					value=""></td>
				<td></td>
				<td></td>
			</tr> -->
			<tr colspan=5 style="height:4.25%;"></tr>
			
		</table>
		<!-- <img id="field_image" height="613" width="416" src="http://static.footballuser.com/images/field.jpg" alt="" /> -->
	</div>
	
	<div id="ball" style="left:50%; top:50%; position:absolute;">
		<img style="width:60px; height:60px;" src="./../resources/img/ball3.png" alt="" />
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
	$( function() {
	    // run the currently selected effect
	    function runEffect() {
	      // get effect type from
	      var selectedEffect = $( "#effectTypes" ).val();
	 
	      // Most effect types need no options passed by default
	      var options = {};
	      // some effects have required parameters
	      if ( selectedEffect === "scale" ) {
	        options = { percent: 50 };
	      } else if ( selectedEffect === "size" ) {
	        options = { to: { width: 200, height: 60 } };
	      }
	 
	      // Run the effect
	      $( "#effect" ).toggle("slide", options, 500 );
	    };
	 
	    // Set effect from select menu value
	    $( "#button" ).on( "click", function() {
	      runEffect();
	    });
	  } );
</script>
</html>