package com.kosmo.project_final;
 
 
import java.io.IOException; 
import java.security.Principal;
 
import javax.servlet.http.HttpServletRequest;
 
import org.apache.ibatis.session.SqlSession; 
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller; 
import org.springframework.ui.Model; 
import org.springframework.web.bind.annotation.RequestMapping;
 
import mybatis.CashDAOImpl; 
import mybatis.CashDTO;
import mybatis.ClubDAOImpl;
 
@Controller 
public class PaymentController {
 
	// Mybatis를 사용하기 위해 빈 자동주입
	@Autowired 
	private SqlSession sqlSession;
	 
	// 마일리지 충전의 틀이 되는 페이지
	@RequestMapping("/payment/paymentMain.do") 
	public String paymentMain() {
	
		return "payment/payment_main";  
	}
	
	@RequestMapping("/payment/paymentDeposit.do") 
	public String paymentDeposit(HttpServletRequest req, CashDTO cashDTO, Principal principal) {
		int cs_charge = Integer.parseInt(req.getParameter("cs_charge"));
		String m_id = principal.getName();
		
		System.out.println("cs_charge : "+cs_charge);
		System.out.println("m_id : "+m_id);
		
		cashDTO.setM_id(m_id);
		cashDTO.setCs_charge(cs_charge);
		
		sqlSession.getMapper(CashDAOImpl.class).ballResult(cashDTO);
		sqlSession.getMapper(CashDAOImpl.class).ballUpdate(cs_charge, m_id);
		
		return "payment/payment_main";  
	}
		 
}
 