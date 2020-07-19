package com.kosmo.project_final;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClubController {
	
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
	@RequestMapping("/club/clubView.do")
	public String clubView() {
		return "club/club_view";
	}
	
	
}
