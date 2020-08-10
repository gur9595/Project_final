package com.kosmo.project_final;


import java.security.Principal;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import mybatis.StadiumDAOImpl;
import mybatis.StadiumDTO;
import mybatis.StadiumGameDTO;
import utils.StadiumPaging;
import mybatis.AdminDAOImpl;
import mybatis.ClubDAOImpl;
import mybatis.ClubDTO;
import mybatis.GameDTO;
import mybatis.GameMemberDTO;
import mybatis.MatchDAOImpl;

@Controller
public class AndroidMatchController {
	

	/*
	servlet-context.xml에서 생성한 빈을 자동으로 주입받아 Mybatis를
	사용할 준비를 한다. @Autowired는 타입만 일치하면 자동으로 주입 받을 수 있다.
	*/
	@Autowired
	private SqlSession sqlSession;
	
	//기본 메인 페이지
	@RequestMapping("/android/matchMain.do")
	@ResponseBody
	public String matchMain(HttpServletRequest req, Principal principal) {
		
		String m_id = "";
		m_id = req.getParameter("m_id");
		if(m_id.equals("") || m_id == null) {
			return "member/login";
		}
		
		
		return "match/match_main";
	}
	
	@RequestMapping("/android/clubTacticBoard.do")
	public String clubTacticBoard(HttpServletRequest req, Model model) {

		int g_idx = 0;
		String reqG_idx = req.getParameter("g_idx");
		System.out.println("reqG_idx : " + reqG_idx);
		if(reqG_idx.contains(".")) {
			System.out.println("g_idx1 : " + g_idx);
			g_idx = Integer.parseInt(reqG_idx.split("\\.")[0]);
			System.out.println("g_idx2 : " + g_idx);
		}
		else {
			g_idx = Integer.parseInt(reqG_idx);
		}
		
		System.out.println(g_idx);
		GameMemberDTO nullDTO = new GameMemberDTO();
		ArrayList<GameMemberDTO> lists = sqlSession.getMapper(ClubDAOImpl.class).clubMakingForm(g_idx);

		ArrayList<GameMemberDTO> squad = new ArrayList<GameMemberDTO>();
		ArrayList<GameMemberDTO> bench = new ArrayList<GameMemberDTO>();
		int check = 0;
		for (int i = 0; i < 26; i++) {
			check = 0;
			for (GameMemberDTO gameMemberDTO : lists) {
				if (i == gameMemberDTO.getGm_form()) {
					squad.add(i, gameMemberDTO);

					check++;
				}
			}
			if (check == 0)
				squad.add(i, nullDTO);
		}

		for (GameMemberDTO gameMemberDTO : lists) {
			if (gameMemberDTO.getGm_form() == (-1)) {
				bench.add(gameMemberDTO);
			}
		}

		model.addAttribute("lists", lists);
		model.addAttribute("squad", squad);
		model.addAttribute("bench", bench);

		return "club/club_tacticboard";
	}
		
}
























