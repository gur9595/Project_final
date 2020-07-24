package com.kosmo.project_final;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import mybatis.MemberDAOImpl;
import mybatis.MemberDTO;


@Controller
public class MemberController {
	
	@Autowired
	private SqlSession sqlSession;
	
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
	
	@RequestMapping("/member/managerJoin.do")
	 public String managerJoin() {
		 
		 return"member/managerJoin";
	 }
	
	@RequestMapping("/member/id_pw.do")
	public String id_pw() {
		
		return "/member/id_pw";
	}
	
	@RequestMapping(value = "/mybatis/memberJoin.do", method = RequestMethod.POST) 
	public String memberJoinPro(HttpSession session, MemberDTO dto) {
		
		sqlSession.getMapper(MemberDAOImpl.class).memberJoin(dto);
		
		return "redirect:";
	}

}
