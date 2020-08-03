package mybatis;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface StadiumDAOImpl {
	
	public int getTotalCount(StadiumDTO stadiumDTO);
	
	public ArrayList<StadiumDTO> stadiumList(
			StadiumDTO stadiumDTO);

	public int stadiumInsert(StadiumDTO dto);
	
}
