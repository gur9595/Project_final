package mybatis;

import org.springframework.stereotype.Service;

@Service
public interface CashDAOImpl {

	public int ballResult(CashDTO cashDTO);
	
	public int ballUpdate(int cs_charge, String m_id);
}
    