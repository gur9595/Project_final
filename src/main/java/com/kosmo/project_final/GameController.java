package com.kosmo.project_final;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GameController {
	
	@RequestMapping("/game/gameMain.do")
	public String gameMain() {
		
		return "/game/game_main";
	}
}
