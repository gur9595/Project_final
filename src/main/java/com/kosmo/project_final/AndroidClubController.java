package com.kosmo.project_final;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import mybatis.AndroidClubDTO;
import mybatis.AndroidClubMemberDTO;
import mybatis.AndroidGameMemberDTO;
import mybatis.AndroidMatchDTO;
import mybatis.ClubDAOImpl;
import mybatis.ClubDTO;
import mybatis.ClubMemberDTO;
import mybatis.GameDTO;
import mybatis.GameMemberDTO;
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
	public ArrayList<MemberDTO> clubMember(AndroidClubMemberDTO androidClubMemberDTO, HttpServletRequest req){
		System.out.println("getC_idx : "+androidClubMemberDTO.getC_idx());		
		ArrayList<MemberDTO> clubMemberList = sqlSession.getMapper(ClubDAOImpl.class).clubViewMemberA(androidClubMemberDTO);
		
		return clubMemberList;
		
	}
	
	@RequestMapping("/android/gameMemberList.do")
	@ResponseBody
	public ArrayList<MemberDTO> gameMemberList(AndroidGameMemberDTO androidGameMemberDTO){
		
		System.out.println("getG_idx : "+androidGameMemberDTO.getG_idx());
		
		ArrayList<MemberDTO> gameMemberList = sqlSession.getMapper(ClubDAOImpl.class).gameMemberList(androidGameMemberDTO);
		
		return gameMemberList;
		
	}
	
	@RequestMapping("/android/clubViewMatch.do")
	@ResponseBody
	public ArrayList<AndroidMatchDTO> clubViewMatch(AndroidClubDTO androidClubDTO){
		
		int g_idx = 0; 
		String c_idx = androidClubDTO.getC_idx();
		String m_id = androidClubDTO.getM_id();
		
		ArrayList<AndroidMatchDTO> clubViewMatch = sqlSession.getMapper(ClubDAOImpl.class).clubViewMatchA(androidClubDTO);
		
		
		for(AndroidMatchDTO androidMatchDTO : clubViewMatch) {
			int g_num = androidMatchDTO.getG_num();
			
			MatchDTO matchDTO = sqlSession.getMapper(ClubDAOImpl.class).clubMatchOpponentA(g_num, c_idx);
			
			if(sqlSession.getMapper(ClubDAOImpl.class).clubMatchOpponentCountA(g_num, c_idx)>0) {
				androidMatchDTO.setC_idx(matchDTO.getC_idx());
				androidMatchDTO.setC_name(matchDTO.getC_name());
			}else{
				androidMatchDTO.setC_name("상대 없음");
			}
			
			g_idx = androidMatchDTO.getG_idx();
			
			int gm_check = sqlSession.getMapper(ClubDAOImpl.class).gameMemberCheck(g_idx, m_id);
			
			if(gm_check == 0) {
				androidMatchDTO.setGm_check("0");
			}
			else if(gm_check != 0) {
				androidMatchDTO.setGm_check("1");
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
	
	@RequestMapping("/android/clubTacticBoard.do")
	@ResponseBody
	public ArrayList<String> clubTacticBoard(HttpServletRequest req, Model model) {
		
		int g_idx = Integer.parseInt(req.getParameter("g_idx"));
		
		ArrayList<GameMemberDTO> lists = sqlSession.getMapper(ClubDAOImpl.class).clubMakingForm(g_idx); 
		
		ArrayList<String> squad = new ArrayList<String>();
		ArrayList<String> bench = new ArrayList<String>();
		int check = 0;
		for(int i =0; i<26; i++) {
			check = 0;
			for(GameMemberDTO gameMemberDTO : lists) {
				if (i==gameMemberDTO.getGm_form()) {
					squad.add(i, gameMemberDTO.getM_name());
					check++;
				}
			}
			if(check==0)
			squad.add(i, "");
		}
		
		for(GameMemberDTO gameMemberDTO : lists) {
			if (gameMemberDTO.getGm_form() == (-1)) {
				bench.add(gameMemberDTO.getM_name());
			}
		}	
		
		model.addAttribute("squad", squad);  
		model.addAttribute("bench", bench);  

		return squad;
	}
	
	@RequestMapping("/android/gameMemberApply.do")
	@ResponseBody
	public Map<String, Object> gameMemberApplyA(AndroidGameMemberDTO androidGameMemberDTO) {

		System.out.println("getG_idx : "+androidGameMemberDTO.getG_idx());
		System.out.println("getM_id : "+androidGameMemberDTO.getM_id());

		Map<String,Object> applyInfo = new HashMap<String, Object>();
		int gameMember = sqlSession.getMapper(ClubDAOImpl.class).gameMemberApplyA(androidGameMemberDTO);
		
		if(gameMember==0) {
			applyInfo.put("isApply", 0);
		}
		else if(gameMember!=0) {
			applyInfo.put("isLogin", 1);
		}
		return applyInfo;
	}
	
	@RequestMapping("/android/gameMemberReject.do")
	@ResponseBody
	public Map<String, Object> gameMemberRejectA(AndroidGameMemberDTO androidGameMemberDTO) {
		
		System.out.println("getG_idx : "+androidGameMemberDTO.getG_idx());
		System.out.println("getM_id : "+androidGameMemberDTO.getM_id());
		
		Map<String,Object> rejectInfo = new HashMap<String, Object>();
		int gameMember = sqlSession.getMapper(ClubDAOImpl.class).gameMemberRejectA(androidGameMemberDTO);
		
		if(gameMember==0) {
			rejectInfo.put("isReject", 0);
		}
		else if(gameMember!=0) {
			rejectInfo.put("isReject", 1);
		}
		return rejectInfo;
	}
	
	

}
