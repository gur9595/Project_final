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

@Controller
public class PaymentController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/payment/paymentMain.do")
	public String paymentMain() {
		return "payment/payment_main";
	}
	@RequestMapping("/payment/paymentMain2.do")
	public String paymentMain2() {
		return "payment/payment_main2";
	}
	
    // 결제로직 중 성공 시 서버에 파일업로드 후 DB저장
    @RequestMapping("/payment/paymentDeposit.do")
    public String paymentDeposit(Principal principal ,HttpServletRequest req, CashDTO cashDTO, Model model) {
		String m_id = principal.getName();
    	try {
    		int cs_charge=0;
			if(req.getParameter("cs_charge")!=null)
				cs_charge= Integer.parseInt(req.getParameter("cs_charge"));
    		System.out.println("cs_charge : "+cs_charge);
    		
    		cashDTO.setM_id(m_id);    		
    		cashDTO.setCs_current(cashDTO.getCs_current()+cs_charge); 
    		
    		
    		
    		sqlSession.getMapper(CashDAOImpl.class).ballResult(cashDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	
    
    	
	    return "payment/payment_main";
	    
    }

      
      
	 
	
}
