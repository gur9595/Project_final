package com.kosmo.project_final;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mybatis.AdminDAOImpl;
import mybatis.ClubDTO;
import mybatis.MemberDTO;

@Controller
public class AdminClubController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/admin/adminClub.do")
	public String adminClub(Model model, ClubDTO clubDTO) {
		
		ArrayList<ClubDTO> lists = sqlSession.getMapper(AdminDAOImpl.class).adminClub(clubDTO);
		model.addAttribute("lists", lists);
		
		return "admin/adminClub"; 
	}
	
	
}
