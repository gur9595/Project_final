package com.kosmo.project_final;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventController {
	
	@Autowired
	private SqlSession sqlSession;
	
	//이벤트 메인 페이지
	@RequestMapping("/event/eventMain.do")
	public String eventMain() {
		
		return "event/event_main";
	}
	
	//글쓰기 페이지 검증
	@RequestMapping("/event/eventUpload.do")
	public String eventUpload(Model model, HttpSession session, HttpServletRequest req) {
		
		return "event/event_upload";
	}

}
