package com.kosmo.project_final;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mybatis.ClubDAOImpl;
import mybatis.ClubDTO;
import mybatis.ParameterDTO;

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
	
	//클럽 생성
	@RequestMapping(value="/club/clubCreate.do", method = RequestMethod.POST)
	public String clubCreatePro(HttpSession session, ClubDTO clubdto) {
		
		sqlSession.getMapper(ClubDAOImpl.class).clubCreate(clubdto);
		
		return "club/club_main";
	}
	
	//클럽 검색
	/*
	 * @RequestMapping(value="/club/clubSearch.do") public String
	 * clubSearchPro(Model model, HttpServletRequest req) {
	 * 
	 * ParameterDTO parameterDTO = new ParameterDTO();
	 * parameterDTO.setSearchTxt(req.getParameter("searchTxt"));
	 * System.out.println("검색어:"+parameterDTO.getSearchTxt());
	 * 
	 * //리스트 페이지에 출력할 게시물 가져오기 ArrayList<ClubDTO>lists =
	 * sqlSession.getMapper(ClubDAOImpl.class) .listsPage(parameterDTO);
	 * 
	 * //model객체에 저장 model.addAttribute("lists", lists);
	 * 
	 * return "club/club_main"; }
	 */
	
	
}










