package mybatis;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface ClubDAOImpl {
	
	//클럽생성
	public int clubCreate(ClubDTO clubDTO);
	
	//클럽검색
//	public ArrayList<ClubDTO> listPage(ParameterDTO parameterDTO);
	
}
