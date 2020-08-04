package com.kosmo.project_final;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import mybatis.ClubDAOImpl;
import mybatis.ClubDTO;
import mybatis.ClubMemberDTO;
import mybatis.GameDTO;
import mybatis.MatchDTO;
import mybatis.MemberDTO;

@Controller
public class AndroidClubController {
	
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/android/listView.do")
	@ResponseBody
	public ArrayList<ClubDTO> clubListView(ClubMemberDTO clubMemberDTO){
		
		ArrayList<ClubDTO> myclubList = sqlSession.getMapper(ClubDAOImpl.class).myClubListA(clubMemberDTO);
		
		
		return myclubList;
		
	}
	
	@RequestMapping("/android/clubMember.do")
	@ResponseBody
	public ArrayList<MemberDTO> clubMember(ClubMemberDTO clubMemberDTO){
		
		ArrayList<MemberDTO> clubMemberList = sqlSession.getMapper(ClubDAOImpl.class).clubViewMemberA(clubMemberDTO);
		
		
		return clubMemberList;
		
	}
	
	@RequestMapping("/android/clubViewMatch.do")
	@ResponseBody
	public ArrayList<MatchDTO> clubViewMatch(ClubDTO clubDTO){
		
		ArrayList<MatchDTO> clubViewMatch = sqlSession.getMapper(ClubDAOImpl.class).clubViewMatchA(clubDTO);
		
		
		return clubViewMatch;
		
	}
	
	@RequestMapping("/android/clubViewAccept.do")
	@ResponseBody
	public ArrayList<GameDTO> clubViewAccept(ClubDTO clubDTO){
		
		ArrayList<GameDTO> clubViewAccept = sqlSession.getMapper(ClubDAOImpl.class).clubViewAcceptA(clubDTO);
		
		
		return clubViewAccept;
		
	}
	
	
	

}
