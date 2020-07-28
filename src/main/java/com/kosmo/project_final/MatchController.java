package com.kosmo.project_final;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import mybatis.AdminDAOImpl;
import mybatis.ClubDTO;
import mybatis.GameDTO;
import mybatis.MatchDAOImpl;

@Controller
public class MatchController {
	
	/*
	servlet-context.xml에서 생성한 빈을 자동으로 주입받아 Mybatis를
	사용할 준비를 한다. @Autowired는 타입만 일치하면 자동으로 주입 받을 수 있다.
	*/
	@Autowired
	private SqlSession sqlSession;
	
	//기본 메인 페이지
	@RequestMapping("/match/matchMain.do")
	public String matchMain() {
		
		return "match/match_main";
	}
	
	@RequestMapping("/match/stadiumMain.do")
	public String stadiumMain() {
		
		return "match/stadium_main";
	}
	
	@RequestMapping("/match/stadiumNormalApply.do")
	public String stadiumApply() {
		
		return "match/stadium_apply";
	}

	//용병페이지
	@RequestMapping("/match/player.do")
	public String player(Model model, HttpServletRequest req, HttpSession session) {
		
		ArrayList<GameDTO> lists = sqlSession.getMapper(MatchDAOImpl.class).playerList();
		
		for(GameDTO dto : lists) {
			//시작시간 쪼개기
			String[] g_time = dto.getG_time().split("~");
			dto.setG_time(g_time[0]);
		}
		
		Collections.sort(lists, new Comparator<GameDTO>() {
			@Override
			public int compare(GameDTO g1, GameDTO g2) {
				
				if(g1.getG_date().equals(g2.getG_date())) {					
					if(Integer.parseInt(g1.getG_time()) < Integer.parseInt(g2.getG_time())) {
						return -1;
					}
					else if(Integer.parseInt(g1.getG_time()) > Integer.parseInt(g2.getG_time())) {
						return 1;
					}
					return 0;
				}
				return 3;
			}
		});
		
		model.addAttribute("lists", lists);
		
		return "match/player";
	}
	
	//용병리스트 모달창에서 용병신청
	@RequestMapping("/match/extraApply.do")
	public String extraApply(Model model, HttpServletRequest req, HttpSession session) {
				
		
		String m_id = (String) (session.getAttribute("m_id"));		
		int g_idx = (Integer.parseInt(req.getParameter("list_idx")));
		
		sqlSession.getMapper(MatchDAOImpl.class).extraApply(m_id, g_idx);		
		
		return "redirect:matchMain.do";
	}
		
	//게임리스트에서 경기장이름 클릭 시 카카오맵을 보여주는 페이지
	@RequestMapping("match/map.do")
	public String map() {
		
		return "match/map";
	}

	//게임 리스트 출력
	@RequestMapping("/match/game_list.do")
	public String game_list(Model model, HttpServletRequest req, HttpSession session) {
        
        ArrayList<GameDTO> lists = sqlSession.getMapper(MatchDAOImpl.class).gameList();
		
		for(GameDTO dto : lists) {
			//내용에 대해 줄바꿈 처리
			String temp = dto.getG_memo().replace("\r\n", "<br>");
			dto.setG_memo(temp);
			//시작시간 쪼개기
			String[] g_time = dto.getG_time().split("~");
			dto.setG_time(g_time[0]);
		}
		
		Collections.sort(lists, new Comparator<GameDTO>() {
			@Override
			public int compare(GameDTO g1, GameDTO g2) {
				
				if(g1.getG_date().equals(g2.getG_date())) {					
					if(Integer.parseInt(g1.getG_time()) < Integer.parseInt(g2.getG_time())) {
						return -1;
					}
					else if(Integer.parseInt(g1.getG_time()) > Integer.parseInt(g2.getG_time())) {
						return 1;
					}
					return 0;
				}
				return 3;
			}
		});
		
		String m_id = (String) session.getAttribute("m_id");
		
		ArrayList<ClubDTO> c_list =  sqlSession.getMapper(MatchDAOImpl.class).getC_name(m_id);
		
		model.addAttribute("c_list", c_list);
		model.addAttribute("lists", lists);

		return "match/game_list";
	}

	//매칭신청(리스트 등록)시 로그인한 사용자가 가입되어있는 클럽 리스트 가져오기
	@RequestMapping("/match/gameInsert.do")
	public String gameInsert(Model model, HttpServletRequest req, HttpSession session) {
		
		String m_id = (String) session.getAttribute("m_id");
		
		ArrayList<ClubDTO> c_list =  sqlSession.getMapper(MatchDAOImpl.class).getC_name(m_id);
		
		model.addAttribute("c_list", c_list);

		return "match/gameInsert";
	}
	
	//매칭신청(리스트 등록)
	@RequestMapping("/match/gameApply.do")
	public String gameApply(Model model, HttpServletRequest req, HttpSession session) {
		
//		//세션영역에 사용자정보가 이쓴ㄴ지 확인
//		if(session.getAttribute("siteUserInfo") == null) {
//			//로그인이 해제된 상태라면 로그인 페이지로 이동한다.
//			return "redirect:login.do";
//		}
				
		String req_date = req.getParameter("g_date");
		Date date = Date.valueOf(req_date);
		String[] addr = req.getParameter("g_saddr").split(" ");
		String s_time = req.getParameter("s_time");
		String e_time = req.getParameter("e_time");
		
		if(s_time.length() == 1) {
			s_time = "0" + s_time;
		}
		if(e_time.length() == 1) {
			e_time = "0" + e_time;
		}
		if(s_time.length() == 0) {
			s_time = "00";
		}
		if(e_time.length() == 0) {
			e_time = "00";
		}
		String time = s_time + "~" + e_time;
		
		int g_num = sqlSession.getMapper(AdminDAOImpl.class).get_Gnum();
		g_num++;
		
		GameDTO gameDTO = new GameDTO();
		gameDTO.setC_idx(Integer.parseInt(req.getParameter("c_idx")));
		gameDTO.setG_sname(req.getParameter("g_sname"));
		gameDTO.setG_saddr(req.getParameter("g_saddr"));
		gameDTO.setG_type(req.getParameter("g_type"));
		gameDTO.setG_date(date);
		gameDTO.setG_memo(req.getParameter("g_memo"));
		gameDTO.setG_num(g_num);
		gameDTO.setG_gu(addr[1]);
		gameDTO.setG_time(time);
		
		
		sqlSession.getMapper(MatchDAOImpl.class).gameApply(gameDTO);
		sqlSession.getMapper(AdminDAOImpl.class).set_Gnum(g_num);
		
		return "redirect:matchMain.do";
	}
			
	//게임리스트 모달창에서 매치신청
	@RequestMapping("/match/matchApply.do")
	public String matchApply(Model model, HttpServletRequest req, HttpSession session) {
				
		GameDTO gameDTO = new GameDTO();
		gameDTO.setG_idx(Integer.parseInt(req.getParameter("list_idx")));
		gameDTO.setC_idx(Integer.parseInt(req.getParameter("c_idx")));		
		
		sqlSession.getMapper(MatchDAOImpl.class).matchApply(gameDTO);		
		
		return "	";
	}
	
}
























