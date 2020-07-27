package mybatis;


import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface ClubDAOImpl {
	
	//클럽생성
	public int clubCreate(ClubDTO clubDTO);
	
	public int getTotalCount(ClubDTO clubDTO);
	
	public ArrayList<ClubDTO> listPage(ClubDTO clubDTO);
	
	public int clubApply(ClubMemberDTO clubMemberDTO);
	
	
}
