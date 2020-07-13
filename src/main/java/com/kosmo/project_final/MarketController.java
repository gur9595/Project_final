package com.kosmo.project_final;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MarketController {
	
	@RequestMapping("/market/marketMain.do")
	public String marketMain() {
		
		return "market/market_main";
	}
}
