<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<%
request.setCharacterEncoding("UTF-8");
%>
<link href="./../resources/css/rank.css" rel="stylesheet" type="text/css" media="all">
<body>
<div class="hoc container clear" style="max-width:1300px;">
	<div class="sub--tabs--wrapper">
        <div class="sub--tabs--container">
            <div class="card--category">
                <ul>
                    <li>
                        <a :class="{ 'is--selected': season_id == 1 && pageType === 'ranks' }" href="javascript:">
                           	전체 랭킹
                        </a>
                    </li>
                    <li>
                        <a :class="{ 'is--selected': season_id == 2 && pageType === 'ranks' }" href="javascript:">
                            구별 랭킹
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    
    <div class="card-wrapper">
        <div class="card--container" style="max-width:1300px;">
                <div class="card--content" v-if="loaded">
                    <div class="list--top-team-rank">
                        <ul>
                        	<c:forEach items="${lists }" var="row" varStatus="status" end="2" >
		                           <li class="list--item__flex" onclick="javascript:openClubView(${row.c_idx})">
		                               <p class="item-rank">${status.count }</p>
		                               <div class="list--team">
		                                   <span class="rankEmb"><img class="rankEmb" src="./../resources/uploadsFile/${row.c_emb }" alt="" style="height:80px; max-width:none; width:auto;"/></span>
		                                   <a :href="rank.team_link">
		                                       <p class="item-name">${row.c_name }</p>
		                                       <p class="item-stats">매치 ${row.matches }회,승률 ${row.winRate }%</p>
		                                   </a>
		                               </div>
		                               <div class="list--stats">
		                              		승점 &nbsp;
		                                   <p class="list--stats--item stared">${row.points }</p>
		                               </div>
		                           </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="list--team-rank">
                        <ul>
                            <div class="list--index__flex">
                                <div class="list--team">
                                    <!-- <p class="item-rank">순위/팀</p> -->
                                </div>
                                <div class="list--stats">
                                    <p class="list--stats--item">매치</p>
                                    <p class="list--stats--item">승률</p>
                                    <p class="list--stats--item is--show">승</p>
                                    <p class="list--stats--item is--show">무</p>
                                    <p class="list--stats--item stared">P</p>
                                </div>
                            </div>
                            <c:forEach items="${lists }" var="row" varStatus="status" begin="3">
		                            <li class="list--item__flex" onclick="javascript:openClubView(${row.c_idx})">
		                                <div class="list--team">
		                                    <p class="item-rank">${status.count + 3 }</p>
		                                    <span class="rankEmb2"><img class="myClubEmb" src="./../resources/uploadsFile/${row.c_emb }" alt="" /></span>
		                                    <a :href="rank.team_link"><p class="item-name">${row.c_name }</p></a>
		                                </div>
		                                <div class="list--stats">
		                                    <img :src="icDiv(rank.division)">
		                                    <p class="list--stats--item">${row.matches }회</p>
		                                    <p class="list--stats--item">${row.winRate }%</p>
		                                    <p class="list--stats--item is--show">${row.wins }</p>
		                                    <p class="list--stats--item is--show">${row.draws }</p>
		                                    <p class="list--stats--item stared">${row.points }</p>
		                                </div>
		                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
        </div>
    </div>
</div>
</body>
<script>
	function openClubView(c_idx){
		window.open("../club/clubView.do?c_idx="+c_idx, '_blank',
				"width=1500,height=800, toolbar=no, menubar=no, resizable=no");
	}
</script>
</html>