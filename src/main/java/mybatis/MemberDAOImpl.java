package mybatis;

import org.springframework.stereotype.Service;

@Service
public interface MemberDAOImpl {
	
	public int memberJoin(MemberDTO memberDTO);
	public String id_mailSending(MemberDTO memberDTO);
	public String pw_mailSending(MemberDTO memberDTO);
	
	public MemberDTO memberInfo(MemberDTO memberDTO);
	
	public int memberUpdate(MemberDTO memberDTO);
	
	public int managerUpdate(MemberDTO memberDTO);
	
	
	
}
