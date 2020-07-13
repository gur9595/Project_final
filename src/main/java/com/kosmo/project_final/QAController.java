package com.kosmo.project_final;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QAController {
	
	@RequestMapping("/customer/qnaMain.do")
	public String qnaMain() {
		
		return "QA/QA_main";
	}
}
