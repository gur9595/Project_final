package mybatis;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface MatchDAOImpl {
	
	public int gameApply(GameDTO gameDTO);
	public ArrayList<GameDTO> gameList();
	public ArrayList<GameDTO> listSearch(GameDTO gameDTO);
	
}
