package com.kosmo.project_final;

import java.security.Principal;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mybatis.BoardDAOImpl;
import mybatis.BoardDTO;
import mybatis.MemberDTO;
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

		int totalRecordCount = sqlSession.getMapper(BoardDAOImpl.class).listPageCount(parameterDTO);

		int pageSize= Integer.parseInt(EnvFileReader.getValue("SpringBbsInit.properties", "springBoard.pageSize"));
		int blockPage= Integer.parseInt(EnvFileReader.getValue("SpringBbsInit.properties", "springBoard.blockPage"));

		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);

		int nowPage = req.getParameter("nowPage") == null ? 1 : Integer.parseInt(req.getParameter("nowPage"));
		
		int start = (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;

		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);

		//리스트 페이지에 출력 할 게시물 가져오기
		ArrayList<BoardDTO> listRows = sqlSession.getMapper(BoardDAOImpl.class).qnaList(parameterDTO);

		//페이지 번호 처리

		int virtualNum = 0;
		int countNum = 0;
		for(BoardDTO dto : listRows) {

			virtualNum = totalRecordCount -(((nowPage-1)*pageSize) + countNum++);
			dto.setVirtualNum(virtualNum);
			
			String temp = dto.getB_title();
			dto.setB_title(temp);
		}
		//model객체에 저장
		String pagingImg = 
				PagingUtil.pagingImg(totalRecordCount,pageSize,blockPage,nowPage,req.getContextPath()+"/customer/qnaList.do?");
		model.addAttribute("pagingImg",pagingImg);
		model.addAttribute("listRows",listRows);

		return "QA/QA_list";
	}

	@RequestMapping("/customer/qnaView.do")
	public String qnaView(Model model,Principal principal,HttpServletRequest req) {
	
		//String m_id = principal.getName();
		int b_idx = Integer.parseInt(req.getParameter("b_idx"));
		String nowPage = req.getParameter("nowPage");
		System.out.println("받아온 idx : "+b_idx);
		System.out.println(nowPage);
		BoardDTO boardDTO = new BoardDTO();
		//int idx = Integer.parseInt(b_idx);
		//boardDTO=sqlSession.getMapper(BoardDAOImpl.class).qnaView(Integer.parseInt(req.getParameter("b_idx")));
		boardDTO=sqlSession.getMapper(BoardDAOImpl.class).qnaView(b_idx);
		//System.out.println("바뀐 idx : "+idx);
		//boardDTO.setM_id(m_id);
		
		boardDTO.setB_content(boardDTO.getB_content().replace("\r\n", "<br/>"));
		
		model.addAttribute("viewRow", boardDTO);
		model.addAttribute("nowPage", nowPage);
		
		return "QA/QA_view";
	}
	
	@RequestMapping("/customer/qnaWrite.do")
	public String qnaWrite(Model model,Principal principal) {
		
		String m_id = principal.getName();
		if(m_id==null) {
			return "member/login";
		}	

		return "QA/QA_write";
	}
	
	@RequestMapping("/customer/qnaWriteAction.do")
	public String qnaWriteAction(Model model,Principal principal,HttpServletRequest req) {
		
		String m_id = principal.getName();
		String b_title = req.getParameter("b_title");
		String b_content = req.getParameter("b_content");
		String b_bname = req.getParameter("b_bname");
		System.out.println("결과값이라네 : "+m_id);
		System.out.println("제목 : "+b_title);
		System.out.println("내용 : "+b_content);
		System.out.println("타입 : "+b_bname);
		
		BoardDTO dto = new BoardDTO();
		dto.setM_id(m_id);
		dto.setB_title(b_title);
		dto.setB_content(b_content);
		dto.setB_bname(b_bname);
		
		sqlSession.getMapper(BoardDAOImpl.class).qnaWriteAction(dto);
				
		return "redirect:qnaList.do";
	}
	
	@RequestMapping("/customer/qnaEdit.do")
	public String qnaEdit(Model model,Principal principal,HttpServletRequest req) {
		
		String m_id = principal.getName();
		if(m_id==null) {
			return "member/login";
		}
		System.out.println("아이디 받아와! : "+m_id);
		
		//String b_idx = req.getParameter("b_idx");
		int b_idx = Integer.parseInt(req.getParameter("b_idx"));
		System.out.println("idx 받아와! : "+b_idx);
		
		ParameterDTO parameterDTO = new ParameterDTO();
		parameterDTO.setB_idx(req.getParameter("b_idx"));
		parameterDTO.setM_id(m_id);
		
		BoardDTO BoardDTO = sqlSession.getMapper(BoardDAOImpl.class).qnaEdit(parameterDTO);
		
		model.addAttribute("viewRow",BoardDTO);
		
		return "QA/QA_edit";
	}
	

	@RequestMapping("/customer/qnaEditAction.do")
	public String qnaEditAction(BoardDTO boardDTO) {
		
		//int applyRow = 
		sqlSession.getMapper(BoardDAOImpl.class).qnaEditAction(boardDTO);
		System.out.println("처리완료");
		//System.out.println("수정된 레코드 수 : " + applyRow);
		
		return "redirect:qnaList.do";
	}

	@RequestMapping("/customer/qnaDelete.do")
	public String qnaDelete(Model model,HttpServletRequest req) {
		
		int b_idx = Integer.parseInt(req.getParameter("b_idx"));
		BoardDTO BoardDTO = new BoardDTO();
		BoardDTO.setB_idx(b_idx);
		sqlSession.getMapper(BoardDAOImpl.class).qnaDelete(BoardDTO);
		
		return "QA/QA_list";
	}
}
