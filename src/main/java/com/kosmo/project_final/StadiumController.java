package com.kosmo.project_final;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StadiumController {
	
	@RequestMapping("/stadium/stadiumMain.do")
	public String stadiumMain() {
		
		return "stadium/stadium_main";
	}
}
