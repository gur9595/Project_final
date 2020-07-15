<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>B-PRO</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="./../resources/css/layout.css" rel="stylesheet" type="text/css" media="all">
<link href="./../resources/css/club.css" rel="stylesheet" /> 
</head>
<body id="top"> 
<!--top-->
<%@ include file="./../include/top.jsp"%>
<!--각 페이지 이미지-->
<div class="bgded overlay" style="background-image:url('../images/demo/backgrounds/01.png');">
  <div id="breadcrumb" class="hoc clear"> 
    <!--이미지 위에 글쓰는곳-->
  </div>
</div>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <div class="content"> 
    
    	<!-- 클럽 검색 -->
        <div class="two_third first">
			
          <!-- 검색폼 -->
          <div class="s009">
            <form>
              <div class="inner-form">
                <div class="basic-search">
                  <div class="input-field">
                    <input id="search" type="text" placeholder="클럽명 입력" />
                    <div class="icon-wrap">
                      <svg class="svg-inline--fa fa-search fa-w-16" fill="#ccc" aria-hidden="true" data-prefix="fas" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                        <path d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path>
                      </svg>
                    </div>
                  </div>
                </div>
                <div class="advance-filter" id="filter">
                  <span class="desc">FILTER</span>
                </div>
                <div class="advance-search" id="advance-search">
                  <div class="row">
                    <div class="input-field">
                      <div class="input-select">
                        <select data-trigger="" name="choices-single-defaul">
	                        <option placeholder="" value="">활동지역</option>
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
                    </div>
                    <div class="input-field">
                      <div class="input-select">
                        <select data-trigger="" name="choices-single-defaul">
                          <option placeholder="" value="">나이대</option>
                          <option>유소년</option>
                          <option>청소년</option>
                          <option>20대</option>
                          <option>30대</option>
                          <option>40대</option>
                          <option>장년</option>
                        </select>
                      </div>
                    </div>
                    <div class="input-field">
                      <div class="input-select">
                        <select data-trigger="" name="choices-single-defaul">
                          <option placeholder="" value="">팀 종류</option>
                          <option>축구</option>
                          <option>풋살</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="row second">
                    <div class="input-field">
                      <div class="input-select">
                        <select data-trigger="" name="choices-single-defaul">
                          <option placeholder="" value="">실력</option>
                          <option>하하</option>
                          <option>하중</option>
                          <option>하상</option>
                          <option>중하</option>
                          <option>중중</option>
                          <option>중상</option>
                          <option>상하</option>
                          <option>상중</option>
                          <option>상상</option>
                        </select>
                      </div>
                    </div>
                    <div class="input-field">
                      <div class="input-select">
                        <select data-trigger="" name="choices-single-defaul">
                          <option placeholder="" value="">Time</option>
                          <option>Last time</option>
                          <option>Today</option>
                          <option>This week</option>
                          <option>This month</option>
                          <option>This year</option>
                        </select>
                      </div>
                    </div>
                    <div class="input-field">
                      <div class="input-select">
                        <select data-trigger="" name="choices-single-defaul">
                          <option placeholder="" value="">Type</option>
                          <option>Subject b</option>
                          <option>Subject c</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="row third">
                    <div class="input-field">
                      <div class="result-count"></div>
                      <div class="group-btn">
                        <button class="btn-delete" id="delete">RESET</button>
                        <button class="btn-search">SEARCH</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </div>
              
          <!-- 결과창 -->
          <div class="clubDiv">
            <table class="clubList" border="1">
              <tr>
                <td width="25%">클럽 엠블럼</td>
                <td width="30%">클럽명</td>
                <td width="15%">랭킹</td>
                <td width="15%">팀 종류</td>
                <td width="15%">활동지역</td>
              </tr>
              <tr>
                <td><img class="emblem" src="./../resources/img/emb1.png" alt=""></td>
                <td>브라질</td>
                <td>1342</td> 
                <td>축구</td>
                <td>중구</td> 
              </tr>
              <tr>
                <td><img class="emblem" src="./../resources/img/emb2.png" alt=""> &nbsp;</td>
                <td>도르트문트</td>
                <td>18000</td>
                <td>축구</td>
                <td>금천구</td>
              </tr>
              <tr>
                <td><img class="emblem" src="./../resources/img/emb3.png" alt=""> &nbsp;</td>
                <td>첼시</td>
                <td>30000</td>
                <td>풋살</td>
                <td>금천구</td>
              </tr>
              <tr>
                <td><img class="emblem" src="./../resources/img/emb1.png" alt=""></td>
                <td>브라질</td>
                <td>1342</td> 
                <td>축구</td>
                <td>중구</td> 
              </tr>
              <tr>
                <td><img class="emblem" src="./../resources/img/emb2.png" alt=""> &nbsp;</td>
                <td>도르트문트</td>
                <td>18000</td>
                <td>축구</td>
                <td>금천구</td>
              </tr>
              <tr>
                <td><img class="emblem" src="./../resources/img/emb3.png" alt=""> &nbsp;</td>
                <td>첼시</td>
                <td>30000</td>
                <td>풋살</td>
                <td>금천구</td>
              </tr>
              <tr>
                <td><img class="emblem" src="./../resources/img/emb1.png" alt=""></td>
                <td>브라질</td>
                <td>1342</td> 
                <td>축구</td>
                <td>중구</td> 
              </tr>
              <tr>
                <td><img class="emblem" src="./../resources/img/emb2.png" alt=""> &nbsp;</td>
                <td>도르트문트</td>
                <td>18000</td>
                <td>축구</td>
                <td>금천구</td>
              </tr>
              <tr>
                <td><img class="emblem" src="./../resources/img/emb3.png" alt=""> &nbsp;</td>
                <td>첼시</td>
                <td>30000</td>
                <td>풋살</td>
                <td>금천구</td>
              </tr>
            </table>
          </div>
            

        </div>
        <!-- 내 클럽 & 클럽 랭킹 -->
        <div class="one_third">

          <div class="myClub">
            <table border="1">
              <tr>
                <td colspan="3">내 클럽</td>
              </tr>
              <tr>
                <td style="width: 10%;">1</td>
                <td><img class="myEmblem" src="./../resources/img/emb2.png" alt=""> &nbsp;도르트문트</td>
              </tr>
              <tr>
                <td>2</td>
                <td><img class="myEmblem" src="./../resources/img/emb2.png" alt=""> &nbsp;도르트문트</td>
              </tr>
              <tr>
                <td>3</td>
                <td><img class="myEmblem" src="./../resources/img/emb2.png" alt=""> &nbsp;도르트문트</td>
              </tr>
              <tr>
                <td>4</td>
                <td></td>
              </tr>
              <tr>
                <td>5</td>
                <td></td>
              </tr>
            </table>
          </div>

          <div class="clubRanking">
            <table border="1">
              <tr>
                <td colspan="2">랭킹
                </td>
              </tr> 
              <tr>
                <td colspan="2">
                  <div class="input-select">
                    <select name="district" id="district" style="height: 50px;">
                      <option value="금천구">금천구</option>
                      <option value="금천구">구로구</option>
                      <option value="금천구">중구</option>
                    </select>
                  </div>
                </td>
              </tr>
              <tr>
                <td style="width: 10%;">1</td>
                <td><img class="myEmblem" src="./../resources/img/emb2.png" alt=""> &nbsp;도르트문트</td>
              </tr>
              <tr>
                <td>2</td>
                <td><img class="myEmblem" src="./../resources/img/emb2.png" alt=""> &nbsp;도르트문트</td>
              </tr>
              <tr>
                <td>3</td>
                <td><img class="myEmblem" src="./../resources/img/emb2.png" alt=""> &nbsp;도르트문트</td>
              </tr>
              <tr>
                <td>4</td>
                <td></td>
              </tr>
              <tr>
                <td>5</td>
                <td></td>
              </tr>
              <tr>
                <td>6</td>
                <td></td>
              </tr>
              <tr>
                <td>7</td>
                <td></td>
              </tr>
              <tr>
                <td>8</td>
                <td></td>
              </tr>
              <tr>
                <td>9</td>
                <td></td>
              </tr>
              <tr>
                <td>10</td>
                <td></td>
              </tr>
            </table>
          </div>

        </div>
    </div>
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
<script src="./../resources/js/choices.js"></script>
</body>
</html>