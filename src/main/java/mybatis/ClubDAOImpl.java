package mybatis;


import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface ClubDAOImpl {
	
	//클럽생성
	public int clubCreate(ClubDTO clubDTO);
	
	public int getTotalCount(ClubDTO clubDTO);
	
	public ArrayList<ClubDTO> listPage(ClubDTO clubDTO);
	public ArrayList<ClubDTO> listPageFilter(ClubDTO clubDTO);
	
	public int clubApply(ClubMemberDTO clubMemberDTO);
	
	public ArrayList<ClubDTO> myClubList(String id);
	
	public int myClubListCount(String id);
	
	public ClubDTO clubView(int c_idx);
	
	public int clubIdx(ClubDTO clubDTO);

	public int clubCreateMember(String m_id, int idx);
	
	//클럽 상세보기
	public ArrayList<MemberDTO> clubViewMember(int c_idx);
	
	public ArrayList<GameDTO> clubViewMatch(int c_idx);
	
}
