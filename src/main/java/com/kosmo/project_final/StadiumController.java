package com.kosmo.project_final;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StadiumController {
	
	@RequestMapping("/match/stadiumMain.do")
	public String stadiumMain() {
		
		return "match/stadium_main";
	}
	
	@RequestMapping("/stadium/stadiumNormalApply.do")
	public String stadiumApply() {
		
		return "stadium/stadium_apply";
	}
}
