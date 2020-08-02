package com.kosmo.project_final;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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

}
