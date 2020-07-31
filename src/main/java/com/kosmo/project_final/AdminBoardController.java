package com.kosmo.project_final;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminBoardController {
	
	@RequestMapping("/admin/adminBoard.do")
	public String adminBoard() {
		
		return "admin/adminBoard";
	}
	
}
