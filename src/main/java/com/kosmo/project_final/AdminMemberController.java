package com.kosmo.project_final;

import java.security.Principal;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mybatis.AdminDAOImpl;
import mybatis.MemberDTO;

@Controller
public class AdminMemberController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/admin/adminLogin.do")
	public String adminLogin() {
		
		return "admin/adminLogin";
	}
	
	@RequestMapping("/admin/adminMember.do")
	public String adminMember(Model model, MemberDTO memberDTO) {
		
		ArrayList<MemberDTO> lists = sqlSession.getMapper(AdminDAOImpl.class).adminMember(memberDTO);
		model.addAttribute("lists", lists);
		
		return "admin/adminMember";
	}
}






















