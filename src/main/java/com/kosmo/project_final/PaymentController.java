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
import mybatis.MemberDAOImpl;
import mybatis.MemberDTO;
 
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
	@RequestMapping("/payment/paymentMain2.do")
	public String paymentMain2() {
		return "payment/payment_main2";
	}
	
	@RequestMapping("/payment/paymentDeposit.do") 
	public String paymentDeposit(HttpServletRequest req, CashDTO cashDTO, Principal principal) {
		int cs_money = Integer.parseInt(req.getParameter("cs_money"));
		String m_id = principal.getName();
		
		System.out.println("cs_money : "+cs_money);
		System.out.println("m_id : "+m_id);
		
		cashDTO.setM_id(m_id);
		cashDTO.setCs_money(cs_money);
		
		sqlSession.getMapper(CashDAOImpl.class).ballResult(cashDTO);
		sqlSession.getMapper(CashDAOImpl.class).ballUpdate(cs_money, m_id);
		
		return "payment/payment_main";  
	}
	
	// 반드시 home에서 요청명 설정할 것.
	@RequestMapping("/payment/ballCurrent.do")
	public String ballCurrent(Principal principal, HttpServletRequest req, MemberDTO memberDTO, Model model) {
		String m_id = principal.getName();
		// id는 무조건 principal
		
		System.out.println("m_id : "+m_id);
			
		// 2. ballCurrent의 쿼리상 반환값은 int이므로 getMapper 결과로 나올 int형을 담을 변수를 생성한다.
		int money = sqlSession.getMapper(CashDAOImpl.class).ballCurrent(m_id);
		System.out.println(money);
		
		// 1. insert문과 달리 select문은 return전에 반드시 model객체에 담아야 한다. 왜냐하면 select문이라서....
		model.addAttribute("cash", money);
		
		return "payment/payment_main"; 
	}
}
 