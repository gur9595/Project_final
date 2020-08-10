package com.kosmo.project_final;

import java.security.Principal;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mybatis.AdminDAOImpl;
import mybatis.ClubDTO;
import mybatis.ManagerRequestDTO;
import mybatis.MemberDTO;
import mybatis.StadiumDTO;

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
	
	@RequestMapping("/admin/adminLogin.do")
	public String adminLogin() {
		
		return "admin/adminLogin";
	}
	
	@RequestMapping("/admin/adminMember.do")
	public String adminMember(Model model, MemberDTO memberDTO) {
		
		ArrayList<MemberDTO> lists = sqlSession.getMapper(AdminDAOImpl.class).adminMember(memberDTO);
		model.addAttribute("lists", lists);
		
		return "admin/adminMember";
	}
	
	@RequestMapping("/admin/MemberDelete.do")
	public String memberdelete(Model model, MemberDTO memberDTO,HttpServletRequest req) {
		
		String m_id = req.getParameter("m_id");
		 
		sqlSession.getMapper(AdminDAOImpl.class).MemberDelete(m_id);
		
		return "redirect:/admin/adminMember.do";
	}
	
	@RequestMapping("/admin/adminMain.do")
	public String adminMain(HttpSession session,Principal principal) {
		
		session.setAttribute("m_id", principal.getName());
		
		return "admin/adminMain";
	}
	
	@RequestMapping("/admin/adminClub.do")
	public String adminClub(Model model, ClubDTO clubDTO) {
		
		ArrayList<ClubDTO> lists = sqlSession.getMapper(AdminDAOImpl.class).adminClub(clubDTO);
		
		model.addAttribute("lists", lists);
		
		return "admin/adminClub"; 
	}
	
	@RequestMapping("/admin/adminBoard.do")
	public String adminBoard() {
		
		return "admin/adminBoard";
	}
	
	@RequestMapping("/admin/adminStadium.do")
	public String adminStadium(Model model) { 
		
		ArrayList<StadiumDTO> lists = sqlSession.getMapper(AdminDAOImpl.class).adminStadium();
		
		for(StadiumDTO dto : lists) {
			String memo = dto.getS_memo();
			memo = memo.replaceAll("(\r\n|\r|\n|\n\r)", "</br>");
			dto.setS_memo(memo);
		}
		
		model.addAttribute("lists", lists);
		
		return "admin/adminStadium";
	}
	
	@RequestMapping("/admin/adminStadiumApply.do")
	public String adminStadiumApply(Model model,HttpServletRequest req) { 
		
		String s_id = req.getParameter("s_id");
		
		sqlSession.getMapper(AdminDAOImpl.class).adminStadiumApply(s_id);
		
		return "admin/adminStadium";
	}
	
}

