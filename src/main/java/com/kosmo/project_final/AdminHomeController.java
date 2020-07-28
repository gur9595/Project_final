package com.kosmo.project_final;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminHomeController {
	
	@RequestMapping("/admin/adminMain.do")
	public String adminMain(Principal principal) {
		
		return "admin/adminMain";
	}
	
}
