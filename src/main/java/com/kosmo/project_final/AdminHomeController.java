package com.kosmo.project_final;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminHomeController {
	
	@RequestMapping("/admin/adminMain.do")
	public String adminMain(HttpSession session,Principal principal) {
		
		session.setAttribute("m_id", principal.getName());
		
		return "admin/adminMain";
	}
	
}
