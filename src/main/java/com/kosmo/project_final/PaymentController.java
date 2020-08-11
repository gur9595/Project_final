package com.kosmo.project_final;
 
 
import java.io.IOException; 
import java.security.Principal;
import java.util.ArrayList;

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
	public String paymentMain(Principal principal, Model model) {
		String m_id = principal.getName();
		// id는 무조건 principal
		
		System.out.println("m_id : "+m_id);
		
		// 2. ballCurrent의 쿼리상 반환값은 int이므로 getMapper 결과로 나올 int형을 담을 변수를 생성한다.
		int money = sqlSession.getMapper(CashDAOImpl.class).ballCurrent(m_id);
		System.out.println(money);
		
		ArrayList<MemberDTO> memberDTO = sqlSession.getMapper(CashDAOImpl.class).ballBuyer(m_id);
		System.out.println("이름:" + memberDTO.get(0).getM_name()); 
		model.addAttribute("memberDTO", memberDTO);	
		model.addAttribute("cash", money);
		return "payment/payment_main";  
	}
	
	@RequestMapping("/payment/paymentDeposit.do") 
	public String paymentDeposit(HttpServletRequest req, CashDTO cashDTO, Principal principal,  Model model) {
		int cs_money = Integer.parseInt(req.getParameter("cs_money"));
		String m_id = principal.getName();
		

		// 2. ballCurrent의 쿼리상 반환값은 int이므로 getMapper 결과로 나올 int형을 담을 변수를 생성한다.
		int money = sqlSession.getMapper(CashDAOImpl.class).ballCurrent(m_id);
		
		cashDTO.setM_id(m_id);
		cashDTO.setCs_money(cs_money);
		ArrayList<MemberDTO> memberDTO = sqlSession.getMapper(CashDAOImpl.class).ballBuyer(m_id);
		System.out.println("이름:" + memberDTO.get(0).getM_name()); 
		
		sqlSession.getMapper(CashDAOImpl.class).ballResult(cashDTO);
		sqlSession.getMapper(CashDAOImpl.class).ballUpdate(cs_money, m_id);
		
		model.addAttribute("memberDTO", memberDTO);	
		model.addAttribute("cash", money);
		return "payment/payment_main";  
	}
	
	// 반드시 home에서 요청명 설정할 것.
	@RequestMapping("/payment/ballCurrent.do") 
		/* 
		 	출력할 페이지를 명시하는 부분...
		 	즉, 해당 요청명을 가진 페이지에서 보여야하는 부분은 
		 	다 요 매핑안에다가 메소드 추가할 것.
		 */
	public String ballCurrent(Principal principal, HttpServletRequest req, Model model) {
		String m_id = principal.getName();
		
		System.out.println("m_id : "+m_id);

		int money = sqlSession.getMapper(CashDAOImpl.class).ballCurrent(m_id);
		System.out.println(money);
		
		ArrayList<MemberDTO> memberDTO = sqlSession.getMapper(CashDAOImpl.class).ballBuyer(m_id);
		System.out.println("이름:" + memberDTO.get(0).getM_name()); 
		model.addAttribute("memberDTO", memberDTO);	
		model.addAttribute("cash", money);
		
		return "payment/payment_main"; 
	}

	
}
 