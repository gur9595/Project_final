package mybatis;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface MatchDAOImpl {
	
	public void gameApply(GameDTO gameDTO);
	public void stadiumGameApply_a(GameDTO gameDTO);
	public void stadiumGameApply_b(GameDTO gameDTO);
	public void matchApply(GameDTO gameDTO);
	public void extraApply(String m_id, int g_idx);
	public ArrayList<GameDTO> gameList();
	public ArrayList<ClubDTO> getC_name(String m_id);
	public int getCash(String m_id);
	public void setCash(int cash, String m_id);
	public ArrayList<GameDTO> playerList();
	public int getClubIdx(int g_idx);
	public int my_ratingmemo(AndroidMatchDTO androidMatchDTO);
	public int your_ratingmemo(AndroidMatchDTO androidMatchDTO);
	
}
