package com.kosmo.project_final;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QAController {
	
	@RequestMapping("/customer/qnaMain.do")
	public String qnaMain() {
		
		return "QA/QA_main";
	}
	
	@RequestMapping("/customer/qnaList.do")
	public String qnaList() {
		
		return "QA/QA_list";
	}
	
	@RequestMapping("/customer/qnaWrite.do")
	public String qnaWrite() {
		
		return "QA/QA_write";
	}
	
	@RequestMapping("/customer/qnaView.do")
	public String qnaView() {
		
		return "QA/QA_view";
	}
}
