package mybatis;


import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
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
	
	public int clubIdx(ClubDTO clubDTO);

	public int clubCreateMember(String m_id, int idx);
	
	public ArrayList<MemberDTO> clubManageApplyList(ClubDTO clubDTO);
	
	public int clubMemberApply(int cm_idx);
	
	public int gameMemberApply(GameMemberDTO gameMemberDTO);
	
	public int ClubMatchApply(GameDTO gameDTO);
	
	public int ClubMatchApplyDelete(GameDTO gameDTO);
	
	public int ClubMatchReject(GameDTO gameDTO);
	
	public int clubMemberReject(int cm_idx);
	
	public ArrayList<MemberDTO> clubViewMember(int c_idx);
	
	public ArrayList<MatchDTO> clubViewMatch(int c_idx);
	
	public ArrayList<ClubDTO> myClubListA(ClubMemberDTO clubMemberDTO);

	public MatchDTO clubMatchOpponent(int g_num, int c_idx);
	
	public int clubMatchOpponentCount(int g_num, int c_idx);
	
	public ArrayList<GameDTO> clubViewAccept(int c_idx);
	
	public ArrayList<GameDTO> clubViewMyApply(int c_idx);
	
	public ArrayList<GameMemberDTO> clubMakingForm(int g_idx);
	
	public int clubMemberCount(int c_idx);
	
	public ArrayList<MemberDTO> clubViewGrade(int c_idx);
	
	public int clubViewUpdate(int c_idx, String cm_grade, String m_id);
	
//	안드로이드********************************************************
	public ArrayList<MemberDTO> clubViewMemberA(ClubMemberDTO clubMemberDTO);
	public ArrayList<MatchDTO>clubViewMatchA(ClubDTO clubDTO);
	public ArrayList<GameDTO>clubViewAcceptA(ClubDTO clubDTO);
	
}
