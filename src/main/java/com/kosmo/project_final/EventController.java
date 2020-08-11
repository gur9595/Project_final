package com.kosmo.project_final;


import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;

import mybatis.EventDAOImpl;
import mybatis.EventDTO;
import utils.boardPaging;

@Controller
public class EventController {
	
	@Autowired
	private SqlSession sqlSession;
	
	//업로드 페이지
	@RequestMapping("event/eventWrite.do")
	public String eventWrite() {
		
		//세션 확인 생략 
		
		return "event/event_upload";
	}
	
	//업로드 처리
	@RequestMapping(value="/event/eventUpload.do", method = RequestMethod.POST)
	public String eventUpload(Model model, HttpServletRequest req) {
		
		EventDTO eventDTO = new EventDTO();
		eventDTO.setE_type(req.getParameter("e_type"));
		eventDTO.setE_title(req.getParameter("e_title"));
		eventDTO.setE_contents(req.getParameter("editordata"));
		
		String start = req.getParameter("e_start");
		Date e_start = Date.valueOf(start);
		String end = req.getParameter("e_end");
		Date e_end = Date.valueOf(end);  
		
		eventDTO.setE_start(e_start);
		eventDTO.setE_end(e_end);
		
		sqlSession.getMapper(EventDAOImpl.class).upload(eventDTO);
		
		System.out.println("title=" + req.getParameter("e_title"));
		
		return "redirect:eventMain.do"; 
	}
	
	//게시글 리스트 출력
	@RequestMapping("/event/eventMain.do")
	public String eventList(Model model, HttpServletRequest req) {
		
		EventDTO eventDTO = new EventDTO();
		
		//페이지 번호에 대한 처리
		int totalRecordCount = 
				sqlSession.getMapper(EventDAOImpl.class).getTotalCount(eventDTO);
		
		int pageSize = 6;
		int blockPage = 2;
		
		int nowPage = req.getParameter("nowPage")==null?
				1 : Integer.parseInt(req.getParameter("noePage"));
		int start = (nowPage-1) * pageSize + 1;
		int end = nowPage * pageSize;
		
		//위에서 계산한 start, end를 DTO에 저장
		eventDTO.setStart(start);
		eventDTO.setEnd(end);
		
		//리스트 페이지에 출력할 이벤트 목록
		ArrayList<EventDTO> e_list = sqlSession.getMapper(EventDAOImpl.class).eventList();
		
		//페이지 번호에 대한 처리
		String pagingImg = 
				boardPaging.pagingImg(totalRecordCount, pageSize, 
						blockPage, nowPage, req.getContextPath() + "/event/eventMain.do?");
		
		model.addAttribute("pagingImg", pagingImg);
		
		model.addAttribute("e_list", e_list);
		
		return "event/event_main";  
	}
	
	//상세보기
	@RequestMapping("/event/eventView.do")
	public String evetView(Model model, HttpServletRequest req) {
		
		EventDTO viewRow = sqlSession.getMapper(EventDAOImpl.class).eventView(Integer.parseInt(req.getParameter("e_idx")));
		 
		model.addAttribute("viewRow", viewRow);
		
		return "event/event_view";
	}
	
}