package com.kosmo.project_final;


import java.security.Principal;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import mybatis.StadiumDAOImpl;
import mybatis.StadiumDTO;
import mybatis.StadiumGameDTO;
import utils.StadiumPaging;
import mybatis.AdminDAOImpl;
import mybatis.AndroidMatchDTO;
import mybatis.ClubDAOImpl;
import mybatis.ClubDTO;
import mybatis.GameDTO;
import mybatis.MatchDAOImpl;
import mybatis.MatchDTO;

@Controller
public class AndroidMatchController {
	

	/*
	servlet-context.xml에서 생성한 빈을 자동으로 주입받아 Mybatis를
	사용할 준비를 한다. @Autowired는 타입만 일치하면 자동으로 주입 받을 수 있다.
	*/
	@Autowired
	private SqlSession sqlSession;
	
	//기본 메인 페이지
	@RequestMapping("/android/matchMain.do")
	@ResponseBody
	public String matchMain(HttpServletRequest req, Principal principal) {
		
		String m_id = "";
		m_id = req.getParameter("m_id");
		if(m_id.equals("") || m_id == null) {
			return "member/login";
		}
		
		
		return "match/match_main";
	}
	
	@RequestMapping("/match/my_ratingmemo.do")
	public String my_ratingmemo (HttpServletRequest req,AndroidMatchDTO androidMatchDTO) {
		
		String g_idx=req.getParameter("g_idx");
		String g_num=req.getParameter("g_num");
		androidMatchDTO.setG_idx(g_idx);
		androidMatchDTO.setG_num(g_num);
		System.out.println("g_idx : "+g_idx);
		System.out.println("g_num : "+g_num);
		sqlSession.getMapper(MatchDAOImpl.class).my_ratingmemo(androidMatchDTO);
		
		return "match/android_QR_success";
	}
	
	@RequestMapping("/match/your_ratingmemo.do")
	public String your_ratingmemo (HttpServletRequest req,AndroidMatchDTO androidMatchDTO) {
		
		String g_idx=req.getParameter("g_idx");
		String g_num=req.getParameter("g_num");
		androidMatchDTO.setG_idx(g_idx);
		androidMatchDTO.setG_num(g_num);
		System.out.println("g_idx : "+g_idx);
		System.out.println("g_num : "+g_num);
		sqlSession.getMapper(MatchDAOImpl.class).your_ratingmemo(androidMatchDTO);
		
		return "match/android_QR_success";
	}
	
	
		
}
























