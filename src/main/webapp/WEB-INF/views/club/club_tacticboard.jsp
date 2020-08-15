<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<meta name="viewport" content="height=device-height, width=device-width, initial-scale=1.0">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="viewport" content="height=device-height, width=device-width, initial-scale=1.0">
<!-- 전술판 전용 -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
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
   /* .toggler {
    width: 500px;
    height: 200px;
  	} */
	.dropped_name { 
	   color: #fff;
	}
</style> 
   <div>
      <div class="toggler"  align="center"
      style="width:80px; position:absolute; left: 10px ; top: 60px ; background-color: #ffffff;
        	 z-index:1;">

        <div id="effect" class="ui-widget-content ui-corner-all" style="display:none">  
          <h3 class="ui-widget-header ui-corner-all">Bench</h3>
             <div id="player_list" class="player_list" >
                  <table id="player_table" cellspacing="0" cellpadding="0" border="0"> 
                     <tbody>
                        <c:forEach items="${bench }" var="row" varStatus="status" >
                           <tr>
                              <td height="22" padding="10px" align="left" class="player_header">
                                 <div class = "my_player player ui-draggable" style="20px" value="${row.m_id }">${row.m_name }</div>
                              </td>
                           </tr>
                        </c:forEach>
                     </tbody> 
                  </table> 
               </div> 
           </div>
      </div>
      
     <div class="toggler"  align="center"
      style="width:30%; position:absolute; left: 50%; top: 60px; background-color: #ffffff;
        opacity: 0.8; z-index:1;">
        <div id="score" class="ui-widget-content ui-corner-all" style="display:none"> 
        	<div style="font-size: 1em;padding:10px;"> 
	        	<form name="goalInsert" id="goalInsert" method="post" action="../android/goalInsert.do">
	        		<input type="hidden" name="g_idx" value="${g_idx }" />
	                	스코어러 : 
	        		<select name="goal" width="75%" style="display:inline">
	        			<option value="" selected="selected">스코어러</option>
	        			<c:forEach items="${lists }" var="row" varStatus="status" >
	        				<option value="${row.m_id }">${row.m_name }</option>
	        			</c:forEach>
	        		</select>
	        		<br /><br />
	                	어시스트 : 
	        		<select name="assist" width="75%" style="display:inline">
	        			<option value="" selected="selected">어시스트</option>
	        			<c:forEach items="${lists }" var="row" varStatus="status" >
	        				<option value="${row.m_id }">${row.m_name }</option>
	        			</c:forEach>
	        		</select>
	        		<br /><br />
	        		<button height="30px" type="submit" class="btn btn-warning">입력</button>
	        	</form>
        	</div>
        </div>
      </div>
      <div id="field" style="width: 100%; height: 100%">

         <table
            style="width: 100%; height: 100%; background:url(./../resources/img/field.jpg); background-size: 100% 100%; background-repeat: no-repeat;">
            <tr style="height: 4.25%;">
               <td colspan=5></td>
            </tr>
            <c:forEach items="${squad }" var="row" varStatus="status">
            <c:choose>
               <c:when test="${status.count==1 }">
                  <tr style="height: 102px">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos0" style="width:20%"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos0" style="width:20%">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:5%;top:6%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==2 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos1" style="width:20%"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos1" style="width:20%">
                           <div class="on_player dropped_player" style="position:absolute;left:25%;top:6%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==3 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos2" style="width:20%"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos2" style="width:20%">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:45%;top:6%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==4 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos3" style="width:20%"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos3" style="width:20%">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:65%;top:6%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==5 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos4" style="width:20%"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos4" style="width:20%">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:85%;top:6%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
                  </tr>
               </c:when>
               <c:when test="${status.count==6 }">
                  <tr style="height: 102px">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos5"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos5">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:5%;top:23%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==7 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos6"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos6">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:25%;top:23%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==8 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos7"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos7">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:45%;top:23%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==9 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos8"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos8">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:65%;top:23%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==10 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos9"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos9">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:85%;top:23%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
                  </tr>
               </c:when>
               <c:when test="${status.count==11 }">
                  <tr style="height: 102px">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos10"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos10">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:5%;top:39%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==12 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos11"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos11">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:25%;top:39%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==13 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos12"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos12">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:45%;top:39%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==14 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos13"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos13">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:65%;top:39%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==15 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos14"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos14">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:85%;top:39%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
                  </tr>
               </c:when>
               <c:when test="${status.count==16 }">
                  <tr style="height: 102px">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos15"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos15">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:5%;top:55%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==17 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos16"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos16">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:25%;top:55%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==18 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos17"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos17">
                           <div id="on_player" class="on_player dropped_player"  style="position:absolute;left:45%;top:55%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==19 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos18"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos18">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:65%;top:55%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==20 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos19"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos19">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:85%;top:55%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
                  </tr>
               </c:when>
               <c:when test="${status.count==21 }">
                  <tr style="height: 102px">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos20"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos20">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:5%;top:71%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==22 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos21"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos21">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:25%;top:71%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==23 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos22"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos22">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:45%;top:71%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==24 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos23"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos23">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:65%;top:71%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
                           </div>
                        </td>
                     </c:otherwise>
                  </c:choose>
               </c:when>
               <c:when test="${status.count==25 }">
                  <c:choose>
                     <c:when test="${row.m_name == null }">
                        <td class="pos" id="pos24"></td>
                     </c:when>
                     <c:otherwise>
                        <td class="pos" id="pos24">
                           <div id="on_player" class="on_player dropped_player" style="position:absolute;left:85%;top:71%;">
                              <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                              <div class="dropped_name">
                                 ${row.m_name}
                              </div>
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
                           <c:when test="${row.m_name == null }">
                              <td class="pos" id="pos25"></td>
                           </c:when>
                           <c:otherwise>
                              <td class="pos" id="pos25">
                                 <div id="on_player" class="on_player dropped_player"  style="position:absolute;left:45%;top:90%;">
                                    <img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" alt="" />
                                    <div class="dropped_name">
                                       ${row.m_name}
                                    </div>
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
            <tr colspan=5 style="height: 4.25%;"></tr>

         </table>
         <!-- <img id="field_image" height="613" width="416" src="http://static.footballuser.com/images/field.jpg" alt="" /> -->
      </div>

      <div id="ball" style="left: 50%; top: 50%; position: absolute;">
         <img style="width: 40px; height: 40px;"
            src="./../resources/img/ball.png" alt="" /> 
      </div>

   </div>
<button id="button2" class="btn btn-light" style="left:70% ;">Opponent</button>
<button id="button" class="btn btn-light" style="left:10px ;">Bench</button>
<button id="button3" class="btn btn-light" style="left:10px ;">Goal</button>
<%-- <div style="display:inline; width:50%; float:right;">
	<ol>
		<c:forEach items="${goalLists }" var="row" varStatus="status" >
				<li>골 : ${row.goalname } 어시 : ${row.assistname }</li>
		</c:forEach>
	</ol>
</div> --%>
<div style="overflow-y:scroll; width:300px; height:100px; padding:4px; border:1 solid #000000;display:inline; float:right;">
   <table>
   	<c:forEach items="${goalLists }" var="row" varStatus="status" >
        <tr>
        	<th>${status.count }.</th>
            <th>골 :</th>
            <th>${row.goalname }</th>
            <th>어시 :</th>
            <th>${row.assistname }</th>
        </tr>
       </c:forEach>
    </table>
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
	   
	   $("#button3").click(function () { 
	   		 $( "#score" ).toggle( "fold", '', 500 );
	       });  
	   
       // run the currently selected effect
       function runEffect() {
         // get effect type from
    
         // Most effect types need no options passed by default
        
    
         // Run the effect
         $( "#effect" ).toggle("slide", '', 500 ); 
       };
       
       
    
       // Set effect from select menu value
       $( "#button" ).on( "click", function() {
         runEffect();
       });
     } );
</script>
</html>