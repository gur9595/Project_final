<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<link href="./../resources/css/search.css" rel="stylesheet"	type="text/css" media="all">
<html>
<%
request.setCharacterEncoding("UTF-8");
%>
<body>
	<div class="hoc container clear">
	<center class="center">클럽 검색</center>
		<br /><br />
		<div class="one_half first">
			<div class="s007">
			  <form method="get">
		        <div class="inner-form">
		          <div class="basic-search">
		            <div class="input-field">
		              <div class="icon-wrap">
		                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20">
		                  <path d="M18.869 19.162l-5.943-6.484c1.339-1.401 2.075-3.233 2.075-5.178 0-2.003-0.78-3.887-2.197-5.303s-3.3-2.197-5.303-2.197-3.887 0.78-5.303 2.197-2.197 3.3-2.197 5.303 0.78 3.887 2.197 5.303 3.3 2.197 5.303 2.197c1.726 0 3.362-0.579 4.688-1.645l5.943 6.483c0.099 0.108 0.233 0.162 0.369 0.162 0.121 0 0.242-0.043 0.338-0.131 0.204-0.187 0.217-0.503 0.031-0.706zM1 7.5c0-3.584 2.916-6.5 6.5-6.5s6.5 2.916 6.5 6.5-2.916 6.5-6.5 6.5-6.5-2.916-6.5-6.5z"></path>
		                </svg>
		              </div>
		              <input id="search" type="text" placeholder="클럽명 입력" />
		          </div>
		          <div class="advance-search">
		            <span class="desc">세부 검색</span>
		            <div class="row">
		              <div class="input-field">
		                <div class="input-select">
		                  <select data-trigger="" class="form-control" name="choices-single-defaul">
		                    <option placeholder="" value="">---지역구---</option>
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
		              </div>
		              <div class="input-field">
		                <div class="input-select">
		                  <select data-trigger="" class="form-control" name="choices-single-defaul">
		                    <option placeholder="" value="">---실력---</option>
		                    <option value="h">상</option>
		                    <option value="m">중</option>
		                    <option value="l">하</option>
		                  </select>
		                </div>
		              </div>
		            </div>
		            <div class="row second">
		              <div class="input-field">
		                <div class="input-select">
		                  <select data-trigger="" class="form-control" name="choices-single-defaul">
		                    <option placeholder="" value="">---성별---</option>
		                    <option>남자</option>
		                    <option>여자</option>
		                    <option>혼성</option>
		                  </select>
		                </div>
		              </div>
		              <div class="input-field">
		                <div class="input-select">
		                  <select data-trigger="" class="form-control" name="choices-single-defaul">
		                    <option placeholder="" value="">---나이대---</option>
		                    <option>장년부</option>
		                    <option>청년부</option>
		                    <option>청소년부</option>
		                    <option>유소년부</option>
		                  </select>
		                </div>
		              </div>
		            </div>
		            <div class="row third">
		              <div class="input-field">
		                <input type="submit" class="btn-search" value="검색"></button>
		              </div>
		            </div>
		          </div>
		        </div>
		      </form>
			</div>
		</div>
	</div>
	<div class="one_half">
		<table class="club_list">
			<tr>
				<td class="t1"></td>
				<td>팀명</td>
				<td class="t2">실력</td>
				<td class="t3">나이대</td>
				<td class="t2">성별</td>
				<td class="t4">활동지역</td>
				<td>입단</td>
			</tr>
			<!-- 이거 반복 (글씨 색)  -->
			<tr>
				<td class="tcol">1</td>
				<td class="tname">
					<img src="./../resources/img/emb1.png" alt="" />
					브라질
				</td>
				<td class="tcol">상상</td>
				<td class="tcol">20대</td>
				<td class="tcol">남자</td>
				<td class="tcol">금천구</td>
				<td><button type="button" class="btn" data-dismiss="modal"> 입단 </button></td>
			</tr>
			
			<tr>
				<td>2</td>
				<td>
					<img src="./../resources/img/emb2.png" alt="" />
					도르트문트
				</td>
				<td>중중</td>
				<td>30대</td>
				<td>혼성</td>
				<td>구로구</td>
				<td><button type="button" class="btn" data-dismiss="modal"> 입단 </button></td>
			</tr>
			<tr>
				<td>3</td>
				<td>
					<img src="./../resources/img/emb3.png" alt="" />
					첼시
				</td>
				<td>하하</td>
				<td>40대</td>
				<td>여자</td>
				<td>중구</td>
				<td><button type="button" class="btn" data-dismiss="modal"> 입단 </button></td>
			</tr>
			<tr>
				<td>4</td>
				<td>
					<img src="./../resources/img/emb1.png" alt="" />
					브라질
				</td>
				<td>하하</td>
				<td>20대</td>
				<td>남자</td>
				<td>금천구</td>
				<td><button type="button" class="btn" data-dismiss="modal"> 입단 </button></td>
			</tr>
			<tr>
				<td>5</td>
				<td>
					<img src="./../resources/img/emb2.png" alt="" />
					도르트문트
				</td>
				<td>하하</td>
				<td>20대</td>
				<td>남자</td>
				<td>금천구</td>
				<td><button type="button" class="btn" data-dismiss="modal"> 입단 </button></td>
			</tr>
			<tr>
				<td>6</td>
				<td>
					<img src="./../resources/img/emb3.png" alt="" />
					첼시
				</td>
				<td>하하</td>
				<td>20대</td>
				<td>남자</td>
				<td>금천구</td>
				<td><button type="button" class="btn" data-dismiss="modal"> 입단 </button></td>
			</tr>
			<tr>
				<td>7</td>
				<td>
					<img src="./../resources/img/emb1.png" alt="" />
					브라질
				</td>
				<td>하하</td>
				<td>20대</td>
				<td>남자</td>
				<td>금천구</td>
				<td><button type="button" class="btn" data-dismiss="modal"> 입단 </button></td>
			</tr>
			<tr>
				<td>8</td>
				<td>
					<img src="./../resources/img/emb2.png" alt="" />
					도르트문트
				</td>
				<td>하하</td>
				<td>20대</td>
				<td>남자</td>
				<td>금천구</td>
				<td><button type="button" class="btn" data-dismiss="modal"> 입단 </button></td>
			</tr>
			<tr>
				<td>9</td>
				<td>
					<img src="./../resources/img/emb3.png" alt="" />
					첼시
				</td>
				<td>하하</td>
				<td>20대</td>
				<td>남자</td>
				<td>금천구</td>
				<td><button type="button" class="btn" data-dismiss="modal"> 입단 </button></td>
			</tr>
			<tr>
				<td>10</td>
				<td>
					<img src="./../resources/img/emb1.png" alt="" />
					브라질
				</td>
				<td>하하</td>
				<td>20대</td>
				<td>남자</td>
				<td>금천구</td>
				<td><button type="button" class="btn" data-dismiss="modal"> 입단 </button></td>
			</tr>
		</table>
	</div>
</body>
<script src="./../resources/js/choices.js"/>
</html>