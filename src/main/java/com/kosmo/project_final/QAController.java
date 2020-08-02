package com.kosmo.project_final;

import java.security.Principal;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mybatis.BoardDAOImpl;
import mybatis.BoardDTO;
import mybatis.ParameterDTO;
import utils.EnvFileReader;
import utils.PagingUtil;

@Controller
public class QAController {

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/customer/qnaMain.do")
	public String qnaMain(Principal principal, Model model, HttpServletRequest req) {

		return "QA/QA_main";
	}

	@RequestMapping("/customer/qnaList.do")
	public String qnaList(Principal principal, Model model, HttpServletRequest req) {

		ParameterDTO parameterDTO = new ParameterDTO();
		parameterDTO.setSearchField(req.getParameter("searchField"));
		parameterDTO.setSearchTxt(req.getParameter("searchTxt"));
		System.out.println("검색어 : "+parameterDTO.getSearchTxt());

		int totalRecordCount = sqlSession.getMapper(BoardDAOImpl.class).listPageCount(parameterDTO);

		int pageSize= Integer.parseInt(EnvFileReader.getValue("SpringBbsInit.properties", "springBoard.pageSize"));
		int blockPage= Integer.parseInt(EnvFileReader.getValue("SpringBbsInit.properties", "springBoard.blockPage"));

		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);

		int nowPage = req.getParameter("nowPage") == null ? 1 : Integer.parseInt(req.getParameter("nowPage"));
		
		int start = (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;

		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);


		//페이지 번호 처리
		String pagingImg = 
				PagingUtil.pagingImg(totalRecordCount,pageSize,blockPage,nowPage,req.getContextPath()+"/customer/qnaList.do?");
		model.addAttribute("pagingImg",pagingImg);

		ArrayList<BoardDTO> lists = sqlSession.getMapper(BoardDAOImpl.class).listPage(parameterDTO);

		for(BoardDTO dto : lists) {
			//내용에 대해 줄바꿈 처리
			String temp = dto.getB_content().replace("\r\n", "<br/>");
			dto.setB_content(temp);
		}
		//model객체에 저장
		model.addAttribute("lists",lists);

		return "QA/QA_list";
	}

	@RequestMapping("/customer/qnaView.do")
	public String qnaView(Model model, HttpServletRequest req) {
	
		String idx = req.getParameter("b_idx");
		ArrayList<BoardDTO>  lists = sqlSession.getMapper(BoardDAOImpl.class).listPage(null);
		
		return "QA/QA_view";
	}
	
	@RequestMapping("/customer/qnaWrite.do")
	public String qnaWrite() {

		return "QA/QA_write";
	}

}
