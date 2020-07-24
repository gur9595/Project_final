package mybatis;

import org.springframework.stereotype.Service;

@Service
public interface ClubDAOImpl {
	
	public int clubCreate(ClubDTO clubDTO);
	
}
