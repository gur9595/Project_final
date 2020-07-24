package com.kosmo.project_final;

import java.util.ArrayList;
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

import mybatis.AdminDAOImpl;
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
	
	@RequestMapping("/match/gameInsert.do")
	public String gameInsert() {
		
		// 로그인한 아이디값으로 Member DB 접근해서 소속 클럽명 가져와서 리턴하기
		
		return "match/gameInsert";
	}

	@RequestMapping("/match/game_list.do")
	public String game_list(Model model, HttpServletRequest req) {
		
		//리스트 페이지에 출력할 게시물 가져오기
		ArrayList<GameDTO> lists = sqlSession.getMapper(MatchDAOImpl.class).gameList();
		
//		//페이지 번호에 대한 처리
//		String path = req.getContextPath() + "/mybatis/list.do?";
//		String pagingImg = PagingUtil.pagingImg(totalRecordCount, pageSize, blockPage, nowPage, path);
//		model.addAttribute("pagingImg", pagingImg);
		String[] addr;
		String date, g_gu, g_time;
		for(GameDTO dto : lists) {
			//내용에 대해 줄바꿈 처리
			String temp = dto.getG_memo().replace("\r\n", "<br>");
			dto.setG_memo(temp);
			
			date = dto.getG_date().substring(0, 10);			
			g_time = dto.getG_date().substring(11, 13);
			addr = dto.getG_saddr().split(" ");
			g_gu = addr[1];
			
			dto.setG_date(date);
			dto.setG_time(g_time);
			dto.setG_gu(g_gu);
			
		}		
		
		//model 객체에 저장
		model.addAttribute("lists", lists);

		
		return "match/game_list";
	}

	@RequestMapping("/match/player.do")
	public String player() {
		
		return "match/player";
	}
	
	@RequestMapping("match/map.do")
	public String map() {
		
		return "match/map";
	}
	
	@RequestMapping("/match/gameApply.do")
	public String gameApply(Model model, HttpServletRequest req, HttpSession session) {
		
//		//세션영역에 사용자정보가 이쓴ㄴ지 확인
//		if(session.getAttribute("siteUserInfo") == null) {
//			//로그인이 해제된 상태라면 로그인 페이지로 이동한다.
//			return "redirect:login.do";
//		}
		
		String date = req.getParameter("g_date");
		String time = req.getParameter("s_time") + req.getParameter("e_time");
		int g_num = sqlSession.getMapper(AdminDAOImpl.class).get_Gnum();
		g_num++;
		
		GameDTO gameDTO = new GameDTO();
		gameDTO.setC_idx(Integer.parseInt(req.getParameter("c_idx")));
		gameDTO.setG_sname(req.getParameter("g_sname"));
		gameDTO.setG_saddr(req.getParameter("g_saddr"));
		gameDTO.setG_type(req.getParameter("g_type"));
		gameDTO.setG_date(date + ":" + time);
		gameDTO.setG_memo(req.getParameter("g_memo"));
		gameDTO.setG_num(g_num);
		
		
		sqlSession.getMapper(MatchDAOImpl.class).gameApply(gameDTO);
		sqlSession.getMapper(AdminDAOImpl.class).set_Gnum(g_num);
		
		
//		//Mybatis사용
//		sqlSession.getMapper(MatchDAOImpl.class).gameApply(
//				req.getParameter("name"), req.getParameter("contents"), 
//					((MemberDTO)session.getAttribute("siteUserInfo")).getId());
		/*
		세션영역에 저장된 MemberVo객체에서 아이디 가져오기
		1. Object타입으로 저장된 VO객체를 가져온다.
		2. MemberVo 타입으로 형 변환 한다.
		3. 형 변환된 객체를 통해 getter()를 호출하여 아이디를 얻어온다.
		*/
		
		return "redirect:matchMain.do";
	}
	
}
























