package com.kosmo.project_final;

import java.io.IOException;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;

import mybatis.MemberDTO;

@Controller
public class LoginController {

	private NaverLoginBO naverLoginBO;
	private String apiResult = null;

	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}


	@RequestMapping("/member/home.do")
	public String securityIndex2_1(Principal principal, Authentication authentication, Model model,HttpSession session) {

		String m_id = principal.getName();
		System.out.println("m_id = "+m_id);

		return "redirect:/";

	}

	@RequestMapping(value = "/login.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpSession session, Principal principal) {
		//로그인 진입
		String m_id= principal.getName();//get logged in username

		model.addAttribute("m_id", m_id);

		System.out.println("m_id: "+m_id);
		//네이버
		
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);

		System.out.println("네이버:" + naverAuthUrl);
		model.addAttribute("url", naverAuthUrl);

		return "member/login";
	}
/*
	@RequestMapping(value="/login.do", method = RequestMethod.POST)
	public String printUser(Model model, Principal principal) {

		String m_name = principal.getName();//get logged in username

		model.addAttribute("m_name", m_name);

		System.out.println("m_name : "+m_name);

		return "home";

	}
*/
	
	@RequestMapping(value = "/member/callback.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException, ParseException {
		System.out.println("여기는 callback");
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);

		apiResult = naverLoginBO.getUserProfile(oauthToken);
		
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObject = (JSONObject) obj;
		
//		JSONObject jsonobj = jsonparse.stringToJson(apiResult, "response");
		JSONObject response = (JSONObject)jsonObject.get("response");
		
		String nickname = (String)response.get("nickname");
		String email = (String)response.get("email");
 
		System.out.println(nickname);
		
		session.setAttribute("sessionId",email); //세션 생성
		  
		model.addAttribute("result", apiResult);
		
		return "member/login";
	
	}

}