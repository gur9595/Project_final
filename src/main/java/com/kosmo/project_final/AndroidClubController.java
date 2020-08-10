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
import mybatis.AndroidMatchDTO;
import mybatis.AndroidMemberDTO;
import mybatis.AndroidRankingDTO;
import mybatis.ClubDAOImpl;
import mybatis.ClubDTO;
import mybatis.ClubMemberDTO;
import mybatis.GameDTO;
import mybatis.GameMemberDTO;
import mybatis.MatchDTO;
import mybatis.MemberDTO;
import mybatis.RankingDTO;

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
		
		String g_idx = null; 
		String c_idx = androidClubDTO.getC_idx();
		String m_id = androidClubDTO.getM_id();
		
		ArrayList<AndroidMatchDTO> clubViewMatch = sqlSession.getMapper(ClubDAOImpl.class).clubViewMatchA(androidClubDTO);
		
		
		for(AndroidMatchDTO androidMatchDTO : clubViewMatch) {
			int g_num = Integer.parseInt(androidMatchDTO.getG_num());
			
			MatchDTO matchDTO = sqlSession.getMapper(ClubDAOImpl.class).clubMatchOpponentA(g_num, c_idx);
			
			if(sqlSession.getMapper(ClubDAOImpl.class).clubMatchOpponentCountA(g_num, c_idx)>0) {
				androidMatchDTO.setC_idx(matchDTO.getC_idx());
				androidMatchDTO.setC_name(matchDTO.getC_name());
			}else{
				androidMatchDTO.setC_name("상대 없음");
			}
			
			g_idx = String.valueOf(androidMatchDTO.getG_idx());
			
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
	
	//팀원 골랭킹
	@RequestMapping("/android/clubMemberGoal.do")
	@ResponseBody
	public ArrayList<AndroidMemberDTO> clubMemberGoal(AndroidMemberDTO androidMemberDTO){
		
		System.out.println("getC_idx() : "+androidMemberDTO.getC_idx());
		
		ArrayList<AndroidMemberDTO> goalRank = sqlSession.getMapper(ClubDAOImpl.class).clubGoalRankA(androidMemberDTO);
		
		return goalRank;
	}

	@RequestMapping("/android/clubSearch.do")
	@ResponseBody
	public ArrayList<AndroidClubDTO> clubSearch(AndroidClubDTO androidClubDTO){
		
		ArrayList<AndroidClubDTO> clubSearch = sqlSession.getMapper(ClubDAOImpl.class).clubSearchFilterA(androidClubDTO);
		
		return clubSearch;
	}
	
	/*
	 * @RequestMapping("/android/clubTotalRanking.do")
	 * 
	 * @ResponseBody public ArrayList<AndroidRankingDTO> clubTotalRanking(){
	 * 
	 * ArrayList<AndroidRankingDTO> clubTotalRanking =
	 * sqlSession.getMapper(ClubDAOImpl.class).clubTotalRankingA();
	 * 
	 * for(AndroidRankingDTO dto : clubTotalRanking) {
	 * 
	 * int wins = dto.getWins(); int matches = dto.getMatches(); double winRate = 0;
	 * 
	 * if(matches==0) { dto.setWinRate(0); }else { winRate = (double) wins / matches
	 * * 100; winRate = Math.round(winRate * 100) / 100;
	 * dto.setWinRate((int)winRate); }
	 * 
	 * }
	 * 
	 * return clubTotalRanking; }
	 * 
	 * @RequestMapping("/android/clubAreaRanking.do")
	 * 
	 * @ResponseBody public ArrayList<AndroidRankingDTO>
	 * clubAreaRanking(AndroidRankingDTO androidRankingDTO){
	 * 
	 * ArrayList<AndroidRankingDTO> clubAreaRanking =
	 * sqlSession.getMapper(ClubDAOImpl.class).clubAreaRankingA(androidRankingDTO);
	 * for(AndroidRankingDTO dto : clubAreaRanking) {
	 * 
	 * int wins = dto.getWins(); int matches = dto.getMatches(); double winRate = 0;
	 * 
	 * if(matches==0) { dto.setWinRate(0); }else { winRate = (double) wins / matches
	 * * 100; winRate = Math.round(winRate * 100) / 100;
	 * dto.setWinRate((int)winRate); }
	 * 
	 * }
	 * 
	 * return clubAreaRanking; }
	 * 
	 * 
	 * //팀원 어시랭킹
	 * 
	 * @RequestMapping("/android/clubMemberAssist.do")
	 * 
	 * @ResponseBody public ArrayList<AndroidMemberDTO>
	 * clubMemberAssist(AndroidMemberDTO androidMemberDTO){
	 * 
	 * System.out.println("getC_idx() : "+androidMemberDTO.getC_idx());
	 * 
	 * ArrayList<AndroidMemberDTO> assistRank =
	 * sqlSession.getMapper(ClubDAOImpl.class).clubAssistRankA(androidMemberDTO);
	 * 
	 * return assistRank; }
	 * 
	 * //팀원 공포랭킹
	 * 
	 * @RequestMapping("/android/clubMemberPoint.do")
	 * 
	 * @ResponseBody public ArrayList<AndroidMemberDTO>
	 * clubMemberPoint(AndroidMemberDTO androidMemberDTO){
	 * 
	 * System.out.println("getC_idx() : "+androidMemberDTO.getC_idx());
	 * 
	 * ArrayList<AndroidMemberDTO> pointRank =
	 * sqlSession.getMapper(ClubDAOImpl.class).clubPointRankA(androidMemberDTO);
	 * 
	 * return pointRank; }
	 * 
	 * //팀원 경기랭킹
	 * 
	 * @RequestMapping("/android/clubMemberAppearance.do")
	 * 
	 * @ResponseBody public ArrayList<AndroidMemberDTO>
	 * clubMemberAppearance(AndroidMemberDTO androidMemberDTO){
	 * 
	 * System.out.println("getC_idx() : "+androidMemberDTO.getC_idx());
	 * 
	 * ArrayList<AndroidMemberDTO> appearanceRank =
	 * sqlSession.getMapper(ClubDAOImpl.class).clubAppearanceRankA(androidMemberDTO)
	 * ;
	 * 
	 * return appearanceRank; }
	 */
	@RequestMapping("/android/clubTotalRanking.do")
	   @ResponseBody
	   public ArrayList<AndroidRankingDTO> clubTotalRanking(){
	      
	      ArrayList<AndroidRankingDTO> clubTotalRanking = sqlSession.getMapper(ClubDAOImpl.class).clubTotalRankingA();
	      
	      for(AndroidRankingDTO dto : clubTotalRanking) {

	         int wins = dto.getWins();
	         int matches = dto.getMatches();
	         double winRate = 0;

	         if(matches==0) {
	            dto.setWinRate(0);
	         }else {
	            winRate = (double) wins / matches * 100;
	            winRate = Math.round(winRate * 100) / 100;
	            dto.setWinRate((int)winRate);
	         }

	      }
	      
	      return clubTotalRanking;
	   }
	   
	   @RequestMapping("/android/clubAreaRanking.do")
	   @ResponseBody
	   public ArrayList<AndroidRankingDTO> clubAreaRanking(AndroidRankingDTO androidRankingDTO){
	      
	      ArrayList<AndroidRankingDTO> clubAreaRanking = sqlSession.getMapper(ClubDAOImpl.class).clubAreaRankingA(androidRankingDTO);
	      for(AndroidRankingDTO dto : clubAreaRanking) {

	         int wins = dto.getWins();
	         int matches = dto.getMatches();
	         double winRate = 0;

	         if(matches==0) {
	            dto.setWinRate(0);
	         }else {
	            winRate = (double) wins / matches * 100;
	            winRate = Math.round(winRate * 100) / 100;
	            dto.setWinRate((int)winRate);
	         }

	      }
	      
	      return clubAreaRanking;
	   }
	   
	   
	   //팀원 어시랭킹
	   @RequestMapping("/android/clubMemberAssist.do")
	   @ResponseBody
	   public ArrayList<AndroidMemberDTO> clubMemberAssist(AndroidMemberDTO androidMemberDTO){
	      
	      System.out.println("getC_idx() : "+androidMemberDTO.getC_idx());
	      
	      ArrayList<AndroidMemberDTO> assistRank = sqlSession.getMapper(ClubDAOImpl.class).clubAssistRankA(androidMemberDTO);
	      
	      return assistRank;
	   }
	    
	   //팀원 공포랭킹
	   @RequestMapping("/android/clubMemberPoint.do")
	   @ResponseBody
	   public ArrayList<AndroidMemberDTO> clubMemberPoint(AndroidMemberDTO androidMemberDTO){
	      
	      System.out.println("getC_idx() : "+androidMemberDTO.getC_idx());
	      
	      ArrayList<AndroidMemberDTO> pointRank = sqlSession.getMapper(ClubDAOImpl.class).clubPointRankA(androidMemberDTO);
	      
	      return pointRank;
	   }
	   
	   //팀원 경기랭킹
	   @RequestMapping("/android/clubMemberAppearance.do")
	   @ResponseBody
	   public ArrayList<AndroidMemberDTO> clubMemberAppearance(AndroidMemberDTO androidMemberDTO){
	      
	      System.out.println("getC_idx() : "+androidMemberDTO.getC_idx());
	      
	      ArrayList<AndroidMemberDTO> appearanceRank = sqlSession.getMapper(ClubDAOImpl.class).clubAppearanceRankA(androidMemberDTO);
	      
	      return appearanceRank;
	   }
	   
	
	//g_check 값 안드로이드에 보내주기
	@RequestMapping("/android/select_qrcheck.do")
	@ResponseBody
	public ArrayList<AndroidMatchDTO> select_qrcheck(AndroidMatchDTO androidMatchDTO){
		
		System.out.println("getC_idx() : "+androidMatchDTO.getG_idx());
		
		ArrayList<AndroidMatchDTO> select_qrcheck = sqlSession.getMapper(ClubDAOImpl.class).select_qrcheckA(androidMatchDTO);
		
		return select_qrcheck;
	}
	
	//버튼누르고 상대 평가(나->상대)
	@RequestMapping("/android/my_QR_Check.do")
	public String my_QR_Check(HttpServletRequest req, GameDTO gameDTO, ClubDTO clubDTO,
			Model model) {
		
		String g_idx1 = req.getParameter("g_idx");
		int g_idx = Integer.parseInt(g_idx1);
		
		String g_num = req.getParameter("g_num");
		
		System.out.println("g_idx : "+g_idx);
		System.out.println("g_num : "+g_num);
		
		gameDTO.setG_qrcheck("yes");
		gameDTO.setG_idx(g_idx);
		
		//check바꾸기
		sqlSession.getMapper(ClubDAOImpl.class).qrCheck(gameDTO);
		
		model.addAttribute("g_idx",g_idx);
		model.addAttribute("g_num",g_num);
		
		return "match/my_QR_Check";
	}
	
	//QR스캔하고 상대가 평가(상대->나)
	@RequestMapping("/android/your_QR_Check.do")
	public String your_QR_Check(HttpServletRequest req, GameDTO gameDTO, ClubDTO clubDTO,
			Model model) {
		
		String g_idx1 = req.getParameter("g_idx");
		int g_idx = Integer.parseInt(g_idx1);
		
		String g_num = req.getParameter("g_num");
		
		System.out.println("g_idx : "+g_idx);
		System.out.println("g_num : "+g_num);
		
		gameDTO.setG_qrcheck("yes");
		gameDTO.setG_idx(g_idx);
		
		
		//check바꾸기
		sqlSession.getMapper(ClubDAOImpl.class).qrCheck(gameDTO);

		model.addAttribute("g_idx",g_idx);
		model.addAttribute("g_num",g_num);
		
		return "match/your_QR_Check";
	}
	
	
	

}
