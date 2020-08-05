package mybatis;

import org.springframework.stereotype.Service;

@Service
public interface MemberDAOImpl {
	
	public int memberJoin(MemberDTO memberDTO);
	
	public int naverSuccess(MemberDTO memberDTO);
	
	public int kakaoSuccess(MemberDTO memberDTO);
	
	public String id_mailSending(MemberDTO memberDTO);
	public String pw_mailSending(MemberDTO memberDTO);
	
	public MemberDTO memberInfo(MemberDTO memberDTO);
	
	public int memberUpdate(MemberDTO memberDTO);
	
	public MemberDTO memberLogin(MemberDTO memberDTO);
	
	

	
	
}
