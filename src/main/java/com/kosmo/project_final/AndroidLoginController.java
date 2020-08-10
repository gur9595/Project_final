package com.kosmo.project_final;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import mybatis.MemberDAOImpl;
import mybatis.MemberDTO;

@Controller
public class AndroidLoginController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/android/memberLogin.do")
	@ResponseBody
	public Map<String , Object> memberLogin(MemberDTO memberDTO){
		System.out.println("memberDTO.getM_token() : " + memberDTO.getM_token());
		
		sqlSession.getMapper(MemberDAOImpl.class).tokenUpdate(memberDTO);
		
		Map<String , Object> loginInfo = new HashMap<String, Object>();
		MemberDTO memberInfo = sqlSession.getMapper(MemberDAOImpl.class).memberLogin(memberDTO);
		
		if(memberInfo==null) {
			loginInfo.put("isLogin", 0);
		}else {
			loginInfo.put("memberInfo",memberInfo);
			loginInfo.put("isLogin",1);
		}
		
		return loginInfo;
		
	}
}
