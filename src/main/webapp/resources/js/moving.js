$(document).ready( function() {
		
		
	
        $('#close').hide();
        
        $('#close').click(function() {
          $("#contents").html("");
          $('#close').toggle();
          $('html, body').stop().animate({
            scrollTop : $('.target span').offset().top
          });
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