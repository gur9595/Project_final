package com.kosmo.project_final;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	@RequestMapping("/member/home.do")
	public String securityIndex2_1(Principal principal, Authentication authentication, Model model,HttpSession session) {
		/*
		 1. controller에서 시큐리티를 통해 로그인한 사용자정보 얻어오기
		 : @Controller로 선언된 클래스에서는 메소드 인자로
		 Principal객체를 통해 사용자 아이디를 얻어올 수 있다.
		 */
		
		// 1-1. Princpal 객체를 통한 사용자 아이디 반환
		String m_id = principal.getName();
		System.out.println("m_id = "+m_id);
		
		// 1-2. Authentication 객체를 통한 아이디 반환
		UserDetails userDetails = (UserDetails)authentication.getPrincipal();
		String detail_id = userDetails.getUsername();
		
		System.out.println("detail_id="+detail_id);
		
		/*
		 2. 일반적인 클래스에서 사용자 정보 얻어오기
		 	: 스프링 컨테이너의 전역변수로 선언된 SecuritycontextHolder
		 	객체를 이용해서 사용자 아이디를 얻어온다.
		 */
		Object object = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		UserDetails sch = (UserDetails)object;
		String sch_id = sch.getUsername();
		System.out.println("sch_id"+sch_id);
		
		model.addAttribute("m_id", m_id);
		
		session.setAttribute("m_id",m_id);
		
		return "redirect:/";
		
	}


	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String printUser(Model model, Principal principal) {

		String m_name = principal.getName();//get logged in username

		model.addAttribute("m_name", m_name);

		System.out.println("m_name : "+m_name);

		return "home";

	}
}
