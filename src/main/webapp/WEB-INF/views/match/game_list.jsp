<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이틀</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=36334fae12132b7c9a4b0c870101ef91&libraries=services"></script>

<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

setTimeout(function(){ map.relayout(); }, 1000);
// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('서울 성동구 금호동3가 1127', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });
        map.relayout();
        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">구장이름</div>'
        });
        
        
        infowindow.open(map, marker);

    }
});  
setTimeout(function(){ map.relayout(); }, 1000);
</script>


</head>
<body>

<!-- 모달창 신청폼 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" data-backdrop="static" style="color: black;">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">

				<div class="modal-header">
					<h2 class="modal-title" style="font-size: 20px; text-align: center;"
						id="myModalLabel">구장 신청하기</h2>

					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<div class="modal-body">
				날짜 : 2020-08-14 <br>
				시간 : 18:00 <br>
				장소 : 가산 조은디 풋살장 <br>
				주소 : <input type="text"  class="form-control"id="sample5_address" readonly="readonly" 
					value="서울 성동구 금호동3가 1127" style="display:inline; width: 300px; background: #ffffff;">
					<div id="map" style="width:100%;height:350px;"></div>
				상세정보
				<textarea class="form-control" style="width: 100%; height: 200px; background: #ffffff;" readonly="readonly">
dsa
d
sa
d
sad
sdsdsd

sds
ds
dsd
s
ds
d

sa
d
				</textarea>
					
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal"> 결 제 </button>
				</div>
			</div>
		</div>
	</div>
<!-- ################ 모달 끝 #################-->


<form action="">
	<table style="text-align: center;">
		<tr>
			<th>날짜</th>
			<th>시간</th>
			<th>지역</th>
			<th>구장 이름</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>신청</th>
		</tr>
		<tr>
			<td>2020-08-14</td>
			<td>02:00</td>
			<td>금천구</td>
			<td>덕덕 풋살장</td>
			<td>하이요 나는 정덕래다. 여기 구짱 나와라 5초준다 </td>
			<td>덕덕</td>
			<td><button type="button" class="btn btn-primary" data-toggle="modal" 
			data-target="#myModal"style="width: 100%; height: 100%;">신청</button></td>
		</tr>
		<tr>
			<td>2020-08-14</td>
			<td>02:00</td>
			<td>금천구</td>
			<td>덕덕 풋살장</td>
			<td>하이요 나는 정덕래다. 여기 구짱 나와라 5초준다 </td>
			<td>덕덕</td>
			<td><button type="button" class="btn btn-primary" data-toggle="modal" 
			data-target="#myModal"style="width: 100%; height: 100%;">신청</button></td>
		</tr>
		<tr>
			<td>2020-08-14</td>
			<td>02:00</td>
			<td>금천구</td>
			<td>덕덕 풋살장</td>
			<td>하이요 나는 정덕래다. 여기 구짱 나와라 5초준다 </td>
			<td>덕덕</td>
			<td><button type="button" class="btn btn-primary" data-toggle="modal" 
			data-target="#myModal"style="width: 100%; height: 100%;">신청</button></td>
		</tr>
		<tr>
			<td>2020-08-14</td>
			<td>02:00</td>
			<td>금천구</td>
			<td>덕덕 풋살장</td>
			<td>하이요 나는 정덕래다. 여기 구짱 나와라 5초준다 </td>
			<td>덕덕</td>
			<td><button type="button" class="btn btn-primary" data-toggle="modal" 
			data-target="#myModal"style="width: 100%; height: 100%;">신청</button></td>
		</tr>
		<tr>
			<td>2020-08-14</td>
			<td>02:00</td>
			<td>금천구</td>
			<td>덕덕 풋살장</td>
			<td>하이요 나는 정덕래다. 여기 구짱 나와라 5초준다 </td>
			<td>덕덕</td>
			<td><button type="button" class="btn btn-primary" data-toggle="modal" 
			data-target="#myModal"style="width: 100%; height: 100%;">신청</button></td>
		</tr>
		
	</table>
</form>
</body>
</html>