package mybatis;

import org.springframework.stereotype.Service;

@Service
public interface MemberDAOImpl {
	
	public int memberJoin(MemberDTO memberDTO);
	
}
