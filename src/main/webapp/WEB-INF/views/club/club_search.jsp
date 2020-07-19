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
		<div class="one_half first">
			<div class="s007">
			  <form>
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
		                  <select data-trigger="" name="choices-single-defaul">
		                    <option placeholder="" value="">지역구</option>
		                    <option>ACCESSORIES</option>
		                    <option>SUBJECT B</option>
		                    <option>SUBJECT C</option>
		                  </select>
		                </div>
		              </div>
		              <div class="input-field">
		                <div class="input-select">
		                  <select data-trigger="" name="choices-single-defaul">
		                    <option placeholder="" value="">COLOR</option>
		                    <option>GREEN</option>
		                    <option>SUBJECT B</option>
		                    <option>SUBJECT C</option>
		                  </select>
		                </div>
		              </div>
		              <div class="input-field">
		                <div class="input-select">
		                  <select data-trigger="" name="choices-single-defaul">
		                    <option placeholder="" value="">SIZE</option>
		                    <option>SIZE</option>
		                    <option>SUBJECT B</option>
		                    <option>SUBJECT C</option>
		                  </select>
		                </div>
		              </div>
		            </div>
		            <div class="row second">
		              <div class="input-field">
		                <div class="input-select">
		                  <select data-trigger="" name="choices-single-defaul">
		                    <option placeholder="" value="">SALE</option>
		                    <option>SALE</option>
		                    <option>SUBJECT B</option>
		                    <option>SUBJECT C</option>
		                  </select>
		                </div>
		              </div>
		              <div class="input-field">
		                <div class="input-select">
		                  <select data-trigger="" name="choices-single-defaul">
		                    <option placeholder="" value="">TIME</option>
		                    <option>THIS WEEK</option>
		                    <option>SUBJECT B</option>
		                    <option>SUBJECT C</option>
		                  </select>
		                </div>
		              </div>
		              <div class="input-field">
		                <div class="input-select">
		                  <select data-trigger="" name="choices-single-defaul">
		                    <option placeholder="" value="">TYPE</option>
		                    <option>TYPE</option>
		                    <option>SUBJECT B</option>
		                    <option>SUBJECT C</option>
		                  </select>
		                </div>
		              </div>
		            </div>
		            <div class="row third">
		              <div class="input-field">
		                <button class="btn-search">Search</button>
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
			<tr>
				<td>1</td>
				<td>
					<img src="./../resources/img/emb1.png" alt="" />
					브라질
				</td>
				<td>상상</td>
				<td>20대</td>
				<td>남자</td>
				<td>금천구</td>
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