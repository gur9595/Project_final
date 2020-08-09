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
	@PostMapping(value = "/event/eventUpload.do", produces = "application/json")
	@ResponseBody
	public JsonObject eventUpload(@RequestParam("file") MultipartFile multipartFile, 
			Model model, HttpServletRequest req) {
		
		JsonObject jsonObject = new JsonObject();
		
		String fileRoot = req.getSession().getServletContext().getRealPath("/resources/uploadsFile");//저장될 외부 파일 경로
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));//파일 확장자
				
		String savedFileName = UUID.randomUUID() + extension;//저장될 파일 명
		
		File targetFile = new File(fileRoot + savedFileName);	
		
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			jsonObject.addProperty("url", "/summernoteImage/"+savedFileName);
			jsonObject.addProperty("responseCode", "success");
				
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		} 
		
		//eventDTO.setE_thumbnail(req.getParameter("e_thumbnail"));
		//eventDTO.setE_image(req.getParameter("e_image"));
		//eventDTO.setE_tag(req.getParameter("e_tag")); 
		//eventDTO.setE_date(req.getParameter("e_date"));
		
		
		System.out.println("e_type=" + req.getParameter("e_type")+
				"e_contents="+req.getParameter("editordata")); 
		
		return jsonObject;
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