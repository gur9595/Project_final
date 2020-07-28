package mybatis;

import org.springframework.stereotype.Service;

@Service
public interface MemberDAOImpl {
	
	public int memberJoin(MemberDTO memberDTO);
	
	public MemberDTO memberInfo(MemberDTO memberDTO);
	
	public int memberUpdate(MemberDTO memberDTO);
	
	public int managerUpdate(MemberDTO memberDTO);
	
	
	
}
