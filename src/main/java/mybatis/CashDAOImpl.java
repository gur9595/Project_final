package mybatis;


import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface CashDAOImpl {

	public int ballResult(CashDTO cashDTO);
	
	public int ballUpdate(int cs_money, String m_id);
	
	public int ballCurrent(String m_id);
	
	public ArrayList<MemberDTO> ballBuyer(String m_id); 
	
	
}
    