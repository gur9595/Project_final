package com.kosmo.project_final;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import mybatis.ClubDAOImpl;
import mybatis.ClubDTO;

@Controller
public class AndroidClubController {
	
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/android/listView.do")
	@ResponseBody
	public Map<String , Object> clubListView(ClubDTO clubDTO){
		
		Map<String, Object> myIdInfo = new HashMap<String, Object>();
		ClubDTO myclubList = sqlSession.getMapper(ClubDAOImpl.class).myClubListA(clubDTO);
		
		if(myclubList == null) {
			myIdInfo.put("isList", 0);
		}else {
			myIdInfo.put("myClubList", myclubList);
			myIdInfo.put("isList", 1);
		}
		
		return myIdInfo;
		
	}
}
