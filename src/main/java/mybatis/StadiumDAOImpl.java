package mybatis;

import org.springframework.stereotype.Service;

@Service
public interface StadiumDAOImpl {

	public int stadiumInsert(StadiumDTO dto);
	
}
