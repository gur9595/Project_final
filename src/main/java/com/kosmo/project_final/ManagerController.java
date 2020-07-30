package com.kosmo.project_final;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mybatis.ManagerDAOImpl;
import mybatis.ManagerRequestDTO;

@Controller
public class ManagerController {
	@Autowired
	   private SqlSession sqlSession;
	
	@RequestMapping("/manager/managerMain.do")
	public String managerMain() {

		return "manager/manager_main";
	}
	
	@RequestMapping("/manager/managerJoin.do")
	public String managerJoin() {

		return"manager/managerJoin";
	}
	
	@RequestMapping(value = "/manager/managerRequest.do", method = RequestMethod.POST)
	public String managerRequest(Principal principal, ManagerRequestDTO dto,HttpServletRequest req) {
		
		String m_id = principal.getName();
		
		dto.setM_id(m_id);
		
		sqlSession.getMapper(ManagerDAOImpl.class).managerRequest(dto);
		
		return"redirect:/";
	}
}
