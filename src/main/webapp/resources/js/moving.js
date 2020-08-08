$(document).ready( function() {
		
		
	
        $('#close').hide();
        
        $('#close').click(function() {
          $("#contents").html("");
          $('#close').toggle();
          $('html, body').stop().animate({
            scrollTop : $('.target span').offset().top
          });
        });

        
        ////매치 부분
        
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
		
        //////클럽 부분
        
        //클럽 검색
        $('#clubSearch').click(function() {
        	$("#contents").load("clubSearch.do");
            $('html, body').stop().animate({
              scrollTop : $('#contents_target').offset().top
            });           
            $('#close').show();   
        });
        
        //내 클럽
        $('#clubMyList').click(function() {
        	$("#contents").load("clubMyList.do");
            $('html, body').stop().animate({
              scrollTop : $('#contents_target').offset().top
            });
            
            $('#close').show();            
        });
        
        //클럽 생성
        $('#clubCreate').click(function() {
        	$("#contents").load("clubCreate.do");
            $('html, body').stop().animate({
              scrollTop : $('#contents_target').offset().top
            });
            
            $('#close').show();            
        });
        
        //클럽 랭킹
        $('#clubRanking').click(function() {
        	$("#contents").load("clubRanking.do", {"keyword" : "total"});
            $('html, body').stop().animate({
              scrollTop : $('#contents_target').offset().top
            });
            
            $('#close').show();            
        });
        
        $('#clubTotalRanking').click(function() {
        	$("#contents").load("clubRanking.do", {"keyword" : "total"});
            $('html, body').stop().animate({
              scrollTop : $('#contents_target').offset().top
            });
            
            $('#close').show();            
        });
        
        $('#clubGuRanking').click(function() {
        	$("#contents").load("clubRanking.do", {"keyword" : "gu"});
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