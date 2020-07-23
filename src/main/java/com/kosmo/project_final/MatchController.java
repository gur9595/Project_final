package com.kosmo.project_final;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MatchController {
		
	@RequestMapping("/match/matchMain.do")
	public String matchMain() {
		
		return "match/match_main";
	}
	
	@RequestMapping("/match/stadiumMain.do")
	public String stadiumMain() {
		
		return "match/stadium_main";
	}
	
	@RequestMapping("/match/stadiumNormalApply.do")
	public String stadiumApply() {
		
		return "match/stadium_apply";
	}
	
	@RequestMapping("/match/gameInsert.do")
	public String gameInsert() {
		
		return "match/gameInsert";
	}

	@RequestMapping("/match/game_list.do")
	public String game_list() {
		
		return "match/game_list";
	}

	@RequestMapping("/match/player.do")
	public String player() {
		
		return "match/player";
	}
	
	
}
