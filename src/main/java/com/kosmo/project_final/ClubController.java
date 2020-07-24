package com.kosmo.project_final;


import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mybatis.ClubDAOImpl;
import mybatis.ClubDTO;

@Controller
public class ClubController {
	
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping("/club/clubMain.do")
	public String clubMain() {		
		return "club/club_main";
	} 
	
	@RequestMapping("/club/clubMyList.do")
	public String clubMyList() {		
		return "club/club_mylist";
	}
	
	@RequestMapping("/club/clubRanking.do")
	public String clubRanking() {		
		return "club/club_ranking";
	}
	@RequestMapping("/club/clubSearch.do")
	public String clubSearch() {		
		return "club/club_search";
	}
	
	@RequestMapping("/club/clubCreate.do")
	public String clubCreate() {	
		
		
		return "club/club_create";
	}
	
	@RequestMapping("/club/clubView.do")
	public String clubView() {
		return "club/club_view";
	}
	
	
	
	@RequestMapping(value="/club/clubCreate.do", method = RequestMethod.POST)
	public String clubCreatePro(HttpSession session, ClubDTO clubdto) {
		
		sqlSession.getMapper(ClubDAOImpl.class).clubCreate(clubdto);
		
		return "club/club_main";
	}
	
	
}
