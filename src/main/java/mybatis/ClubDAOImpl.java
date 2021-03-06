package mybatis;


import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface ClubDAOImpl {
	
	//클럽생성
	public int clubCreate(ClubDTO clubDTO);
	
	public int getTotalCount();
	public int getTotalCountFilter(ClubDTO clubDTO);
	
	public ArrayList<ClubDTO> listPage(int start, int end);
	public ArrayList<ClubDTO> listPageFilter(ClubDTO clubDTO);
	
	public int clubApply(ClubMemberDTO clubMemberDTO);
	
	public ArrayList<ClubDTO> myClubList(String id);
	
	public int myClubListCount(String id);
	
	public ClubDTO clubView(int c_idx);
	
	public ArrayList<GameDTO> clubView10History(int c_idx);
	
	public int clubIdx(ClubDTO clubDTO);

	public int clubCreateMember(String m_id, int idx);
	
	public ArrayList<MemberDTO> clubManageApplyList(ClubDTO clubDTO);
	
	public int clubMemberApply(int cm_idx);
	
	public int gameMemberApply(GameMemberDTO gameMemberDTO);
	
	public int gameMemberDrop(GameMemberDTO gameMemberDTO);
	
	public int gameMemberCount(GameMemberDTO gameMemberDTO);
	
	public int ClubMatchApply(GameDTO gameDTO);
	
	public int ClubMatchApplyDelete(GameDTO gameDTO);
	
	public int ClubMatchReject(GameDTO gameDTO);
	
	public int clubMemberReject(int cm_idx);
	
	public ArrayList<MemberDTO> clubViewMember(int c_idx, int start, int end);
	
	public ArrayList<MatchDTO> clubViewMatch(int c_idx);
	
	public ClubDTO clubViewMatchOpponent(int g_num);
	public int isClubViewMatchOpponent(int g_num);

	public MatchDTO clubMatchOpponent(int g_num, int c_idx);
	
	public int clubMatchOpponentCount(int g_num, int c_idx);
	
	public ArrayList<GameDTO> clubViewAccept(int c_idx); 
	
	public ArrayList<GameDTO> clubViewMyApply(int c_idx);
	
	public ArrayList<GameMemberDTO> clubMakingForm(int g_idx);
	
	public int clubMemberCount(int c_idx);
	
	public ArrayList<MemberDTO> clubViewGrade(int c_idx);
	
	public int clubViewUpdate(int c_idx, String cm_grade, String m_id);
	
	public ArrayList<GameDTO> clubHistory(int c_idx);
	
	public MemberDTO clubHeadName(int c_idx);
	
	public ClubMemberDTO getCmgrade(int c_idx, String m_id);
	
	public int checkCmgrade(int c_idx, String m_id);

	public ArrayList<MemberDTO> clubGoalRank(int c_idx);
	
	public ArrayList<MemberDTO> clubAssistRank(int c_idx);
	
	public ArrayList<MemberDTO> clubPointRank(int c_idx);
	
	public ArrayList<MemberDTO> clubAppearanceRank(int c_idx);
	
	public int gameFormPng(int g_idx, String fileName);
	
	public GameDTO gameInfo(int g_idx);
	
	public int getTotalCountHistory(int c_idx);
	
	public ArrayList<MatchDTO> clubMatchHistory(int c_idx, int start, int end);
	
	public ArrayList<RankingDTO> clubTotalRanking();
	
	public int goalInsert(String goal, String assist, int g_idx);
	
	public ArrayList<GoalHistoryDTO> matchGoalLists(int g_idx);
	
	//fcm 메세지 클럽명꺼내기
	public String getClubName(int c_idx);	
//	안드로이드********************************************************
	public ArrayList<ClubDTO> myClubListA(ClubMemberDTO clubMemberDTO);
	public ArrayList<MemberDTO> clubViewMemberA(AndroidClubMemberDTO androidClubMemberDTO);
	public ArrayList<MemberDTO> gameMemberList(AndroidGameMemberDTO androidGameMemberDTO);
	public ArrayList<AndroidMatchDTO>clubViewMatchA(AndroidClubDTO androidClubDTO);
	public ArrayList<MatchDTO>gm_checkList(AndroidClubDTO androidClubDTO);
	public ArrayList<GameDTO>clubViewAcceptA(AndroidClubDTO androidClubDTO);
	public MatchDTO clubMatchOpponentA(int g_num, String c_idx);
	public int clubMatchOpponentCountA(int g_num, String c_idx);
	public ArrayList<MemberDTO> clubViewMemberA(ClubMemberDTO clubMemberDTO);
	public ArrayList<MatchDTO>clubViewMatchA(ClubDTO clubDTO);
	public ArrayList<GameDTO>clubViewAcceptA(ClubDTO clubDTO);
	public int gameMemberApplyA(AndroidGameMemberDTO androidGameMemberDTO);
	public int gameMemberRejectA(AndroidGameMemberDTO androidGameMemberDTO);
	public int gameMemberCheck(String g_idx, String m_id);
	public ArrayList<AndroidMemberDTO> clubGoalRankA(AndroidMemberDTO androidMemberDTO);
	public ArrayList<AndroidClubDTO> clubSearchFilterA(AndroidClubDTO androidClubDTO);
//	
//	public ArrayList<AndroidRankingDTO> clubTotalRankingA();
//	public ArrayList<AndroidRankingDTO> clubAreaRankingA(AndroidRankingDTO androidRankingDTO);
//	public ArrayList<AndroidMemberDTO> clubAssistRankA(AndroidMemberDTO androidMemberDTO);
//	public ArrayList<AndroidMemberDTO> clubPointRankA(AndroidMemberDTO androidMemberDTO);
//	public ArrayList<AndroidMemberDTO> clubAppearanceRankA(AndroidMemberDTO androidMemberDTO);
//	
	public ArrayList<AndroidRankingDTO> clubTotalRankingA();
	public ArrayList<AndroidRankingDTO> clubAreaRankingA(AndroidRankingDTO androidRankingDTO);
	public ArrayList<AndroidMemberDTO> clubAssistRankA(AndroidMemberDTO androidMemberDTO);
	public ArrayList<AndroidMemberDTO> clubPointRankA(AndroidMemberDTO androidMemberDTO);
	public ArrayList<AndroidMemberDTO> clubAppearanceRankA(AndroidMemberDTO androidMemberDTO);
	public int qrCheck(GameDTO gameDTO);
	public ArrayList<AndroidMatchDTO> select_qrcheckA(AndroidMatchDTO androidMatchDTO);
	public String myClubName(int g_idx);
	public String myYourName(int g_idx,int g_num);
	public int myScore(int g_idx);
	public int yourScore(int g_idx,int g_num);
	
}