package mybatis;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface AdminDAOImpl {
	
	public int get_Gnum();
	public int set_Gnum(int g_num);
	
	public ArrayList<ManagerRequestDTO> listPage(ManagerRequestDTO managerRequestDTO);
	
	public int managerUpdate(String m_id);
	
	public int managerDelete(String m_id);
	
}
