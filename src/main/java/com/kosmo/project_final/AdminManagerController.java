package com.kosmo.project_final;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mybatis.AdminDAOImpl;
import mybatis.ManagerRequestDTO;

@Controller
public class AdminManagerController {
	
	@Autowired
	private SqlSession sqlSession;
	
	//매니저 페이지 이동
	@RequestMapping("/admin/adminManager.do")
	public String adminManager(Model model, ManagerRequestDTO dto) {
		
		ArrayList<ManagerRequestDTO> lists = 
				sqlSession.getMapper(AdminDAOImpl.class).listPage(dto);
		
		model.addAttribute("lists", lists);
		
		return "admin/adminManager";
	}
	
	//일반 회원에게 매니저 권한 부여 후 리스트에서 삭제
	@RequestMapping("/admin/managerUpdate.do")
	public String managerUpdate(HttpServletRequest req) {
		
		String m_id = req.getParameter("m_id");
		
		System.out.println("m_id : "+m_id);
		
		sqlSession.getMapper(AdminDAOImpl.class).managerUpdate(m_id);
		sqlSession.getMapper(AdminDAOImpl.class).managerDelete(m_id);
		
		return "redirect:adminManager.do";
	}
	
	//매니저 신청 거절(삭제)
	@RequestMapping("/admin/managerDelete.do")
	public String managerDelete(HttpServletRequest req) {
		
		String m_id = req.getParameter("m_id");
		
		sqlSession.getMapper(AdminDAOImpl.class).managerDelete(m_id);
		
		return "redirect:adminManager.do";
	}
	
}
