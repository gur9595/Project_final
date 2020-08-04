package mybatis;

import java.sql.Date;
import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface StadiumDAOImpl {
   
   public int getTotalCount(StadiumDTO stadiumDTO);
   
   public ArrayList<StadiumDTO> stadiumList(StadiumDTO stadiumDTO);

   public int stadiumInsert(StadiumDTO dto);
   
   public ArrayList<StadiumDTO> stadiumlist(int s_idx);
   public ArrayList<StadiumGameDTO> s_gamelist(int s_idx);
   public ArrayList<StadiumGameDTO> s_basiclist(int s_idx);
   public ArrayList<StadiumGameDTO> s_gamelist_search(int s_idx, Date g_date);
   
   public String c_name_get(int c_idx);
   
}