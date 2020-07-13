package com.kosmo.project_final;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClubController {
	
	@RequestMapping("/club/myClubMain.do")
	public String clubMain() {
		
		return "club/club_main";
	}
	
}
