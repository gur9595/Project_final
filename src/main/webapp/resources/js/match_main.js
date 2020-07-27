
$(document).ready( function() {
	
    $('#close').hide();
    
    $('#close').click(function() {
      $("#contents").html("");
      $('#close').toggle();
      $('html, body').stop().animate({
        scrollTop : $('.target span').offset().top
      });
    });

    $('#football').click(function() {
        $("#contents").load("stadiumMain.do", {"keyword" : "축구장"});
        $('html, body').stop().animate({
          scrollTop : $('#contents_target').offset().top
        });
        
        $('#close').show();
        
    });
    
    $('#footsal').click(function() {
    	$("#contents").load("stadiumMain.do", {"keyword" : "풋살장"});
        $('html, body').stop().animate({
          scrollTop : $('#contents_target').offset().top
        });
        
        $('#close').show();
        
    });
    
    $('#player').click(function() {
    	$("#contents").load("player.do", {"keyword" : "축구"});
        $('html, body').stop().animate({
          scrollTop : $('#contents_target').offset().top
        });
        
        $('#close').show();
        
    });
    
    $('#game_apply').click(function() {
    	$("#contents").load("gameInsert.do");
        $('html, body').stop().animate({
          scrollTop : $('#contents').offset().top
        });
        
        $('#close').show();
        
    });
    
    $('#game_list').click(function() {
    	$("#contents").load("game_list.do #main");
        $('html, body').stop().animate({
          scrollTop : $('#contents_target').offset().top
        });
        
        $('#close').show();
        
    });

    $('#edit').click(function() {
      $("#contents").load("edit.html #edit");
      $('html, body').stop().animate({
        scrollTop : $('#contents_target').offset().top
      });

      $('#close').show();
    });
    
    $('#order_tracking').click(function() {
      $("#contents").load("order_tracking.html #order_tracking");
      $('html, body').stop().animate({
        scrollTop : $('#contents_target').offset().top
      });

      $('#close').show();
    });

    
    

  });

  // 배송조회
  var company_code = "";
  function companySelect(){
    var company_name = document.getElementById("company");
    var c_code = document.getElementById("c_code");
    company_code = company_name.options[company_name.selectedIndex].value;
  }
  function deliverySearch() {
    var d_num = document.getElementById("delivery_number").value;

    if(company_code == "" || d_num == ""){
      alert("택배회사와 운송장 번호를 입력하세요.");
      return;
    }
    else {
      window.open('https://tracker.delivery/#/' + company_code + '/' + d_num, 'name', 'resizable=no width=700 height=550');
    }
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
  
  //게임 리스트 모달 창 값 전송
  function modal(date, time, name, addr, memo, idx) {
  	document.getElementById("list_date").innerHTML = date;
  	document.getElementById("list_time").innerHTML = time;
  	document.getElementById("list_name").innerHTML = name;
  	document.getElementById("list_addr").innerHTML = addr;
  	document.getElementById("list_memo").value = memo;
  	document.getElementById("list_idx").value = idx;
  }
  
  //매칭신청
  function insertValidate(f)
  {
  	if(f.date.value==""){
  		alert("경기 날짜를 선택하세요.");
  		f.date.focus();
  		return false;
  	}
  	
  	var s_time = document.getElementById("s_time");
  	var e_time = document.getElementById("e_time");
  	var type = document.getElementById("type");
  	
  	if(s_time.options[s_time.selectedIndex].value==""){
  		alert("게임 시작 시간을 선택하세요.");
  		f.s_time.focus();
  		return false;
  	}
  	if(e_time.options[e_time.selectedIndex].value==""){
  		alert("게임 끝나는 시간을 선택하세요.");
  		f.e_time.focus();
  		return false;
  	}
  	
  	if((s_time.options[s_time.selectedIndex].value) == (e_time.options[e_time.selectedIndex].value)){
  		alert("시작시간과 종료시간이 같을 수 없습니다.");
  		f.s_time.focus();
  		return false;
  	}
  	
  	if(!s_time.options[s_time.selectedIndex].value == "22" || 
  			!s_time.options[s_time.selectedIndex].value == "23" || 
  				!s_time.options[s_time.selectedIndex].value == "24" ){
  		
  		if(s_time.selectedIndex >= e_time.selectedIndex){
  			alert("시작시간이 종료시간보다 늦을 수 없습니다.");
  			f.s_time.focus();
  			return false;
  		}
  	}
  	
  	if(type.options[type.selectedIndex].value==""){
  		alert("게임 종목을 선택하세요.");
  		f.type.focus();
  		return false;
  	}
  	if(f.name.value==""){
  		alert("경기장 이름을 입력하세요.");
  		f.name.focus();
  		return false;
  	}
  	if(f.addr.value==""){
  		alert("경기장 주소를 입력하세요.");
  		f.addr.focus();
  		return false;
  	}
  	if(f.memo.value==""){
  		alert("세부사항을 입력하세요.");
  		f.memo.focus(); 
  		return false;
  	}
  	
  	alert("매칭 신청이 완료되었습니다.\n게임 목록 탭에서 확인하세요!");
  }

//리스트 검색 리셋
function reset_list() {
	var table = document.getElementById("list");
	var tr = table.getElementsByTagName("tr");
	
	for (i = 0; i < tr.length; i++) {
		tr[i].style.display = "";
	}
}
  
//리스트 검색
function search_list() {

	var g_gu, g_date, filter, table, tr, td, i, txtValue, cnt;
	g_gu = document.getElementById("g_gu");
	g_date = document.getElementById("g_date");
	gu_filter = g_gu.value.toUpperCase();
	date_filter = g_date.value;
	table = document.getElementById("list");
	tr = table.getElementsByTagName("tr");
	cnt = 0;
	
	for (i = 0; i < tr.length; i++) {
		if(tr[i].style.display = "none"){
			cnt++;
		}
	}
	if(cnt == tr.length){
		for (i = 0; i < tr.length; i++) {
			tr[i].style.display = "";
		}
		g_gu.value = ""; g_date.value = ""; cnt = 0;
		alert("검색된 내용이 없습니다.");
		return false;
	}
	
	if(g_gu.options[g_gu.selectedIndex].value=="" && g_date.value==""){
		alert("검색필터를 선택하세요.");
		return false;
	}
	  
	if(g_gu.value != "" && g_date.value == "") {
		for (i = 0; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td")[2];
			if (td) {
				txtValue = td.textContent || td.innerText;
				if (txtValue.toUpperCase().indexOf(gu_filter) > -1) {
					tr[i].style.display = "";
				} 
				else {
					tr[i].style.display = "none";
				}
			}
		}
	}
	if(g_gu.value == "" && g_date.value != "") {
		for (i = 0; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td")[0];
			if (td) {
				txtValue = td.textContent || td.innerText;
				if (txtValue == date_filter) {
					tr[i].style.display = "";
				} 
				else {
					tr[i].style.display = "none";
				}
			}
		}
	}
	if(g_gu.value != "" && g_date.value != "") {
		for (i = 0; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td")[0];
			if (td) {
				txtValue = td.textContent || td.innerText;
				if (txtValue == date_filter) {
					tr[i].style.display = "";
				} 
				else {
					tr[i].style.display = "none";
				}
			}
		}
		for (i = 0; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td")[2];
			if (td) {
				txtValue = td.textContent || td.innerText;
				if (txtValue.toUpperCase().indexOf(gu_filter) > -1) {
					tr[i].style.display = "";
				} 
				else {
					tr[i].style.display = "none";
				}
			}
		}
	}
	  
}
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  