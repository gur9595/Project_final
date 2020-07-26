package mybatis;

import org.springframework.stereotype.Service;

@Service
public interface AdminDAOImpl {
	
	public int get_Gnum();
	public int set_Gnum(int g_num);
	
}
