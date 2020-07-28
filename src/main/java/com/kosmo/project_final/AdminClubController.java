package com.kosmo.project_final;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminClubController {
	
	@RequestMapping("/admin/adminClub.do")
	public String adminClub() {
		
		return "admin/adminClub";
	}
}
