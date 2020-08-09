package mybatis;

import java.util.ArrayList;

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
	public void tokenUpdate(MemberDTO memberDTO);
	
	public ArrayList<MemberDTO> getMemberTokens(int c_idx);

	
	// Ball 거래내역용 추가 메소드
	public int ballHistory(String m_id);
	
	public ArrayList<MemberDTO> ballList(String m_id);
}
