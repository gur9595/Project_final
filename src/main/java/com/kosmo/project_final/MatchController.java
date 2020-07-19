package com.kosmo.project_final;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MatchController {
		
	@RequestMapping("/match/matchMain.do")
	public String matchMain() {
		
		return "match/match_main";
	}
	
}
