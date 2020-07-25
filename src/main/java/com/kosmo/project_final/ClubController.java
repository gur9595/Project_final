package com.kosmo.project_final;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mybatis.MyBoardDTO;
import mybatis.MybatisDAOImpl;
import mybatis.ParameterDTO;
import util.EnvFileReader;
import util.PagingUtil;

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
	@RequestMapping("/club/clubCreate.do")
	public String clubCreate() {		
		return "club/club_create";
	}
	@RequestMapping("/club/clubView.do")
	public String clubView() {
		return "club/club_view";
	}
	
	//클럽 리스트 출력
	@Autowired
	private SqlSession sqlSession;
	
	//방명록 리스트
	@RequestMapping("/mybatis/list.do")
	public String list(Model model, HttpServletRequest req) {
		
		ParameterDTO parameterDTO = new ParameterDTO();
	    parameterDTO.setSearchField(req.getParameter("searchField")); 
	    parameterDTO.setSearchTxt(req.getParameter("searchTxt"));
	    System.out.println("검색어:" + parameterDTO.getSearchTxt());
		
		int totalRecordCount = sqlSession.getMapper(MybatisDAOImpl.class).getTotalCount(parameterDTO);
			
		
		//페이지 처리를 위한 설정값.
		int pageSize = Integer.parseInt(EnvFileReader.getValue("SpringBbsInit.properties", "springBoard.pageSize"));
		int blockPage = Integer.parseInt(EnvFileReader.getValue("SpringBbsInit.properties", "springBoard.blockPage"));
		
		//전체 페이지 수 계산
		int totalPage =(int)Math.ceil((double)totalRecordCount/pageSize);
		
		//현재페이지에 대한 파라미터 처리 및 시작/끝의 rownum구하기
		int nowPage = req.getParameter("nowPage")==null ? 1 : Integer.parseInt(req.getParameter("nowPage"));
		
		int start =(nowPage-1) * pageSize + 1;
		int end = nowPage * pageSize;
	
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
		
		//리스트 페이지에 출력할 게시물 가져오기
		ArrayList<MyBoardDTO> lists = sqlSession.getMapper(MybatisDAOImpl.class).listPage(parameterDTO);
		
		String pagingImg = PagingUtil.pagingImg(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath() + "/mybatis/list.do?");
		
		model.addAttribute("pagingImg", pagingImg);
		
		//레코드에 대한 가공을 위해 for문으로 반복
		for(MyBoardDTO dto : lists)
		{
			//내용에 대해 줄바꿈 처리
			String temp = dto.getContents().replace("\r\n", "<br/>");
			dto.setContents(temp);
		}
		//model객체에 저장
		model.addAttribute("lists", lists);				
		
		return "07Mybatis/list";
	}
	
	
}
