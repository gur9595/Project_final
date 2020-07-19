package com.kosmo.project_final;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MemberController {
	
	@RequestMapping("/member/memberAgree.do")
	public String memberAgree() {
		
		return "member/member_agree";
	}
	
	 @RequestMapping("/member/memberAgree2.do")
	 public String memberAgree2() {
		 
		 return "member/member_agree2";
	 }
	 
	 
	 @RequestMapping("/member/article.do")
	 public String article() {
		 
		 return "member/article";	
	 }
	 
	@RequestMapping("/member/login.do")
	public String login() {
		
		return "member/login";
	}
	
	@RequestMapping("/member/managerMain.do")
	public String managerMain() {
		
		return "member/manager_main";
	}
	
	@RequestMapping("/member/id_pw.do")
	public String id_pw() {
		
		return "/member/id_pw";
	}
	

	
	

}
