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
	 public String memberAgree2(HttpServletRequest req, Model model) {
		 
		 
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
	
	@RequestMapping(value = "/member/memberJoin1.do", method = RequestMethod.POST) 
	public String memberJoinPro1(HttpServletRequest req, Model model) {
		
		String m_id = req.getParameter("m_id");
		String m_pw = req.getParameter("m_pw");
		String m_name = req.getParameter("m_name");
		String m_birth = req.getParameter("m_birth");
		String m_phone = req.getParameter("m_phone");
		String m_email = req.getParameter("m_email");
		String m_addr1 = req.getParameter("m_addr1");
		String m_addr2 = req.getParameter("m_addr2");
		
		String m_addr = m_addr1+" "+m_addr2;
		
		System.out.println("m_id : "+m_id);
		System.out.println("m_pw : "+m_pw);
		System.out.println("m_name : "+m_name);
		System.out.println("m_birth : "+m_birth);
		System.out.println("m_phone : "+m_phone);
		System.out.println("m_email : "+m_email);
		System.out.println("m_addr : "+m_addr);
		
		model.addAttribute("m_id",m_id);
		model.addAttribute("m_pw",m_pw);
		model.addAttribute("m_name",m_name);
		model.addAttribute("m_birth",m_birth);
		model.addAttribute("m_phone",m_phone);
		model.addAttribute("m_email",m_email);
		model.addAttribute("m_addr",m_addr);
		
		
		
		return "member/member_agree2";
	}
	
	@RequestMapping(value = "/member/memberJoin2.do", method = RequestMethod.POST) 
	public String memberJoinPro2(HttpSession session, MemberDTO dto) {
		
		
		
		
		return "redirect:login.do";
	}

}
