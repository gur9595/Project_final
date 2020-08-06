package com.kosmo.project_final;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mybatis.EventDAOImpl;
import mybatis.EventDTO;

@Controller
public class EventController {
	
	@Autowired
	private SqlSession sqlSession;
	
	//이벤트 메인 페이지
	@RequestMapping("/event/eventMain.do")
	public String eventMain() {
		
		return "event/event_main";
	}
	
	//이벤트 업로드 페이지
	@RequestMapping("/event/eventUpload.do")
	public String eventUpload(Model model, HttpSession session, HttpServletRequest req) {
		
		/*
		 * EventDTO eventDTO = new EventDTO();
		 * eventDTO.setE_type(req.getParameter("e_type")); //이벤트 종류
		 * eventDTO.setE_period(req.getParameter("e_period")); //이벤트기간
		 * eventDTO.setE_title(req.getParameter("e_title")); //제목
		 * eventDTO.setE_contents(req.getParameter("e_contents")); //내용
		 * eventDTO.setE_thumbnail(req.getParameter("e_thumbnail")); //썸네일(리스트 노출)
		 * eventDTO.setE_image(req.getParameter("e_image")); //이미지 첨부파일(상세보기 노출)
		 * eventDTO.setE_tag(req.getParameter("e_tag")); //태그(태그로 검색가능)
		 * eventDTO.setE_date(req.getParameter("e_data")); //게시일
		 * 
		 * 
		 * sqlSession.getMapper(EventDAOImpl.class).upload(eventDTO);
		 */
		
		return "event/event_upload";
	}

}
