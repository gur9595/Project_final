<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이틀</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link href="./../resources/css/layout.css" rel="stylesheet"
	type="text/css" media="all">


<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=36334fae12132b7c9a4b0c870101ef91&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div
mapOption = {
    center: new daum.maps.LatLng(37.549661, 126.989016), // 지도의 중심좌표
    level: 9 // 지도의 확대 레벨
};

//지도를 미리 생성
var map = new daum.maps.Map(mapContainer, mapOption);
//주소-좌표 변환 객체를 생성
var geocoder = new daum.maps.services.Geocoder();
//마커를 미리 생성
var marker = new daum.maps.Marker({
map: map
});


function sample5_execDaumPostcode() {
new daum.Postcode({
    oncomplete: function(data) {
        var addr = data.address; // 최종 주소 변수
        var name = data.buildingName; // 건물 이름

        // 주소 정보를 해당 필드에 넣는다.
        document.getElementById("g_saddr").value = addr;
        document.getElementById("g_sname").value = name;
        // 주소로 상세 정보를 검색
        geocoder.addressSearch(data.address, function(results, status) {
            // 정상적으로 검색이 완료됐으면
            if (status === daum.maps.services.Status.OK) {

                var result = results[0]; //첫번째 결과의 값을 활용

                // 해당 주소에 대한 좌표를 받아서
                var coords = new daum.maps.LatLng(result.y, result.x);
                // 지도를 보여준다.
                mapContainer.style.display = "block";
                map.relayout();
                // 지도 중심을 변경한다.
                map.setCenter(coords);
                map.setLevel(3);
                // 마커를 결과값으로 받은 위치로 옮긴다.
                marker.setPosition(coords);
            }
        });
    }
}).open();
}

//----------------카카오맵API를 이용한 주소-좌표변환 START-----------------------

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	var frm = document.gameFrm;
	
	function gameJoin(){
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch($('#g_saddr').val(), function(result, status) { 
			// 정상적으로 검색이 완료됐으면 
	     	if (status === kakao.maps.services.Status.OK) {
	        	$('#latitude').val(result[0].y);
	        	$('#longitude').val(result[0].x);
	        	console.log($('#g_sname').val());
			}
	     	else if(status === kakao.maps.services.Status.ERROR){
	     		alert("좌표변환 실패");
	     		return false;
	     	}
	     	gameFrm.submit();
		});
	}
	
	
//----------------카카오API END--------------------------------------------------

</script>

<style>
table, th, td{ 
	border: 0px;
}
</style>

</head>
<body>
<div class="wrapper row4" style="background: #ffffff">
	<main class=" ho c container clear">
	
		<div class="one_half first">
			<form name="gameFrm" method="post" action="<c:url value="/match/gameApply.do" />" >
				<table style="width: 100%;">
					<tr>
						<th>클럽명</th>
						<td>
							
							<select class="form-control" name="c_idx" id="c_idx">
								<option value="" selected="selected">클럽을 선택하세요</option>
								<c:forEach var="club" items="${c_list }">
									<option value="${club.c_idx }">${club.c_name }</option>
								</c:forEach>
							</select>
							
						</td>
					</tr>
					<tr>
						<th>경기 날짜</th>
						<td>
							<input type="date" name="g_date" id="g_date" class="form-control" style="width: 100%;" />
						</td>
					</tr>
					<tr>
						<th>
							게임 시간
						</th>
						<th>
							<select class="form-control" name="s_time" id="s_time" style="display: inline;">
								<option value="">시작 시간을 선택하세요.</option>
								<option value="00">00:00</option> 
								<option value="01">01:00</option> 
								<option value="02">02:00</option>
								<option value="03">03:00</option>
								<option value="04">04:00</option>
								<option value="05">05:00</option>
								<option value="06">06:00</option>
								<option value="07">07:00</option>
								<option value="08">08:00</option>
								<option value="09">09:00</option>
								<option value="10">10:00</option>
								<option value="11">11:00</option>
								<option value="12">12:00</option>
								<option value="13">13:00</option>
								<option value="14">14:00</option>
								<option value="15">15:00</option>
								<option value="16">16:00</option>
								<option value="17">17:00</option>
								<option value="18">18:00</option>
								<option value="19">19:00</option>
								<option value="20">20:00</option>
								<option value="21">21:00</option>
								<option value="22">22:00</option>
								<option value="23">23:00</option>
							</select>
							<select class="form-control" name="e_time" id="e_time" style="display: inline;">
								<option value="">끝나는 시간을 선택하세요.</option>
								<option value="0">00:00</option>
								<option value="1">01:00</option>
								<option value="2">02:00</option>
								<option value="3">03:00</option>
								<option value="4">04:00</option>
								<option value="5">05:00</option>
								<option value="6">06:00</option>
								<option value="7">07:00</option>
								<option value="8">08:00</option>
								<option value="9">09:00</option>
								<option value="10">10:00</option>
								<option value="11">11:00</option>
								<option value="12">12:00</option>
								<option value="13">13:00</option>
								<option value="14">14:00</option>
								<option value="15">15:00</option>
								<option value="16">16:00</option>
								<option value="17">17:00</option>
								<option value="18">18:00</option>
								<option value="19">19:00</option>
								<option value="20">20:00</option>
								<option value="21">21:00</option>
								<option value="22">22:00</option>
								<option value="23">23:00</option>
								<option value="24">24:00</option>
							</select>
						</th>		
					</tr>
					<tr>
						<th>게임 종목</th>
						<td>
							<select class="form-control" name="g_type" id="g_type">
								<option value="">종목을 선택하세요.</option>
								<option value="축구">축구</option>
								<option value="풋살">풋살</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>구장 주소</th>
						<td>
							<input type="text" class="form-control" placeholder="예약된 구장의 이름을 자세히 입력해주세요." 
								style="width: 70%; display: inline;" id="g_sname" name="g_sname"> 
							<button type="button" class="addr" onclick="sample5_execDaumPostcode()"  
								style="width: 28%; height:40px; display: inline;">주소검색</button><br>
							<input type="text" class="form-control" placeholder="예약된 구장의 주소를 자세히 입력해주세요." 
								style="width: 100%; display: inline;" id="g_saddr" name="g_saddr">
							
							<!-- 좌표 값을 받는 hidden폼 -->
							<input type="hidden" value="" id="latitude" name="latitude" />
							<input type="hidden" value="" id="longitude" name="longitude" />
						</td>		
					</tr>
					<tr>
						<th>
							세부 사항
						</th>
						<td>
							<textarea class="form-control" id="g_memo" name="g_memo" 
								style="width: 100%; height: 300px;" placeholder="Ex)가산 풋살장 제 1구장 입니다."></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2"><button type="button" class="addr" style="width: 100%; height: 35px; color:black;" onclick="gameJoin();">매칭신청</button></td>
					</tr>
				</table>
			</form>

		</div>
		<div class="one_half">
			<div class="" id="map" style="width:100%; height:630px; margin-top:10px;"></div>
		</div>
		
	</main>
</div>
</body>
</html>