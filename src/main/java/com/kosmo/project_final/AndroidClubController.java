package com.kosmo.project_final;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public ArrayList<MemberDTO> clubMember(AndroidClubMemberDTO androidClubMemberDTO){
		System.out.println("getC_idx : "+androidClubMemberDTO.getC_idx());
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
		AndroidGameMemberDTO gameMember = sqlSession.getMapper(ClubDAOImpl.class).gameMemberApplyA(androidGameMemberDTO);
		if(gameMember==null) {
			applyInfo.put("isApply", 0);
		}else {
			applyInfo.put("isLogin", 1);
			
		}
		
		
		return applyInfo;
	}
	
	

}
