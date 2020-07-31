package com.kosmo.project_final;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mybatis.StadiumDAOImpl;
import mybatis.StadiumDTO;
import util.StadiumPaging;

@Controller
public class MatchController {
	
	@Autowired
	private SqlSession sqlSession;
		
	@RequestMapping("/match/matchMain.do")
	public String matchMain() {
		
		return "match/match_main";
	}
	
	@RequestMapping("/match/stadiumMain.do")
	public String stadiumMain(Model model, HttpServletRequest req) {
		
		//파라미터 저장을 위한 DTO객체 생성
		StadiumDTO stadiumDTO = new StadiumDTO();
		stadiumDTO.setS_gu(req.getParameter("select_gugun"));
		stadiumDTO.setS_type(req.getParameter("select_s_type"));
		stadiumDTO.setSearchTxt(req.getParameter("searchTxt"));
		
		if(stadiumDTO.getSearchTxt()!=null && stadiumDTO.getSearchTxt()!="") {
			System.out.println("입력검색어 : " + stadiumDTO.getSearchTxt());
		}
		
		int totalRecordCount = 
				sqlSession.getMapper(StadiumDAOImpl.class).getTotalCount(stadiumDTO);
		
		//페이지 처리를 위한 설정값
		int pageSize = 15;
		int blockPage = 3;
		
		//현재 페이지에 대한 파라미터 처리 및 시작/끝의 rownum구하기
		int nowPage = req.getParameter("nowPage")==null ?
				1 : Integer.parseInt(req.getParameter("nowPage"));
		int start = (nowPage-1) * pageSize + 1;
		int end = nowPage * pageSize;
		
		//위에서 계산한 start, end를 DTO에 저장
		stadiumDTO.setStart(start);
		stadiumDTO.setEnd(end);
		
		//리스트 페이지에 출력할 경기장 목록
		ArrayList<StadiumDTO> stadiumList = 
				sqlSession.getMapper(StadiumDAOImpl.class).stadiumList(stadiumDTO);
		
		//페이지 번호에 대한 처리
		String pagingImg = 
				StadiumPaging.pagingImg(
						totalRecordCount, pageSize, blockPage, nowPage, 
							req.getContextPath() + "/match/stadiumMain.do?");
		model.addAttribute("pagingImg", pagingImg);
		
		
		model.addAttribute("stadiumList", stadiumList);
		
		return "match/stadium_main";
	}
	
	@RequestMapping("/match/stadiumNormalApply.do")
	public String stadiumApply() {
		
		return "match/stadium_apply";
	}
	
	@RequestMapping("/match/gameInsert.do")
	public String gameInsert() {
		
		return "match/gameInsert";
	}

	@RequestMapping("/match/game_list.do")
	public String game_list() {
		
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
	
}
