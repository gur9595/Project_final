package com.kosmo.project_final;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import mybatis.MemberDAOImpl;
import mybatis.MemberDTO;
import mybatis.StadiumDAOImpl;
import mybatis.StadiumDTO;


@Controller
public class MemberController {

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/member/memberSelect.do")
	public String member_select() {

		return "/member/member_select";
	}

	@RequestMapping("/member/memberAgree.do")
	public String memberAgree() {

		return "member/member_agree";
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

		model.addAttribute("m_id",m_id);
		model.addAttribute("m_pw",m_pw);
		model.addAttribute("m_name",m_name);
		model.addAttribute("m_birth",m_birth);
		model.addAttribute("m_phone",m_phone);
		model.addAttribute("m_email",m_email);
		model.addAttribute("m_addr",m_addr);



		return "member/member_agree2";
	}



	@RequestMapping(value="/member/memberJoin2.do",method=RequestMethod.POST)
	public String memberJoinPro2(HttpSession session, MemberDTO dto) {

		sqlSession.getMapper(MemberDAOImpl.class).memberJoin(dto);

		return "member/login"; 
	}

	@RequestMapping("/member/member_stadiumIn.do")
	public String member_stadiumIn() {

		return"member/member_stadiumIn";
	}

	@RequestMapping("/member/member_stadiumInsert.do")
	public String member_stadiumInsert(HttpSession session, StadiumDTO dto,HttpServletRequest req) {
		
		String s_addr1 = req.getParameter("s_addr1");
		String s_addr2 = req.getParameter("s_addr2");
		String s_addr = s_addr1+" "+s_addr2;
		
		dto.setS_addr(s_addr);
		
		sqlSession.getMapper(StadiumDAOImpl.class).stadiumInsert(dto);
		
		return"member/member_select";
	}



	@RequestMapping("/member/memberEdit.do")
	public String memberMyPage() {

		return"member/memberEdit";
	}

	@RequestMapping("/member/memberHistory.do")
	public String memberOMyPage() {

		return"member/memberHistory";
	}
	
	@RequestMapping("/member/error.do")
	public String error(){
		return "/member/error";
	}



}
