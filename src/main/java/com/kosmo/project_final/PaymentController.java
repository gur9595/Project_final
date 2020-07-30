package com.kosmo.project_final;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaymentController {
	
	@RequestMapping("/payment/paymentMain.do")
	public String paymentMain() {
		return "payment/payment_main";
	}
	
//	@GetMapping("/payment/paymentMain.do")
//	public String paymentMain() {
//		return "payment/payment_main";
//	}
//	
//	@PostMapping("/payment/paymentMain.do")
//	public String paymentMainPost() {
//		System.out.println("post진입");
//		
//		return "payment/payment_main";
//	}
	
	
}
