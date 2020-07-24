package mybatis;

import org.springframework.stereotype.Service;

@Service
public interface MatchDAOImpl {
	
	public int gameApply(GameDTO gameDTO);
	
}
