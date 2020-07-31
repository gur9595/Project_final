package com.kosmo.project_final;

import java.io.IOException;
import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;

@Controller
public class LoginController {
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;

	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}

	@RequestMapping("/member/home.do")
	public String securityIndex2_1(Principal principal, HttpSession session) {

		String m_id = principal.getName();
		System.out.println("m_id = " + m_id);

		return "redirect:/";

	}
	/*
	 * @RequestMapping(value ="/login.do", method = { RequestMethod.GET,
	 * RequestMethod.POST }) public String login(Model model, HttpSession session,
	 * Principal principal) { 로그인 진입 String m_id= principal.getName();//get logged
	 * in username
	 * 
	 * model.addAttribute("m_id", m_id);
	 * 
	 * System.out.println("m_id: "+m_id); 네이버
	 * 
	 * String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
	 * 
	 * System.out.println("네이버:" + naverAuthUrl); model.addAttribute("url",
	 * naverAuthUrl);
	 * 
	 * return "member/login"; }
	 */

	/*
	 * @RequestMapping(value = "/callback", method = { RequestMethod.GET,
	 * RequestMethod.POST }) public String callback(Model model, @RequestParam
	 * String code, @RequestParam String state, HttpSession session) throws
	 * IOException { System.out.println("여기는 callback"); OAuth2AccessToken
	 * oauthToken; oauthToken = naverLoginBO.getAccessToken(session, code, state);
	 * //로그인 사용자 정보를 읽어온다. apiResult = naverLoginBO.getUserProfile(oauthToken);
	 * model.addAttribute("result", apiResult);
	 * 
	 * 네이버 로그인 성공 페이지 View 호출 return "member/naverSuccess"; }
	 */

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String printUser(Model model, Principal principal, HttpSession session) {

		String m_id = principal.getName();// get logged in username

		model.addAttribute("m_id", m_id);

		System.out.println("m_id : " + m_id);

		/*
		 * String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		 * 
		 * System.out.println("네이버:" + naverAuthUrl); model.addAttribute("url",
		 * naverAuthUrl);
		 */

		return "home";

	}

}