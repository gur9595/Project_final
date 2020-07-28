package com.kosmo.project_final;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminManagerController {
	
	@RequestMapping("/admin/adminManager.do")
	public String adminManager() {
		
		return "admin/adminManager";
	}
}
