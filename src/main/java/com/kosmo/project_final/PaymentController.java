package com.kosmo.project_final;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaymentController {
	
	@RequestMapping("/payment/paymentMain.do")
	public String paymentMain() {
		
		return "payment/payment_main";
	}
	
	
	@RequestMapping("/payment/iampoartApi.do")
	public String iampoartApi() {
		
		return "payment/iampoartApi";
	}
	
}
