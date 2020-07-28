package com.kosmo.project_final;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminStadiumController {
	
	@RequestMapping("/admin/adminStadium.do")
	public String adminStadium() {
		
		return "admin/adminStadium";
	}
}
