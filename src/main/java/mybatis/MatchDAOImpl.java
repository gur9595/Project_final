package mybatis;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface MatchDAOImpl {
	
	public void gameApply(GameDTO gameDTO);
	public void  matchApply(GameDTO gameDTO);
	public void extraApply(String m_id, int g_idx);
	public ArrayList<GameDTO> gameList();
	public ArrayList<ClubDTO> getC_name(String m_id);
	public ArrayList<GameDTO> playerList();
	
}
