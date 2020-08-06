package com.kosmo.project_final;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import mybatis.AndroidClubDTO;
import mybatis.AndroidClubMemberDTO;
import mybatis.AndroidGameMemberDTO;
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
	public ArrayList<MemberDTO> clubMember(AndroidClubMemberDTO androidClubMemberDTO){
		
		ArrayList<MemberDTO> clubMemberList = sqlSession.getMapper(ClubDAOImpl.class).clubViewMemberA(androidClubMemberDTO);
		
		return clubMemberList;
		
	}
	
	@RequestMapping("/android/clubViewMatch.do")
	@ResponseBody
	public ArrayList<MatchDTO> clubViewMatch(AndroidClubDTO androidClubDTO){
		
		ArrayList<MatchDTO> clubViewMatch = sqlSession.getMapper(ClubDAOImpl.class).clubViewMatchA(androidClubDTO);
		
		String c_idx = androidClubDTO.getC_idx();
		
		for(MatchDTO matchDTO : clubViewMatch) {
			int g_num = matchDTO.getG_num();
			
			MatchDTO matchDTO2 = sqlSession.getMapper(ClubDAOImpl.class).clubMatchOpponentA(g_num, c_idx);
			
			if(sqlSession.getMapper(ClubDAOImpl.class).clubMatchOpponentCountA(g_num, c_idx)>0) {
				matchDTO.setC_idx(matchDTO2.getC_idx());
				matchDTO.setC_name(matchDTO2.getC_name());
			}else{
				matchDTO.setC_name("상대 없음");
			}
		}
		
		return clubViewMatch;
		
	}
	
	@RequestMapping("/android/clubViewAccept.do")
	@ResponseBody
	public ArrayList<GameDTO> clubViewAccept(AndroidClubDTO androidClubDTO){
		
		ArrayList<GameDTO> clubViewAccept = sqlSession.getMapper(ClubDAOImpl.class).clubViewAcceptA(androidClubDTO);
			
		return clubViewAccept;
		
	}
	
	@RequestMapping("/android/gameMemberApply.do")
	@ResponseBody
	public int gameMemberApplyA(AndroidGameMemberDTO androidGameMemberDTO) {
		
		int result = sqlSession.getMapper(ClubDAOImpl.class).gameMemberApplyA(androidGameMemberDTO);
		
		
		
		return result;
	}
	
	

}
