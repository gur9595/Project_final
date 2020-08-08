var isDirty = false, isPosting = false, shirtId;
    var form = new Array(26);
$(function () { 
    shirtId = $(".active_shirt").attr("id"); 
    // disableSelection : 아이템 내부 글자 드래그 불가
    $(".player").disableSelection(); 
    $("#player_list").disableSelection(); 
    $("#field").disableSelection(); 
    $("#playername").keyup(function (e) {
         e.keyCode == 13 && $("#addplayer").click() 
    });

    $(".shirt").click(function () { 
        // attr : 속성값 변경 .... src : http://www.footballuser.com/assets/images/shirts/_1.png
        $(".dropped_shirt").attr("src", "http://www.footballuser.com/assets/images/shirts/" + $(this).attr("id")); 
        shirtId = $(this).attr("id"); 
        $(".shirt").removeClass("active_shirt"); 
        $(this).addClass("active_shirt") 
    }); 

    $(".player").draggable({
        // revert: droppable 함수가 아닌 곳에 위치하면 처음으로 돌아가게 할지
         revert: "invalid", 
         // cursor: 움직이는 동안 포인터
         cursor: "move", 
         // helper: drag할때 객체를 가지고 갈지 clone을 만들 지... 해당 함수의 return 값이 드래그되어 움직임.
         helper: function (event) { 
             return $('<span class="dragged_name" value="' + $(this).attr("value") +
            		 '"><input type="hidden" name="" value="">' + $(this).text() + "</span>") 
        } 
    });
    
    $(".player").draggable({
        // revert: droppable 함수가 아닌 곳에 위치하면 처음으로 돌아가게 할지
         revert: "invalid", 
         // cursor: 움직이는 동안 포인터
         cursor: "move", 
         // helper: drag할때 객체를 가지고 갈지 clone을 만들 지... 해당 함수의 return 값이 드래그되어 움직임.
         helper: function (event) { 
             return $('<span class="dragged_name" value="' + $(this).attr("value") +
            		 '"><input type="hidden" name="" value="">' + $(this).text() + "</span>") 
        } 
    });
    
    $("#field").droppable({ 
        tolerance: "fit", 
        drop: function (ev, ui) { 
       	 if(ui.draggable.attr('id') == 'ball'){
       		 
       	 }
       	 
       	 else if (!ui.draggable.find("div").length) { 
                var player = $(document.createElement("div")).addClass("dropped_player").css({ 
                    left: ui.position.left, top: ui.position.top 
                }); 
                player.draggable({ revert: "invalid" }); 
                player.css("position", "absolute"); 
                player.prepend('<img class="dropped_shirt" src="./../resources/img/shirts/shirt_white.png" />').
                append('<div class="dropped_name" style="font-size : 20px;">' + ui.draggable.text() + "</div>"); 
                $("#field").append(player); 
                setTimeout(function () { 
                    ui.draggable.parents("tr").remove() 
                }, 1) 
            } 
        } 
    });
    
    $("#ball").draggable();

    //.player를 플레이어 리스트에 놓았을 때
    $("#player_list").droppable({
        // tolerance: 드롭 시 위치
        tolerance: "fit", 
        // drop : 드롭이 되면 발생하는 이벤트
        drop: function (ev, ui) {
            if (ui.draggable.attr("class") != "player ui-draggable") { 
                $("#player_table tr:last").after('<tr><td class="player_row"><div class="player" value="'+ ui.draggable.attr("value") +'">' + ui.draggable.text() + '</div></td><td align="right" class="player_row"><a class="delete_player no_underline" href="#"> \u00ab remove</a></td></tr>'); 
                $(".player").disableSelection(); 
                $("#player_table tr:last").find(".player").draggable({ 
                    revert: "invalid", 
                    cursor: "move", 
                    helper: function (event) { 
                        return $('<span class="dragged_name" value="' + ui.draggable.attr("value") + '">' + ui.draggable.text() + "</span>") 
                    } 
                }); 
                setTimeout(function () { 
                    ui.draggable.remove() 
                }, 1) 
            } 
        }
    });

    

    // $(".pos").droppable({ 
    //     tolerance: "intersect", 
    //     drop: function (ev, ui) { 
    //         if (!ui.draggable.find("div").length) { 
    //             var player = $(document.createElement("div")).addClass("dropped_player").css({ 
    //                 left: ui.position.left, top: ui.position.top 
    //             }); 
    //             player.draggable({ revert: "invalid" }); 
    //             player.css("position", "absolute"); 
    //             player.prepend('<img class="dropped_shirt" src="http://www.footballuser.com/assets/images/shirts/' + shirtId + '" />').append('<div class="dropped_name" value="'+ ui.draggable.attr("value") +'">' + ui.draggable.text() + "</div>"); 
    //             $("#field").append(player); 
    //             setTimeout(function () { 
    //                 ui.draggable.parents("tr").remove() 
    //             }, 1) 
                
    //             var draggablevalue = ui.draggable.attr("value");
    //             var droppableId = $(this).attr("id");
    //             var index = $(this).attr("value");

    //             console.log(draggablevalue);
    //             console.log(droppableId);
    //             console.log(index);

    //             form[index]=draggablevalue;
    //             for(var i = 0; i < form.length; i++){
    //             console.log(form[i]);
    //             }
    //         } 
    //     } 
    // });

    //포지션별 드롭
//    $("#pos0").droppable({ 
//        tolerance: "intersect", 
//        drop: function (ev, ui) { 
//            if ($(this).find("input").text()!==""){
//                 return null;
//            }
//            else if(!ui.draggable.find("div").length){ 
//                var player = $(document.createElement("div")).addClass("dropped_player").css({ 
//                    left: ui.position.left, top: ui.position.top 
//                }); 
//                player.draggable({ revert: "invalid" }); 
//                player.css("position", "absolute");
//                player.prepend('<img class="dropped_shirt" src="http://www.footballuser.com/assets/images/shirts/' + shirtId + '" />').append('<div class="dropped_name" value="'+ ui.draggable.attr("value") +'"><input type="hidden" name="" value="'+ $(this).attr("id") +'">' + ui.draggable.text() + "</div>"); 
//                $("#field").append(player);
//                setTimeout(function () {
//                    ui.draggable.parents("tr").remove()
//                }, 1)
//                
//                var value= ui.draggable.attr("value");
//                $(this).find("input").text(value);
//
//                var draggablevalue = ui.draggable.attr("value");
//                var droppableId = $(this).attr("id");
//
//                console.log(draggablevalue);
//                console.log(droppableId);
//                console.log($(this).find("input").text());
//                console.log(ui.draggable.find("div"));
//
//                form[0]=draggablevalue;
//                for(var i = 0; i < form.length; i++){
//                console.log(form[i]);
//                }
//            }
//            else if(ui.draggable.find("div").length){
//                
//                console.log(draggablevalue);
//                console.log(droppableId);
//                console.log($(this).find("input").text());
//                console.log(ui.draggable.find("div"));
//                
//                form[0]=draggablevalue;
//                for(var i = 0; i < form.length; i++){
//                console.log(form[i]);
//                }
//            }
//        },
//        out : function(ev, ui){
//            $(this).find("input").text("");
//        } 
//    });
//
//    $("#pos1").droppable({ 
//        tolerance: "intersect", 
//        drop: function (ev, ui) { 
//            if ($(this).find("input").text()!==""){
//                 return null;
//            }
//            else if(!ui.draggable.find("div").length){ 
//                var player = $(document.createElement("div")).addClass("dropped_player").css({ 
//                    left: ui.position.left, top: ui.position.top 
//                }); 
//                player.draggable({ revert: "invalid" }); 
//                player.css("position", "absolute");
//                player.prepend('<img class="dropped_shirt" src="http://www.footballuser.com/assets/images/shirts/' + shirtId + '" />').append('<div class="dropped_name" value="'+ ui.draggable.attr("value") +'"><input type="hidden" name="" value="'+ $(this).attr("id") +'">' + ui.draggable.text() + "</div>"); 
//                $("#field").append(player);
//                setTimeout(function () {
//                    ui.draggable.parents("tr").remove()
//                }, 1)
//                
//                var value= ui.draggable.attr("value");
//                $(this).find("input").text(value);
//
//                var draggablevalue = ui.draggable.attr("value");
//                var droppableId = $(this).attr("id");
//
//                console.log(draggablevalue);
//                console.log(droppableId);
//                console.log($(this).find("input").text());++
//                console.log(ui.draggable.find("div"));
//
//                form[1]=draggablevalue;
//                for(var i = 0; i < form.length; i++){
//                console.log(form[i]);
//                }
//            }
//        },
//        out : function(ev, ui){
//            $(this).find("input").text("");
//        } 
//    });
//
//    $("#pos2").droppable({ 
//        tolerance: "intersect", 
//        drop: function (ev, ui) { 
//            if (!ui.draggable.find("div").length) { 
//                var player = $(document.createElement("div")).addClass("dropped_player").css({ 
//                    left: ui.position.left, top: ui.position.top 
//                }); 
//                player.draggable({ revert: "invalid" }); 
//                player.css("position", "absolute"); 
//                player.prepend('<img class="dropped_shirt" src="http://www.footballuser.com/assets/images/shirts/' + shirtId + '" />').append('<div class="dropped_name" value="'+ ui.draggable.attr("value") +'">' + ui.draggable.text() + "</div>"); 
//                $("#field").append(player); 
//                setTimeout(function () { 
//                    ui.draggable.parents("tr").remove() 
//                }, 1) 
//                
//                var draggablevalue = ui.draggable.attr("value");
//                var droppableId = $(this).attr("id");
//
//                console.log(draggablevalue);
//                console.log(droppableId);
//
//                form[2]=draggablevalue;
//                for(var i = 0; i < form.length; i++){
//                console.log(form[i]);
//                }
//            } 
//        } 
//    });
//
//    $("#pos3").droppable({ 
//        tolerance: "intersect", 
//        drop: function (ev, ui) { 
//            if (!ui.draggable.find("div").length) { 
//                var player = $(document.createElement("div")).addClass("dropped_player").css({ 
//                    left: ui.position.left, top: ui.position.top 
//                }); 
//                player.draggable({ revert: "invalid" }); 
//                player.css("position", "absolute"); 
//                player.prepend('<img class="dropped_shirt" src="http://www.footballuser.com/assets/images/shirts/' + shirtId + '" />').append('<div class="dropped_name" value="'+ ui.draggable.attr("value") +'">' + ui.draggable.text() + "</div>"); 
//                $("#field").append(player); 
//                setTimeout(function () { 
//                    ui.draggable.parents("tr").remove() 
//                }, 1) 
//                
//                var draggablevalue = ui.draggable.attr("value");
//                var droppableId = $(this).attr("id");
//
//                console.log(draggablevalue);
//                console.log(droppableId);
//
//                form[3]=draggablevalue;
//                for(var i = 0; i < form.length; i++){
//                console.log(form[i]);
//                }
//            } 
//        } 
//    });
//
//    $("#pos4").droppable({ 
//        tolerance: "intersect", 
//        drop: function (ev, ui) { 
//            if (!ui.draggable.find("div").length) { 
//                var player = $(document.createElement("div")).addClass("dropped_player").css({ 
//                    left: ui.position.left, top: ui.position.top 
//                }); 
//                player.draggable({ revert: "invalid" }); 
//                player.css("position", "absolute"); 
//                player.prepend('<img class="dropped_shirt" src="http://www.footballuser.com/assets/images/shirts/' + shirtId + '" />').append('<div class="dropped_name" value="'+ ui.draggable.attr("value") +'">' + ui.draggable.text() + "</div>"); 
//                $("#field").append(player); 
//                setTimeout(function () { 
//                    ui.draggable.parents("tr").remove() 
//                }, 1) 
//                
//                var draggablevalue = ui.draggable.attr("value");
//                var droppableId = $(this).attr("id");
//
//                console.log(draggablevalue);
//                console.log(droppableId);
//
//                form[4]=draggablevalue;
//                
//                for(var i = 0; i < form.length; i++){
//                    console.log(form[i]);
//                }
//            } 
//        } 
//    });

    //submit 시
    $("#submit").click(function () { 
        var results = [], 
        fieldPos = $("#field_image").position(); 
        $(".dropped_player").each(function () { 
            var playerPos = $(this).position(); 
            if (playerPos.left > 0 && playerPos.top > 0) { 
                var playerShirt = $(this).find("img").position(), 
                playerShirtPosLeft = playerShirt.left; 
                if (playerShirt.top != 0) 
                    playerShirtPosLeft = playerShirtPosLeft - fieldPos.left; 
                var player = { 
                    Name: $(this).text(), 
                    X: Math.floor(playerPos.left + playerShirtPosLeft - fieldPos.left), 
                    Y: Math.floor(playerPos.top - fieldPos.top) 
                }; 
                results.push(player) 
            } 
        }); 
        var newFormation = { 
            TeamId: $("#Team").val(), 
            TeamName: $("#Team :selected").text(), 
            ShirtId: shirtId, 
            Players: results, 
            Type: $("#Type :selected").text(), 
            Comment: $("#comments").val() 
        }; 
        $.ajax({ 
            url: "/post", 
            type: "POST", 
            data: $.toJSON(newFormation), 
            contentType: "application/json; charset=utf-8", 
            dataType: "json", 
            beforeSend: function (x) { 
                $("#submit").attr("disabled", "disabled");
                $("#ajaxloader3").show(); 
                isPosting = true 
            }, success: function (result) { 
                if (result.IsSuccesful) 
                    window.location.href = result.Data; 
                else { 
                    $("#error").text(result.Data); 
                    $("#error").css("visibility", "visible"); 
                    $("html, body").animate({ 
                        scrollTop: 0 
                    }, 0); 
                    isPosting = false; 
                    $("#ajaxloader3").hide(); 
                    $("#submit").removeAttr("disabled") 
                } 
            }, error: function (request, error) { 
                isPosting = false; 
                $("#ajaxloader3").hide(); 
                $("#submit").removeAttr("disabled") 
            } 
        }) 
    }); 

    //선수 추가 버튼 (자동화해야함)
    $("#addplayer").click(function () { 
        var playername = jQuery.trim($("#playername").val().replace(/<\/?[^>]+>/gi, "")); 
        var playerid = $("#playerid").val();
        if (playername != "") { 
            $("#player_table tr:last").after('<tr><td class="player_row"><div class="player" value="'+ playerid +'">' + playername + '</div></td><td align="right" class="player_row"><a class="delete_player no_underline" href="#"> \u00ab remove</a></td></tr>'); 
            $(".player").disableSelection(); 
            $(".player").draggable({
                revert: "invalid", 
                cursor: "move", 
                helper: function (event) { 
                    return $('<span class="dragged_name" value="'+ playerid +'">' + $(this).text() + "</span>") 
                } 
            }); 
            $("#playername").val("") 
        } 
    }); 
    
    //선수 삭제 버튼 ( 자동화 해야함 )
    $(".delete_player").live("click", function (event) { 
        $(this).parents("tr").remove(); 
        return false 
    }); 
    
    //선수 전체 삭제 ( 자동화 해야함 )
    $(".delete_players").click(function () { 
        $("#player_table").find("tr:gt(0)").remove(); 
        return false 
    }); 
    

    $(function () { 
        $("select#Country").change(function () { 
            var country = $("#Country > option:selected").attr("value"); 
            if (country != "") 
                $.ajax({ 
                    type: "GET", 
                    contentType: "application/json; charset=utf-8", 
                    url: "/teams/" + country.replace(/[.]/g, "_"), 
                    data: "{}", 
                    dataType: "json", 
                    beforeSend: function (x) { 
                        $("#ajaxloader").show(); 
                        $("#Team").html("").attr("disabled", true) 
                    }, success: function (data) { 
                        if (data.length > 0) { 
                            var options = "<option value='0'></option>"; 
                            for (t in data) { 
                                var team = data[t]; 
                                options += "<option shirt='" + team.Shirt + "' value='" + team.Value + "'>" + team.Text + "</option>" 
                            } 
                            $("#Team").removeAttr("disabled").html(options) 
                        } 
                        else 
                            $("#Team").html("").attr("disabled", true); 
                        $("#ajaxloader").hide();
                        $("#Team").trigger("chosen:updated")
                    }
                }); 
            else 
                $("#Team").html("") 
        }); 

        $("select#Team").change(function () { 
            $("#ajaxloader2").show(); 
            var team = $("#Team > option:selected").attr("value"); 
            $(".team.shirt").remove(); 
            if (team != "") { 
                var shirt = $("#Team > option:selected").attr("shirt"); 
                if (shirt != "0") { 
                    shirtId = team + ".png"; 
                    $(".dropped_shirt").attr("src", "http://www.footballuser.com/assets/images/shirts/" + shirtId); 
                    if (shirt == "2") { 
                        $("#shirts").prepend('<img height="50" width="50" id="' + team + '_2.png" class="team shirt" src="http://www.footballuser.com/assets/images/ajax-loader.gif" alt="" />'); 
                        $(".team.shirt").attr("src", "http://www.footballuser.com/assets/images/shirts/" + team + "_2.png") 
                    } 
                    $(".shirt").removeClass("active_shirt"); 
                    $("#shirts").prepend('<img height="50" width="50" id="' + team + '.png" class="team shirt active_shirt" src="http://www.footballuser.com/assets/images/ajax-loader.gif" alt="" />'); 
                    $(".team.shirt.active_shirt").attr("src", "http://www.footballuser.com/assets/images/shirts/" + team + ".png"); 
                    $(".team.shirt").click(function () { 
                        $(".dropped_shirt").attr("src", "http://www.footballuser.com/assets/images/shirts/" + $(this).attr("id")); 
                        shirtId = $(this).attr("id"); 
                        $(".shirt").removeClass("active_shirt"); 
                        $(this).addClass("active_shirt") 
                    }) 
                } 
            } 
            $("#ajaxloader2").hide() 
        }) 
    }) 
})