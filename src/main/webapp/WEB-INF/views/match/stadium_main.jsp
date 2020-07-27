<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<meta charset="utf-8">
<% 
   String defaultKeyword = "축구장";
%>
<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=36334fae12132b7c9a4b0c870101ef91&libraries=services"></script>
<script>
// --------------------------Kakao Map API START-------------------------------- //

// 마커를 담을 배열입니다
var markers = [];

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption);

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

//위도 및 경도
var latitude, longitude;

//현재위치
var locPosition;

// HTML5의 geolocation으로 사용할 수 있는지 확인합니다
if(navigator.geolocation) {
   // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도
        
        // 접속위치
        locPosition = new kakao.maps.LatLng(lat, lon);
        
      // 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
       searchAddrFromCoords(locPosition, displayCenterInfo);
   });
}

function searchAddrFromCoords(coords, callback) {
    // 좌표로 행정동 주소 정보를 요청합니다
    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
}

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

//지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
function displayCenterInfo(result, status) {
    if (status === kakao.maps.services.Status.OK) {
        var gu;
        var defaultKeyword;

        for(var i = 0; i < result.length; i++) {
            // 행정동의 region_type 값은 'H' 이므로
            if (result[i].region_type === 'H') {
               gu = result[i].region_2depth_name;
               gu += " " + "<%=defaultKeyword%>";
                break;
            }
        }
        
        defaultKeyword = gu + "<%=defaultKeyword%>";
        
         //구장 예약 클릭시 첫 실행은 디폴트 키워드로 진행한다. 
        ps.keywordSearch(defaultKeyword, placesSearchCB);
    }    
}

// 키워드로 장소를 검색합니다
//searchPlaces2();

//선택된 셀렉트 박스로 필터링 결과값을 보여준다.
function searchPlaces1() {
   
   var gugunVal = $('#select-gugun option:selected').val();
   var typeVal = $('#select-s-type option:selected').val();
   
   if(gugunVal==""){
      alert("지역을 선택해주세요.");
   }
   else{
      if(typeVal!=""){
         //console.log(gugunVal + typeVal);
         ps.keywordSearch(gugunVal + " " + typeVal, placesSearchCB);
         return;
      }
      //console.log(gugunVal);
      ps.keywordSearch(gugunVal, placesSearchCB);
   }
   
}


// 키워드 검색을 요청하는 함수입니다
function searchPlaces2() {
    var searchKeyword = document.getElementById('keyword').value;
    
    if (!searchKeyword.replace(/^\s+|\s+$/g, '')) {
        alert('키워드를 입력해주세요!');
        return;
    }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch(searchKeyword, placesSearchCB);
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces(data);

        // 페이지 번호를 표출합니다
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않습니다.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}

// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {

    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    // 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {

        // 마커를 생성하고 지도에 표시합니다
        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i), 
            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);

        // 마커와 검색결과 항목에 mouseover 했을때
        // 해당 장소에 인포윈도우에 장소명을 표시합니다
        // mouseout 했을 때는 인포윈도우를 닫습니다
        (function(marker, title) {
            kakao.maps.event.addListener(marker, 'mouseover', function() {
                displayInfowindow(marker, title);
            });

            kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });

            itemEl.onmouseover =  function () {
                displayInfowindow(marker, title);
            };

            itemEl.onmouseout =  function () {
                infowindow.close();
            };
        })(marker, places[i].place_name);

        fragment.appendChild(itemEl);
    }

    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
}

// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {

    var el = document.createElement('li'),
    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                '<div class="info">' +
                '   <h5>' + places.place_name + '</h5>';

    if (places.road_address_name) {
        itemStr += '    <span>' + places.road_address_name + '</span>' +
                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
    } else {
        itemStr += '    <span>' +  places.address_name  + '</span>'; 
    }
                 
      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                '</div>';           

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, idx, title) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "javascript:void(0);";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}

// 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}
// --------------------------Kakao Map API END-------------------------------- //
</script>

<!-- 스타일태그 -->
<style>
   .main{
      padding: 10px;
      overflow: hidden;
      width: 100%;
      height: 100%;
   }
   .title{
      font-size: 2em;
      text-align: center;
      
   }
   .search-wrap{
      text-align: center;
   }
   .map{
      border : 0px solid black;
      height: 100%; position: relative; overflow: hidden;
   }
   .stadium-option{
      height : 40px;
      width: 49%;
      float: left;
      font-size: 1.2em;
      border-color: black;
   }
   .tbl{
      text-align: left;
      width: 100%;
   }
   .tbl tr td{
      border : 0px solid black;
      padding : 0;
      height: 50px;
      font-weight : bold;
      color: black;
      
   }
   .search-button{
      border: none;
      background-color: #2c3e50;
      width: 100%;
      height: 80%;
      color: white;
   }
   .search-text{
      border: 1px solid black;
      padding-left : 10px;
      width: 99.4%;
      height: 80%;
      font-size: 1.2em;
   }
   .search-text::placeholder{
      color: #BDBDBD;
   }
</style>

<body id="top">
<div class="wrapper row4 bg_white" id="stadium">
   <!-- 하단 전체 영역 -->
   <main class="main container clear" style="border: 0px solid black;">
      <!-- 타이틀 영역 -->
      <div class="title">
         경기장 검색
      </div>
      
      <!-- 검색 영역 START -->
      <div class="search-wrap">
         <table class="tbl">
            <tr>
               <td>
                  <select class="stadium-option mr-3" data-trigger="" id="select-gugun">
                          <option value="">지역선택</option>
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
                        <select class="stadium-option" id="select-s-type">
                           <option value="">유형선택</option>
                           <option value="축구">축구</option>
                           <option value="풋살">풋살</option>
                        </select>
               </td>
               <td style="width: 100px;">
                  <button type="button" id="btn1" class="search-button" onclick="searchPlaces1();">검색</button>
               </td>
            </tr>
            <tr>
               <td>
                  <input type="text" value="" id="keyword" class="search-text" placeholder="경기장 이름으로 찾기" />
               </td>
               <td>
                  <button type="button" id="btn2" class="search-button" onclick="searchPlaces2();">검색</button>
               </td>
            </tr>
         </table>
      </div>
      <!-- 검색 영역 END -->
      
      <!-- 맵 영역 -->
      <div style="border: 0px solid black; overflow: hidden;">
         <div class="one_half first">
            <div class="map_wrap">
               <div id="map" class="map"></div>
            </div>
         </div>
         <div class="one_half mb-3">
            <div class="map_wrap">
               <div id="menu_wrap" class="map-list bg_white" style="width: 100%; 
                  height: 100%; border: 0px solid black; margin-left: 0;">
                  <!-- 필터링 결과 출력  -->                  
                  <ul id="placesList"></ul>
                  <div id="pagination"></div>
               </div>
            </div>   
         </div>
      </div>
      
      <!-- / main body -->
      <div class="clear"></div>
   </main>
</div>
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="./../resources/js/jquery.min.js"></script>
<script src="./../resources/js/jquery.backtotop.js"></script>
</body>
</html>