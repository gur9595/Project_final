package com.kosmo.project_final;

import java.io.IOException;
import java.security.Principal;
import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;

import mybatis.MemberDAOImpl;
import mybatis.MemberDTO;



@Controller
public class LoginController {
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;

	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}

	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private KakaoAPI kakao;

	@RequestMapping("/member/home.do")
	public String securityIndex2_1(Principal principal, HttpSession session) {

		String m_id = principal.getName();
		System.out.println("m_id = "+m_id);

		return "redirect:/";

	}
	/*
	@RequestMapping(value ="/login.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpSession session, Principal principal) {
		로그인 진입
		String m_id= principal.getName();//get logged in username

		model.addAttribute("m_id", m_id);

		System.out.println("m_id: "+m_id);
		네이버

		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);

		System.out.println("네이버:" + naverAuthUrl);
		model.addAttribute("url", naverAuthUrl);

		return "member/login";
	}
	 */

	@RequestMapping(value="/member/login.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, Principal principal, HttpSession session) {
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		System.out.println("NaverToken : " + naverAuthUrl); 
		model.addAttribute("url", naverAuthUrl);

		/*String m_id = principal.getName();//get logged in username

		model.addAttribute("m_id", m_id);

		System.out.println("m_id : "+m_id); 
		 */


		return "member/login";

	}


	@RequestMapping(value = "/member/callback.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException, SQLException {

		System.out.println("여기는 callback");
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);

		//1. 로그인 사용자 정보를 읽어온다.
		apiResult = naverLoginBO.getUserProfile(oauthToken);  //String형식의 json데이터 (사용자의정보)

		/** apiResult json 구조
		{"resultcode":"00", 
		 "message":"success",
		 "response":{"birthday":"03-26","name":"이태랑","id":"93471128","email":"krst7336@naver.com"}
		 **/

		//2. String형식인 apiResult를 json형태로 바꿈
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;

		//3. 데이터 파싱 
		//Top레벨 단계 _response 파싱
		JSONObject response_obj = (JSONObject)jsonObj.get("response");
		System.out.println("이건 JSON : "+response_obj);

		String m_pw = "1234";
		System.out.println("이건 비번 : "+m_pw);
		String m_phone = "01066669999";
		System.out.println("이건 번호 : "+m_phone);

		//response의 nickname값 파싱
		String m_id = (String)response_obj.get("id");
		System.out.println("이건 아이디 : "+m_id);
		String m_name = (String)response_obj.get("name");
		System.out.println("이건 이름 : "+m_name);
		String m_birth = (String)response_obj.get("birthday");
		System.out.println("이건 생일 : "+m_birth);
		String m_email = (String)response_obj.get("email");
		System.out.println("이건 이메일 : "+m_email);
		//String m_sex = (String)response_obj.get("gender");
		//System.out.println("성별 : "+m_sex);

		//4.파싱 닉네임 세션으로 저장
		//session.setAttribute("sessionId",m_email); //세션 생성


		//		model.addAttribute("result", apiResult);

		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setM_id(m_id);


		int affected = 0;

		affected = sqlSession.getMapper(MemberDAOImpl.class).naverSuccess(memberDTO);

		if(affected==1) {
			model.addAttribute("m_id",m_id);
			model.addAttribute("m_pw",m_pw);
			return "member/naverSuccess";
		}
		else{
			model.addAttribute("m_id",m_id);
			model.addAttribute("m_pw",m_pw);
			model.addAttribute("m_name",m_name);
			model.addAttribute("m_birth",m_birth);
			model.addAttribute("m_phone",m_phone);
			model.addAttribute("m_email",m_email);
			//model.addAttribute(m_sex);
			//model.addAttribute("dto",dto);

			return "member/member_agree2";			
		}
	}
	
	 @RequestMapping(value = "/member/kakaocallback.do")
	   public String kakaocallback(@RequestParam("code") String code, HttpSession session,Model model) {
		   String access_Token = kakao.getAccessToken(code);
		   HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
		   System.out.println("카카오정보 : " + userInfo);
		   
		   
		   String m_id = (String)userInfo.get("m_id");
		   String m_pw = (String)userInfo.get("m_pw");
		   String m_name = (String)userInfo.get("m_name" );
		   String m_email = (String)userInfo.get("m_email");
		   String m_birth = (String)userInfo.get("m_birth");
		   String m_phone = (String)userInfo.get("m_phone");
		   
		   MemberDTO memberDTO = new MemberDTO();
		   memberDTO.setM_id(m_id);
		   
		   int affected = 0;
		   affected = sqlSession.getMapper(MemberDAOImpl.class).kakaoSuccess(memberDTO); 
		   
		   /*if(userInfo.get("email") != null) {
			   session.setAttribute("userId",userInfo.get("email"));
			   session.setAttribute("access_Token", access_Token);
		   }
		   return "member/login";*/
		   if(affected==1) {
				model.addAttribute("m_id",m_id);
				model.addAttribute("m_pw",m_pw);
				return "member/kakaoSuccess";
			}
			else{
				model.addAttribute("m_id",m_id);
				model.addAttribute("m_pw",m_pw);
				model.addAttribute("m_name",m_name);
				model.addAttribute("m_birth",m_birth);
				model.addAttribute("m_phone",m_phone);
				model.addAttribute("m_email",m_email);
				//model.addAttribute(m_sex);
				//model.addAttribute("dto",dto);

				return "member/member_agree2";			
			}
	   }

} 
