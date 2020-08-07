$(document).ready( function() {
	
    $('#profile').click(function() {
    	$("#contents").load("memberEdit.do");
        $('html, body').stop().animate({
          scrollTop : $('#contents').offset().top
        });
        
        $('#close').show();
        
    });
    
    $('#backpage').click(function() {
    	$("#contents").load("memberEdit.do");
        $('html, body').stop().animate({
          scrollTop : $('#contents').offset().top
        });
        
        $('#close').show();
        
    });
    
    $('#nextpage').click(function() {
    	
    	var m_id = $("#m_id").val();
    	var m_pw = $("#m_pw").val();
    	var m_pw2 = $("#m_pw2").val();
    	var m_name = $("#m_name").val();
    	var m_birth = $("#m_birth").val();
    	var m_phone = $("#m_phone").val();
    	var m_email = $("#m_email").val();
    	var m_addr1 = $("#m_addr1").val();
    	var m_addr2 = $("#m_addr2").val();
    	
    	if(m_pw == ""){
    		alert("비밀번호 입력 칸을 입력해주세요.");
    		return false;
    	}
    	if(m_pw2 == ""){
    		alert("비밀번호 확인 칸을 입력해주세요.");
    		return false;
    	}
    	if(!(m_pw == m_pw2)){
    		alert("두 칸의 비밀번호가 다릅니다. 다시 입력하세요.");
    		return false;
    	}
    	
    	$("#contents").load("/project_final/member/memberEdit2.do", "m_id=" + m_id + "&m_pw="+ m_pw + "&m_name="+ m_name + "&m_birth="+ m_birth + "&m_phone="+ m_phone + "&m_email="+ m_email + "&m_addr1="+ m_addr1 + "&m_addr2=" + m_addr2 + " #main");
        $('html, body').stop().animate({
            scrollTop : $('#contents').offset().top
        });
        
    });
    
    //성별 체크
	if($("#sex").val() == "남자"){
		$("input:radio[id='man']").prop("checked", true);
	}
	else if($("#sex").val() == "여자"){
		$("input:radio[id='woman']").prop("checked", true);
	}
	
	//포지션 체크
	var positions = $("#position").val().split(",");
	var posCheck = $("input:checkbox[name=m_position]");
	for(j = 0; j < posCheck.length; j++) {
		for(i = 0; i < positions.length; i++) {
			if(positions[i] == posCheck[j].value){
				$("input:checkbox[id=" + positions[i] + "]").prop("checked", true);
			}
		}
	}
	
	//실력 체크
	var abils = $("input:radio[name=m_abil]");
	for(i = 0; i < abils.length; i++) {
		if($("#abil").val() == abils[i].value){
			$("input:radio[value=" + $("#abil").val() + "]").prop("checked", true);
		}
	}
	
	//주발 체크
	var foots = $("input:radio[name=m_foot]");
	for(i = 0; i < foots.length; i++) {
		if($("#foot").val() == foots[i].value){
			$("input:radio[value=" + $("#foot").val() + "]").prop("checked", true);
		}
	}
    

});

function setPic(event) {
	var reader = new FileReader();
	
	reader.onload = function(event) {
		if(document.getElementById('newImg')){
			var el = document.getElementById('newImg');
			el.remove();
		}
		
		var img = document.createElement("img");
		img.style.align = "center";
		img.setAttribute("width", 150);
		img.setAttribute("height", 200);
		img.setAttribute("id", "newImg");
		img.setAttribute("src", event.target.result);
		document.querySelector("#image_container").appendChild(img);
	};
	reader.readAsDataURL(event.target.files[0]);
}

  // 메뉴 줌 인/아웃
  function zoomIn(event) {
    event.target.style.transform = "scale(1.2)";
    event.target.style.zIndex = 0.5;
    event.target.style.transition = "all 0.5s";
  }
  function zoomOut(event) {
    event.target.style.transform = "scale(1)";
    event.target.style.zIndex = 0;
    event.target.style.transition = "all 0.5s";
  }

  // 메뉴로 이동
  function menu_move(){
    $('html, body').stop().animate({
        scrollTop : $('.target span').eq(0).offset().top
    });
  }
function DaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우
                addr = data.jibunAddress;
            }
	
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
              
            
            }
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postcode').value = data.zonecode;
            document.getElementById("m_addr1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("m_addr2").focus();
        }
    }).open();
}


