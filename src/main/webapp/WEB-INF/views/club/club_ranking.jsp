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
                        <a :class="{ 'is--selected': season_id == 1 && pageType === 'ranks' }" href="/league/l/1/s/1/ranks">
                            남자 랭킹
                        </a>
                    </li>
                    <li>
                        <a :class="{ 'is--selected': season_id == 2 && pageType === 'ranks' }" href="/league/l/2/s/2/ranks">
                            여자 랭킹
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
                            <li class="list--item__flex">
                                <p class="item-rank">1</p>
                                <div class="list--team">
                                    <span class="rankEmb"><img class="rankEmb" src="./../resources/img/emb1.png" alt="" /></span>
                                    <a :href="rank.team_link">
                                        <p class="item-name">덕래팀</p>
                                        <p class="item-stats">우승 11회, 승률 100%</p>
                                    </a>
                                </div>
                                <div class="list--stats">
                               		승점
                                    <!-- <img :src="icDiv(rank.division)"> -->
                                    <p class="list--stats--item stared">1000</p>
                                </div>
                            </li>
                            <li class="list--item__flex" >
                                <p class="item-rank">2</p>
                                <div class="list--team">
                                    <span class="rankEmb"><img class="rankEmb" src="./../resources/img/emb2.png" alt="" /></span>
                                    <a :href="rank.team_link">
                                        <p class="item-name">덕래팀2</p>
                                        <p class="item-stats">우승 1회, 승률 50%</p>
                                    </a>
                                </div>
                                <div class="list--stats">
                                	승점
                                    <!-- <img :src="icDiv(rank.division)"> -->
                                    <p class="list--stats--item stared">500</p>
                                </div>
                            </li>
                            <li class="list--item__flex" >
                                <p class="item-rank">3</p>
                                <div class="list--team">
                                    <span class="rankEmb"><img class="rankEmb" src="./../resources/img/emb3.png" alt="" /></span>
                                    <a :href="rank.team_link">
                                        <p class="item-name">덕래팀3</p>
                                        <p class="item-stats">우승 1회, 승률 10%</p>
                                    </a>
                                </div>
                                <div class="list--stats">
                                	승점
                                    <!-- <img :src="icDiv(rank.division)"> -->
                                    <p class="list--stats--item stared">300</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="list--team-rank">
                        <ul>
                            <div class="list--index__flex">
                                <div class="list--team">
                                    <!-- <p class="item-rank">순위/팀</p> -->
                                </div>
                                <div class="list--stats">
                                    <p class="list--stats--item">Div</p>
                                    <p class="list--stats--item">우승</p>
                                    <p class="list--stats--item">승률</p>
                                    <p class="list--stats--item is--show">승</p>
                                    <p class="list--stats--item is--show">무</p>
                                    <p class="list--stats--item is--show">패</p>
                                    <p class="list--stats--item stared">P</p>
                                </div>
                            </div>
                            <li class="list--item__flex">
                                <div class="list--team">
                                    <p class="item-rank">4</p>
                                    <span class="rankEmb2"><img class="myClubEmb" src="./../resources/img/emb2.png" alt="" /></span>
                                    <a :href="rank.team_link"><p class="item-name">상혁팀</p></a>
                                </div>
                                <div class="list--stats">
                                    <img :src="icDiv(rank.division)">
                                    <p class="list--stats--item">3</p>
                                    <p class="list--stats--item">60%</p>
                                    <p class="list--stats--item is--show">20</p>
                                    <p class="list--stats--item is--show">2</p>
                                    <p class="list--stats--item is--show">40</p>
                                    <p class="list--stats--item stared">180</p>
                                </div>
                            </li>
                            <li class="list--item__flex">
                                <div class="list--team">
                                    <p class="item-rank">5</p>
                                    <span class="rankEmb2"><img class="myClubEmb" src="./../resources/img/emb2.png" alt="" /></span>
                                    <a :href="rank.team_link"><p class="item-name">상혁팀</p></a>
                                </div>
                                <div class="list--stats">
                                    <img :src="icDiv(rank.division)">
                                    <p class="list--stats--item">3</p>
                                    <p class="list--stats--item">60%</p>
                                    <p class="list--stats--item is--show">20</p>
                                    <p class="list--stats--item is--show">2</p>
                                    <p class="list--stats--item is--show">40</p>
                                    <p class="list--stats--item stared">180</p>
                                </div>
                            </li>
                            <li class="list--item__flex">
                                <div class="list--team">
                                    <p class="item-rank">6</p>
                                    <span class="rankEmb2"><img class="myClubEmb" src="./../resources/img/emb2.png" alt="" /></span>
                                    <a :href="rank.team_link"><p class="item-name">상혁팀</p></a>
                                </div>
                                <div class="list--stats">
                                    <img :src="icDiv(rank.division)">
                                    <p class="list--stats--item">3</p>
                                    <p class="list--stats--item">60%</p>
                                    <p class="list--stats--item is--show">20</p>
                                    <p class="list--stats--item is--show">2</p>
                                    <p class="list--stats--item is--show">40</p>
                                    <p class="list--stats--item stared">180</p>
                                </div>
                            </li>
                            <li class="list--item__flex">
                                <div class="list--team">
                                    <p class="item-rank">7</p>
                                    <span class="rankEmb2"><img class="myClubEmb" src="./../resources/img/emb2.png" alt="" /></span>
                                    <a :href="rank.team_link"><p class="item-name">상혁팀</p></a>
                                </div>
                                <div class="list--stats">
                                    <img :src="icDiv(rank.division)">
                                    <p class="list--stats--item">3</p>
                                    <p class="list--stats--item">60%</p>
                                    <p class="list--stats--item is--show">20</p>
                                    <p class="list--stats--item is--show">2</p>
                                    <p class="list--stats--item is--show">40</p>
                                    <p class="list--stats--item stared">180</p>
                                </div>
                            </li>
                            <li class="list--item__flex">
                                <div class="list--team">
                                    <p class="item-rank">8</p>
                                    <span class="rankEmb2"><img class="myClubEmb" src="./../resources/img/emb2.png" alt="" /></span>
                                    <a :href="rank.team_link"><p class="item-name">상혁팀</p></a>
                                </div>
                                <div class="list--stats">
                                    <img :src="icDiv(rank.division)">
                                    <p class="list--stats--item">3</p>
                                    <p class="list--stats--item">60%</p>
                                    <p class="list--stats--item is--show">20</p>
                                    <p class="list--stats--item is--show">2</p>
                                    <p class="list--stats--item is--show">40</p>
                                    <p class="list--stats--item stared">180</p>
                                </div>
                            </li>
                            <li class="list--item__flex">
                                <div class="list--team">
                                    <p class="item-rank">9</p>
                                    <span class="rankEmb2"><img class="myClubEmb" src="./../resources/img/emb2.png" alt="" /></span>
                                    <a :href="rank.team_link"><p class="item-name">상혁팀</p></a>
                                </div>
                                <div class="list--stats">
                                    <img :src="icDiv(rank.division)">
                                    <p class="list--stats--item">3</p>
                                    <p class="list--stats--item">60%</p>
                                    <p class="list--stats--item is--show">20</p>
                                    <p class="list--stats--item is--show">2</p>
                                    <p class="list--stats--item is--show">40</p>
                                    <p class="list--stats--item stared">180</p>
                                </div>
                            </li>
                            <li class="list--item__flex">
                                <div class="list--team">
                                    <p class="item-rank">10</p>
                                    <span class="rankEmb2"><img class="myClubEmb" src="./../resources/img/emb2.png" alt="" /></span>
                                    <a :href="rank.team_link"><p class="item-name">상혁팀</p></a>
                                </div>
                                <div class="list--stats">
                                    <img :src="icDiv(rank.division)">
                                    <p class="list--stats--item">3</p>
                                    <p class="list--stats--item">60%</p>
                                    <p class="list--stats--item is--show">20</p>
                                    <p class="list--stats--item is--show">2</p>
                                    <p class="list--stats--item is--show">40</p>
                                    <p class="list--stats--item stared">180</p>
                                </div>
                            </li>
                            <li class="list--item__flex">
                                <div class="list--team">
                                    <p class="item-rank">11</p>
                                    <span class="rankEmb2"><img class="myClubEmb" src="./../resources/img/emb2.png" alt="" /></span>
                                    <a :href="rank.team_link"><p class="item-name">상혁팀</p></a>
                                </div>
                                <div class="list--stats">
                                    <img :src="icDiv(rank.division)">
                                    <p class="list--stats--item">3</p>
                                    <p class="list--stats--item">60%</p>
                                    <p class="list--stats--item is--show">20</p>
                                    <p class="list--stats--item is--show">2</p>
                                    <p class="list--stats--item is--show">40</p>
                                    <p class="list--stats--item stared">180</p>
                                </div>
                            </li>
                            <li class="list--item__flex">
                                <div class="list--team">
                                    <p class="item-rank">12</p>
                                    <span class="rankEmb2"><img class="myClubEmb" src="./../resources/img/emb2.png" alt="" /></span>
                                    <a :href="rank.team_link"><p class="item-name">상혁팀</p></a>
                                </div>
                                <div class="list--stats">
                                    <img :src="icDiv(rank.division)">
                                    <p class="list--stats--item">3</p>
                                    <p class="list--stats--item">60%</p>
                                    <p class="list--stats--item is--show">20</p>
                                    <p class="list--stats--item is--show">2</p>
                                    <p class="list--stats--item is--show">40</p>
                                    <p class="list--stats--item stared">180</p>
                                </div>
                            </li>
                            <li class="list--item__flex">
                                <div class="list--team">
                                    <p class="item-rank">13</p>
                                    <span class="rankEmb2"><img class="myClubEmb" src="./../resources/img/emb2.png" alt="" /></span>
                                    <a :href="rank.team_link"><p class="item-name">상혁팀</p></a>
                                </div>
                                <div class="list--stats">
                                    <img :src="icDiv(rank.division)">
                                    <p class="list--stats--item">3</p>
                                    <p class="list--stats--item">60%</p>
                                    <p class="list--stats--item is--show">20</p>
                                    <p class="list--stats--item is--show">2</p>
                                    <p class="list--stats--item is--show">40</p>
                                    <p class="list--stats--item stared">180</p>
                                </div>
                            </li>
                            <li class="list--item__flex">
                                <div class="list--team">
                                    <p class="item-rank">14</p>
                                    <span class="rankEmb2"><img class="myClubEmb" src="./../resources/img/emb2.png" alt="" /></span>
                                    <a :href="rank.team_link"><p class="item-name">상혁팀</p></a>
                                </div>
                                <div class="list--stats">
                                    <img :src="icDiv(rank.division)">
                                    <p class="list--stats--item">3</p>
                                    <p class="list--stats--item">60%</p>
                                    <p class="list--stats--item is--show">20</p>
                                    <p class="list--stats--item is--show">2</p>
                                    <p class="list--stats--item is--show">40</p>
                                    <p class="list--stats--item stared">180</p>
                                </div>
                            </li>
                            
                        </ul>
                    </div>
                </div>
        </div>
    </div>
</div>
</body>
</html>