package com.kosmo.project_final;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MarketController {
	
	@RequestMapping("/market/marketMain.do")
	public String marketMain() {
		
		return "market/market_main";
	}
	
	@RequestMapping("/market/marketUniform.do")
	public String marketUniform() {
		
		return "market/market_uniform";
	}
	
	@RequestMapping("/market/marketRental.do")
	public String marketRental() {
		
		return "market/market_rental";
	}
	
	@RequestMapping("/market/marketBasket.do")
	public String marketBasket() {
		
		return "market/market_basket";
	}
}
