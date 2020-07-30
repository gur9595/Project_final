package mybatis;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

@Service
public interface ManagerDAOImpl {
	
	public int managerRequest(ManagerRequestDTO managerRequestDTO);
	
	public int managerinpdate(MemberDTO memberDTO);
	
}
