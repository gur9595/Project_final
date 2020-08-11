package com.kosmo.project_final;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mybatis.ParameterDTO;
import mybatis.StadiumDAOImpl;
import mybatis.StadiumDTO;
import mybatis.StadiumGameDTO;

@Controller
public class StadiumController {

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/stadium/stlogin.do")
	public String stlogin(Model model,HttpSession httpSession) {

		return "stadium/stLogin";
	}

	@RequestMapping("/stadium/stloginAction.do")
	public ModelAndView stloginAction(HttpServletRequest req,HttpSession session) {

		System.out.println("진입전");
		//login메소드를 호출함
		StadiumDTO dto = sqlSession.getMapper(StadiumDAOImpl.class).login(req.getParameter("s_id"),req.getParameter("s_pw"));
		System.out.println("진입성공!");
		ModelAndView mv = new ModelAndView();

		if(dto==null) {
			//로그인에 실패한 경우...................^^........
			mv.addObject("LoginNG", "아이디/패스워드가 틀렸습니다");
			mv.setViewName("stadium/stLogin");
			return mv;
		}
		else {
			//로그인에 성공한 경우 세션영역에 VO객체를 저장한다.
			session.setAttribute("siteUserInfo", dto);

		}

		//로그인 후 페이지이동
		String backUrl = req.getParameter("backUrl");
		if(backUrl==null || backUrl.equals("")) {
			//돌아갈 페이지가 없다면 로그인 페이지로 이동한다
			mv.setViewName("stadium/stLogin");
		}
		else {

			//지정된 페이지로 이동한다.
			mv.setViewName(backUrl);

		}

		return mv;
	}

	@RequestMapping("/stadium/logout.do")
	public String logout(HttpSession session) {
		session.setAttribute("siteUserInfo", null);
		return "redirect:stlogin.do";
	}

	@RequestMapping("/stadium/stMain.do")
	public String stMain(HttpSession session, HttpServletRequest req, Model model,HttpServletResponse response) throws Exception {

		
		String s_check = req.getParameter("s_check");
		System.out.println("체크값 받아와!! : "+s_check);
		if(session.getAttribute("siteUserInfo")==null) {
			//model.addAttribute("backUrl", "07Mybatis/modify");
			return "redirect:stlogin.do";
		}
		if(s_check.equals("no")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('등록이 안된 계정이므로 접근 불가. 로그아웃 하겠습니다.'); location.href='logout.do';</script>");
			out.flush();
		}

		String s_idx = req.getParameter("s_idx");
		model.addAttribute("s_idx",s_idx);
		
		return"stadium/stMain";
	}

	@RequestMapping("/stadium/stEdit.do")
	public String stEdit(Model model,HttpServletRequest req) {

		//int s_idx = Integer.parseInt(req.getParameter("s_idx"));
		//String s_idx = (String)session.getAttribute("s_idx");
		String s_idx = req.getParameter("s_idx");
		System.out.println("idx받아와 ! : "+s_idx);
		ParameterDTO parameterDTO = new ParameterDTO();
		parameterDTO.setS_idx(s_idx);

		StadiumDTO stadiumDTO = sqlSession.getMapper(StadiumDAOImpl.class).stEdit(parameterDTO);

		model.addAttribute("viewRow",stadiumDTO);

		return"stadium/stEdit";
	}

	public static String getUuid() {
		String uuid= UUID.randomUUID().toString();
		System.out.println("생성된UUID-1: "+uuid);
		uuid = uuid.replaceAll("-", "");
		System.out.println("생성된UUID-2: "+uuid);
		return uuid;
	}

	@RequestMapping("/stadium/stEditAction.do")
	public String stEditAction(StadiumDTO dto, HttpServletRequest req) {

		
		String s_id = req.getParameter("s_id");
		String s_pw = req.getParameter("s_pw");
		String s_name = req.getParameter("s_name");
		String s_phone = req.getParameter("s_phone");
		//String s_addr = req.getParameter("s_addr");
		String s_type = req.getParameter("s_type");
		String s_size = req.getParameter("s_size");
		String s_cv = req.getParameter("s_cv");
		int s_price = Integer.parseInt(req.getParameter("s_price"));
		String s_memo = req.getParameter("s_memo");
		String s_starttime = req.getParameter("s_starttime");
		String s_endtime = req.getParameter("s_endtime");
		//String s_lat = req.getParameter("s_lat");
		//String s_lng = req.getParameter("s_lng");

		System.out.println("아이디 : "+s_id);
		System.out.println("비번: "+s_pw);
		System.out.println("이름 : "+s_name);
		System.out.println("폰번호 : "+s_phone);
		//System.out.println("주소 : "+s_addr);
		System.out.println(s_type);
		System.out.println(s_size);
		System.out.println(s_cv);
		System.out.println(s_price);
		System.out.println(s_memo);
		System.out.println(s_starttime +"~"+ s_endtime);
		//System.out.println(s_lat +"//"+s_lng);

		dto.setS_id(s_id);
		dto.setS_pw(s_pw);
		dto.setS_name(s_name);
		//dto.setS_addr(s_addr);
		dto.setS_phone(s_phone);
		dto.setS_size(s_size);
		dto.setS_starttime(s_starttime);
		dto.setS_endtime(s_endtime);
		dto.setS_type(s_type);
		dto.setS_memo(s_memo);
		dto.setS_cv(s_cv);
		dto.setS_price(s_price);
		//dto.setS_lat(s_lat);
		//dto.setS_lng(s_lng);

		
		sqlSession.getMapper(StadiumDAOImpl.class).stEditAction(dto);
		System.out.println("처리완료");


		return "redirect:stMain.do";
	}

	@RequestMapping("/stadium/Reservation.do")
	public String Reservation(Model model, HttpServletRequest req) {

		
		String s_idx = req.getParameter("s_idx");
		System.out.println("idx받아와 ! : "+s_idx);
		ParameterDTO parameterDTO = new ParameterDTO();
		parameterDTO.setS_idx(req.getParameter("s_idx"));

		System.out.println("아이디엑스 받아와!!! : "+s_idx);
		ArrayList<StadiumGameDTO> stadiumGameDTO = sqlSession.getMapper(StadiumDAOImpl.class).reservelist(parameterDTO);
		
		model.addAttribute("viewRow",stadiumGameDTO);


		//ArrayList<StadiumGameDTO> stadiumGameLists = sqlSession.getMapper(StadiumDAOImpl.class).s_gamelist(s_idx);
		//String clublists = sqlSession.getMapper(StadiumDAOImpl.class).c_name_get(c_idx);
		//예약 신청한 클럽 리스트들 뽑아오기
		//for(StadiumGameDTO dto : )

		//if()
		//String c_name = sqlSession.getMapper(StadiumDAOImpl.class).c_name_get(c_idx);

		return"stadium/Reservation";
	}
	@RequestMapping("/stadium/Income.do")
	public String Income(Model model, HttpServletRequest req) {

		String s_idx = req.getParameter("s_idx");
		System.out.println("idx받아와 ! : "+s_idx);
		ParameterDTO parameterDTO = new ParameterDTO();
		parameterDTO.setS_idx(s_idx);
		System.out.println("아이디엑스 받아와 !! : "+s_idx);
		StadiumGameDTO gameDate =  sqlSession.getMapper(StadiumDAOImpl.class).GoogleCharts(parameterDTO);
		StadiumDTO stDate = sqlSession.getMapper(StadiumDAOImpl.class).StadiumInfo(parameterDTO);
		System.out.println("찾아내따!!");
		model.addAttribute("viewRow",gameDate);
		model.addAttribute("stDate",stDate);
		System.out.println("다 담겼다!");
		
		return"stadium/Income";
	}
	
	@RequestMapping("/stadium/googleCharts.do")
	public String GoogleChart(Model model, HttpServletRequest req) {
		
		String s_idx = req.getParameter("s_idx");
		System.out.println("idx받아와 ! : "+s_idx);
		ParameterDTO parameterDTO = new ParameterDTO();
		parameterDTO.setS_idx(s_idx);
		System.out.println("아이디엑스 받아와 !! : "+s_idx);
		StadiumGameDTO gameDate =  sqlSession.getMapper(StadiumDAOImpl.class).GoogleCharts(parameterDTO);
		StadiumDTO stDate = sqlSession.getMapper(StadiumDAOImpl.class).StadiumInfo(parameterDTO);
		System.out.println("찾아내따!!");
		model.addAttribute("viewRow",gameDate);
		model.addAttribute("stDate",stDate);
		System.out.println("다 담겼다!");
		
		
		return"stadium/googleCharts";
	}
	

}
