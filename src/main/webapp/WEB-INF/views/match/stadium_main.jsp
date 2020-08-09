<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<meta charset="utf-8">
<% 
	String defaultKeyword = "축구";
%>
<script src="./../resources/js/jquery.min.js"></script>
<script src="./../resources/js/jquery.backtotop.js"></script>
<script src="./../resources/js/jquery.mobilemenu.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=36334fae12132b7c9a4b0c870101ef91&libraries=services"></script>
<script>
/* --------------------------Kakao Map API START-------------------------------- */
//※1. 첫 로드시 내 위치를 파악하여 맵 좌측 상단에 표기해준다.※

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
if (navigator.geolocation) {
	// GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        var lat = position.coords.latitude, // 위도
        	lng = position.coords.longitude; // 경도
        
        // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
        var locPosition = new kakao.maps.LatLng(lat, lng);
        
        // 마커를 표시합니다
        displayPlaces(locPosition);
        
        // 현재 지도 중심좌표를 주소로 검색해서 지도 좌측 상단에 표시합니다
        searchAddrFromCoords(locPosition, displayCenterInfo);
    }); 
} 
else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667);        
    
    displayPlaces(locPosition);
}


function searchAddrFromCoords(coords, callback){
	// 좌표로 행정동 주소 정보를 요청합니다.
	geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);
}


//지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
function displayCenterInfo(result, status) {
    if (status === kakao.maps.services.Status.OK) {
        
    	var userAddr = document.getElementById('userAddr');

        for(var i = 0; i < result.length; i++) {
            // 행정동의 region_type 값은 'H' 이므로
            if (result[i].region_type === 'H') {
            	userAddr.innerHTML = result[i].address_name;
                break;
            }
        }
    }    
}




//※2. 맵을 생성해준다.※

kakao.maps.disableHD();

var map = new kakao.maps.Map(document.getElementById('map'), { // 지도를 표시할div
	center: new kakao.maps.LatLng(33.450701, 126.570667) // 지도의 중심좌표(초기값)
});
//마커를 담을 배열입니다
var markers = [];

//검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({zIndex:-1});

//지도에 마커와 인포윈도우를 표시하는 함수입니다(뷰)
function displayPlaces(locPosition) {
	
	// 지도의 중심을 유저의 현재 위치로 설정해준다.
	//map.setCenter(locPosition);
	
	var listEl = document.getElementById('placesList'), 
	    menuEl = document.getElementById('menu_wrap'),
	    fragment = document.createDocumentFragment(), 
	    bounds = new kakao.maps.LatLngBounds(), 
	    listStr = '';
	
	// 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
	
    /* // 사용자의 위치를 표시하는 마커(고정)
    var marker = new kakao.maps.Marker({  
        position : locPosition,
        map : map // 마커가 지도 위에 표시되도록 설정합니다
    });
    
    // 맵 전체화면에 검색결과와 함께 내 위치까지 같이 보일 수 있도록 한다.
    bounds.extend(locPosition);
    
    // 유저의 인포윈도우
    var iwContent = '<div style="padding:5px; color:red;">내 위치</div>',
    	iwPosition = locPosition;
    
    var infowindowUser = new kakao.maps.InfoWindow({
    	zIndex : 999,
   		position : iwPosition,
   		content : iwContent
    });
    
 	// 마커 위에 인포윈도우를 표시합니다.(내 위치 인포윈도우는 삭제 예정)
 	// 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
    infowindowUser.open(map, marker); */
    
    // 시설을 맵에 표시
    var locations = [
    	<c:forEach items="${stadiumList}" var="row">
    		['${row.s_name}', '${row.s_lat}', '${row.s_lng}', 
    		 '${row.s_addr}', '${row.s_phone}', '${row.s_idx}'],
    	</c:forEach>
    ];
    
//----------------------------------for문 시작---------------------------------------    
	
	for(var i=0; i<locations.length; i++){
		
		var placePosition = new kakao.maps.LatLng(locations[i][1], locations[i][2])
		
		var marker = addMarker(placePosition, i);
		
		/* var marker = new kakao.maps.Marker({
			map : map,
			position : placePosition
		}); */
		
		var content = 
			'<div class="customInfo-wrap">'+
				'<div class="customInfo">' +
					locations[i][0] +
				'</div>' +
			'</div>';
		
		var overlay = new kakao.maps.CustomOverlay({
			content : content,
			position : marker.getPosition()
		});
		
		//마커 리스너
	 	kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(marker, overlay));
	    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(overlay));
	    kakao.maps.event.addListener(marker, 'click', makeClickListener(marker));
		
		// 검색 결과 항목 Element를 생성합니다
		var itemEl = getListItem(i, locations[i][0], locations[i][3], locations[i][4], locations[i][5]);
		
		// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);
		
		//목록 리스너
		itemEl.onmouseover = makeOverListener(marker, overlay);
		itemEl.onmouseout = makeOutListener(overlay);

        fragment.appendChild(itemEl);
    }//End of for
    
 	// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
    function makeOverListener(marker, overlay) {
        return function() {
        	// 마커 위에 인포윈도우를 표시합니다. 
        	// 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
            overlay.setMap(map, marker);
        };
    }

    // 인포윈도우를 닫는 클로저를 만드는 함수입니다 
    function makeOutListener(overlay) {
        return function() {
        	overlay.setMap(null);
        };
    }
    
    function makeClickListener(marker) {
    	return function() {
	    	map.setLevel(4);
	    	map.setCenter(marker.getPosition());
    	};
    }
    
//----------------------------------for문 끝---------------------------------------     
    
    // 결과가 없다면
    if(locations==0){
    	alert("검색결과를 찾을 수 없습니다");
    	$('#contents').load("stadiumMain.do");
    }
	
	// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
    
    // 전체보기 버튼
    $('#seeAllBtn').click(function(){
    	map.setBounds(bounds);
    });
		
}

//검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, s_name, s_locations, s_phone, s_idx) {

	var addrs = s_locations.split(" ");
	var dong = addrs[2];	
	
    var el = document.createElement('li'),
    itemStr =  '<div class="mapList">';
   	itemStr += '	<span class="markerbg marker_' + (index+1) + '"></span>' +
               '	<div class="info">' +
	           '		<span class="booking" onclick="booking('+ s_name +');">' + 
   							'<a href="../match/stadiumApply.do?s_idx=' + s_idx + '&dong=' + dong + 
   									'&s_name=' + s_name + '&s_addr=' + s_locations + '" style="color:blue; font-size:16px;">' 
   										+ s_name + '</a></span>';

	itemStr += '		<span>' + s_locations + '</span>';
                 
	itemStr += '		<span class="tel">' + s_phone  + '</span>' +
	           '	</div>';
    itemStr += '</div>';

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

//마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
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

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, overlay) {
	overlay.setMap(map, marker);
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
	.infoContent{
		position: relative;
		width: 50px;
		height: 50px;
		overflow : hidden;
		background:url('./../resources/img/match/customInfo.png') no-repeat;
		background-size : 100%;
		padding:15px 10px;
	}
	.main{
		padding: 10px;
		overflow: hidden;
		width: 100%;
		height: 100%;
	}
	.search-wrap{
		text-align: center;
	}
	.map{
		border : 0px solid black;
		height: 100%; position: relative; overflow: hidden;
	}
	.title{
		font-weight : bold;
		display : bloack;
		text-align: center;
	}
	.mapTopMenu{
		position:absolute; top:0px;
		z-index: 1;
		width: 100%;
		height: 40px;
	}
	.hAddr{
		background-color: black; color: white; z-index:1;
		opacity: 60%; height: 100%; width: 49.99%;
		line-height: 40px;
		text-align: center;
		float: left;
	}
	.seeAllBtn{
		border: none;
		width: 49.99%;
		height: 100%;
		color: white;
		float: left;
		background-color: #6799FF;
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
	table{border: none;}
	
	/* 커스텀 인포의 위치를
		마커에 맞추기 위해 css이용 */
	.customInfo-wrap{
		position: absolute;
		bottom: 20px;
		margin-bottom: 0px;
		
		/* 아래 두가지 요소로 컨텐츠의 길이에 상관없이 가운데 정렬을 유지한다 */
		left: 50%;
		transform: translate(-50%, -50%);
		
		text-align: center;
		font-size: 1.0em;
	}
	.customInfo{
		position: relative;
		width: 100%;
		height: 30px;
		border: 1px solid #6799FF;
		border-radius: 6px;
		background-color: white;
		padding: 5px;
		color: black;
	}
	.mapList{
		cursor: default;
	}
	.mapList:hover {
		background-color: #FFF2F2;
	}
	.booking{
		font-size: 1.3em; color: blue; cursor: pointer;
	}
	.booking:hover {
		text-decoration: underline;
	}
</style>

<body id="top">
<div class="wrapper row4 bg_white" id="stadium">
	<!-- 하단 전체 영역 -->
	<main class="main container clear" style="border: 0px solid black;">
		<!-- 타이틀 영역 -->
		<h2>경기장 찾기</h2>
		<!-- 검색 영역 START -->
		<div class="search-wrap">
			<form name="searchFrm" method="get">
				<table class="tbl">
					<tr>
						<td>
							<select class="stadium-option mr-3" id="select_gugun" name="select_gugun">
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
		                  	<select class="stadium-option" id="select_s_type" name="select_s_type">
		                  		<option value="">유형선택</option>
		                  		<option value="축구">축구</option>
		                  		<option value="풋살">풋살</option>
		                  	</select>
						</td>
						<td style="width: 100px;">
							<button class="search-button" type="button" id="btn1">검색</button>
						</td>
					</tr>
					<tr>
						<td>
							<input class="search-text" type="text" value="" id="searchTxt" name="searchTxt" placeholder="경기장 이름으로 찾기" />
						</td>
						<td>
							<button class="search-button" type="button" id="btn2">검색</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
		<!-- 검색 영역 END -->
		
		<!-- 맵 영역 -->
		<div id="outBox">
			<div id="mapBox" >
				<div id="con" style="overflow: hidden;">
					<div class="one_half first">
						<div class="map_wrap">
							<div id="map" class="map"></div>
							<div class="mapTopMenu" id="mapTopMenu">
								<div class="hAddr" id="hAddr">
									<div id="userAddr"></div>
								</div>
								<input type="button" class="seeAllBtn" id="seeAllBtn" value="전체보기" />
							</div>
						</div>
					</div>
					<div class="one_half mb-3">
						<div class="map_wrap">
							<div id="menu_wrap" class="map-list bg_white" style="width: 100%; 
								height: 100%; border: 0px solid black; margin-left: 0;">
								<!-- 필터링 결과 출력  -->						
								<ul id="placesList"></ul>
								<ul class="justify-content-center" style="text-align: center;">
									${pagingImg}
								</ul>
							</div>
						</div>	
					</div>
				</div>
			</div>
		</div>
		
		<!-- / main body -->
		<div class="clear"></div>
	</main>
</div>
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>

</body>
<script>
	$('#btn1').click(function(){
		if($('#select_gugun option:selected').val()!=''){
			$('#contents').load("stadiumMain.do?select_gugun=" + $('#select_gugun').val() + "&select_s_type=" + $('#select_s_type').val());
		}
		else{
			alert("지역선택은 필수입니다.");
			return false;
		}
	});
	$('#btn2').click(function(){
		if(!$('#searchTxt').val().replace(/^\s+|\s+$/g, '')){
			alert('찾을 경기장을 입력해주세요');
			return false;
		}
		$('#contents').load("stadiumMain.do?searchTxt=" + $('#searchTxt').val());
	});
	 
	function paging(pNum){
		$('#contents').load("stadiumMain.do?nowPage=" + pNum);
	}
</script>
</html>