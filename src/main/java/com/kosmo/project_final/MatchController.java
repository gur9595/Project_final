package com.kosmo.project_final;


import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.Principal;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import firebase.AndroidPushNotificationsService;
import mybatis.AdminDAOImpl;
import mybatis.ClubDAOImpl;
import mybatis.ClubDTO;
import mybatis.GameDTO;
import mybatis.MatchDAOImpl;
import mybatis.MemberDAOImpl;
import mybatis.MemberDTO;
import mybatis.StadiumDAOImpl;
import mybatis.StadiumDTO;
import mybatis.StadiumGameDTO;
import utils.StadiumPaging;

@Controller
public class MatchController {
	

	/*
	servlet-context.xml에서 생성한 빈을 자동으로 주입받아 Mybatis를
	사용할 준비를 한다. @Autowired는 타입만 일치하면 자동으로 주입 받을 수 있다.
	*/
	@Autowired
	private SqlSession sqlSession;
	
	//기본 메인 페이지
	@RequestMapping("/match/matchMain.do")
	public String matchMain() {
		
		return "match/match_main";
	}
	
	@RequestMapping("/match/stadiumMain.do")
	public String stadiumMain(Model model, HttpServletRequest req) {
		
		//파라미터 저장을 위한 DTO객체 생성
		StadiumDTO stadiumDTO = new StadiumDTO();
		stadiumDTO.setS_gu(req.getParameter("select_gugun"));
		stadiumDTO.setS_type(req.getParameter("select_s_type"));
		stadiumDTO.setSearchTxt(req.getParameter("searchTxt"));
		
		if(stadiumDTO.getSearchTxt()!=null && stadiumDTO.getSearchTxt()!="") {
			System.out.println("입력검색어 : " + stadiumDTO.getSearchTxt());
		}
		
		int totalRecordCount = 
				sqlSession.getMapper(StadiumDAOImpl.class).getTotalCount(stadiumDTO);
		
		//페이지 처리를 위한 설정값
		int pageSize = 15;
		int blockPage = 2;
		
		//현재 페이지에 대한 파라미터 처리 및 시작/끝의 rownum구하기
		int nowPage = req.getParameter("nowPage")==null ?
				1 : Integer.parseInt(req.getParameter("nowPage"));
		int start = (nowPage-1) * pageSize + 1;
		int end = nowPage * pageSize;
		
		//위에서 계산한 start, end를 DTO에 저장
		stadiumDTO.setStart(start);
		stadiumDTO.setEnd(end);
		
		//리스트 페이지에 출력할 경기장 목록
		ArrayList<StadiumDTO> stadiumList = 
				sqlSession.getMapper(StadiumDAOImpl.class).stadiumList(stadiumDTO);
		
		//페이지 번호에 대한 처리
		String pagingImg = 
				StadiumPaging.pagingImg(
						totalRecordCount, pageSize, blockPage, nowPage, 
							req.getContextPath() + "/match/stadiumMain.do?");
		model.addAttribute("pagingImg", pagingImg);
		
		
		model.addAttribute("stadiumList", stadiumList);
		
		return "match/stadium_main";
	}
	
	//경기장 상세보기 페이지 리스트
	@RequestMapping("/match/stadiumApply.do")
	public String stadiumApply(Model model, HttpServletRequest req, Principal principal) {

		String m_id = (String) (principal.getName());
		int s_idx = Integer.parseInt(req.getParameter("s_idx"));
				
		ArrayList<StadiumGameDTO> stadiumGameLists = sqlSession.getMapper(StadiumDAOImpl.class).s_gamelist(s_idx);
		ArrayList<StadiumGameDTO> lists = new ArrayList<StadiumGameDTO>();
		
		String cv = "", memo = "", addr = "", dong = "", name = "", type = ""; int price = 0, c_idx = 0, g_idx = 0;
		ArrayList<StadiumDTO> stadiumLists = new ArrayList<StadiumDTO>();
		
		int oper_time = 0, no_time = 0, yes_time = 0;
		
		if(!stadiumGameLists.isEmpty()) {
			for(StadiumGameDTO dto : stadiumGameLists) {
			
				c_idx = dto.getC_idx();
				g_idx = dto.getG_idx();
				String c_name = sqlSession.getMapper(StadiumDAOImpl.class).c_name_get(c_idx);
				dto.setC_name(c_name);
				
				String[] s_time = dto.getS_starttime().split(":");
				String[] e_time = dto.getS_endtime().split(":");
				oper_time = ((Integer.parseInt(e_time[0]) - Integer.parseInt(s_time[0])) / 2);
				yes_time = Integer.parseInt(dto.getG_time().split(":")[0]);
				
				for(int i = 0 ; i <= oper_time ; i++) {
					if(no_time < Integer.parseInt(e_time[0])) {
						
						String g_time = String.valueOf(no_time);
						String ten = String.valueOf(no_time + 2);
						String g_endtime = null;
						if(g_time.length() == 1) {
							if(!ten.equals("10")) {
								g_endtime = "0" + String.valueOf(no_time + 2);
							}
							else if(ten.equals("10")) {
								g_endtime = String.valueOf(no_time + 2);
							}
							g_time = "0" + g_time + ":00 ~ " + g_endtime + ":00";
							StadiumGameDTO stadiumGameDTO = new StadiumGameDTO();
							stadiumGameDTO.setG_time(g_time);
							lists.add(stadiumGameDTO);
						}
						else {
							g_time = g_time + ":00 ~ " + String.valueOf(no_time + 2) + ":00";
							StadiumGameDTO stadiumGameDTO = new StadiumGameDTO();
							stadiumGameDTO.setG_time(g_time);
							lists.add(stadiumGameDTO);
						}
					}
					no_time += 2;
				}
			}
			
			for(StadiumGameDTO DTO : stadiumGameLists) {
				for(StadiumGameDTO dto : lists) {
					
					System.out.println("DTO.getC_name() : " + DTO.getC_name() + " / dto.getC_name() : " + dto.getC_name());
					System.out.println("DTO.getG_time() : " + DTO.getG_time() + " / dto.getG_time() : " + dto.getG_time());
					if(dto.getG_time().equals(DTO.getG_time())) {
						
						dto.setC_name(DTO.getC_name());
						dto.setG_time(DTO.getG_time());
						dto.setG_date(DTO.getG_date());
						dto.setC_idx(DTO.getC_idx());
						dto.setG_idx(DTO.getG_idx());
					}
				}
			}
			
			stadiumLists = sqlSession.getMapper(StadiumDAOImpl.class).stadiumlist(s_idx);
			for(StadiumDTO dto : stadiumLists) {
				cv = dto.getS_cv();
				type = dto.getS_type();
				memo = dto.getS_memo();
				addr = dto.getS_addr();
				name = dto.getS_name();
				price = dto.getS_price();
				dong = dto.getS_addr().split(" ")[2];
			}
		}
		else if(stadiumGameLists.isEmpty()) {
			
			stadiumLists = sqlSession.getMapper(StadiumDAOImpl.class).stadiumlist(s_idx);
			
			for(StadiumDTO dto : stadiumLists) {
				cv = dto.getS_cv();
				type = dto.getS_type();
				memo = dto.getS_memo();
				addr = dto.getS_addr();
				name = dto.getS_name();
				price = dto.getS_price();
				dong = dto.getS_addr().split(" ")[2];
				
				String[] s_time = dto.getS_starttime().split(":");
				String[] e_time = dto.getS_endtime().split(":");
				oper_time = ((Integer.parseInt(e_time[0]) - Integer.parseInt(s_time[0])) / 2);
				
				for(int i = 0 ; i <= oper_time ; i++) {
					if(no_time < Integer.parseInt(e_time[0])) {
						
						String g_time = String.valueOf(no_time);
						String ten = String.valueOf(no_time + 2);
						String g_endtime = null;
						if(g_time.length() == 1) {
							if(!ten.equals("10")) {
								g_endtime = "0" + String.valueOf(no_time + 2);
							}
							else if(ten.equals("10")) {
								g_endtime = String.valueOf(no_time + 2);
							}
							g_time = "0" + g_time + ":00 ~ " + g_endtime + ":00";
							StadiumGameDTO stadiumGameDTO = new StadiumGameDTO();
							stadiumGameDTO.setG_time(g_time);
							lists.add(stadiumGameDTO);
						}
						else {
							g_time = g_time + ":00 ~ " + String.valueOf(no_time + 2) + ":00";
							StadiumGameDTO stadiumGameDTO = new StadiumGameDTO();
							stadiumGameDTO.setG_time(g_time);
							lists.add(stadiumGameDTO);
						}
					}
					no_time += 2;
				}
			}
		}
		
		ArrayList<ClubDTO> c_list =  sqlSession.getMapper(MatchDAOImpl.class).getC_name(m_id);
		model.addAttribute("c_list", c_list);
		
		int cash = sqlSession.getMapper(MatchDAOImpl.class).getCash(m_id);
		
		model.addAttribute("stadiumGameLists", lists);		
		model.addAttribute("s_idx", s_idx);
		model.addAttribute("cv", cv);
		model.addAttribute("type", type);
		model.addAttribute("memo", memo);
		model.addAttribute("addr", addr);
		model.addAttribute("dong", dong);
		model.addAttribute("name", name);
		model.addAttribute("price", price);
		model.addAttribute("cash", cash);
		
		return "match/stadium_apply";
	}
	
	//경기장 상세보기 페이지 리스트 검색
	@RequestMapping("/match/stadiumApplySearch.do")
	public String stadiumApplySearch(Model model, HttpServletRequest req, Principal principal) {
		
		String m_id = (String) (principal.getName());
		int s_idx = Integer.parseInt(req.getParameter("s_idx"));
		String date = req.getParameter("date");
		Date g_date = Date.valueOf(date);
		
		ArrayList<StadiumGameDTO> stadiumGameLists = sqlSession.getMapper(StadiumDAOImpl.class).s_gamelist_search(s_idx, g_date);
		ArrayList<StadiumGameDTO> lists = new ArrayList<StadiumGameDTO>();
		
		String cv = "", memo = "", addr = "", dong = "", name = "", type = ""; int price = 0, c_idx = 0, g_idx = 0;
		ArrayList<StadiumDTO> stadiumLists = new ArrayList<StadiumDTO>();
		
		int oper_time = 0, no_time = 0, yes_time = 0;
		if(!stadiumGameLists.isEmpty()) {
			for(StadiumGameDTO dto : stadiumGameLists) {
				
				c_idx = dto.getC_idx();
				g_idx = dto.getG_idx();
				String c_name = sqlSession.getMapper(StadiumDAOImpl.class).c_name_get(c_idx);
				dto.setC_name(c_name);
				
				String[] s_time = dto.getS_starttime().split(":");
				String[] e_time = dto.getS_endtime().split(":");
				oper_time = ((Integer.parseInt(e_time[0]) - Integer.parseInt(s_time[0])) / 2);
				yes_time = Integer.parseInt(dto.getG_time().split(":")[0]);
				
				for(int i = 0 ; i <= oper_time ; i++) {
					if(no_time < Integer.parseInt(e_time[0])) {
						
						String g_time = String.valueOf(no_time);
						String ten = String.valueOf(no_time + 2);
						String g_endtime = null;
						if(g_time.length() == 1) {
							if(!ten.equals("10")) {
								g_endtime = "0" + String.valueOf(no_time + 2);
							}
							else if(ten.equals("10")) {
								g_endtime = String.valueOf(no_time + 2);
							}
							g_time = "0" + g_time + ":00 ~ " + g_endtime + ":00";
							StadiumGameDTO stadiumGameDTO = new StadiumGameDTO();
							stadiumGameDTO.setG_time(g_time);
							lists.add(stadiumGameDTO);
						}
						else {
							g_time = g_time + ":00 ~ " + String.valueOf(no_time + 2) + ":00";
							StadiumGameDTO stadiumGameDTO = new StadiumGameDTO();
							stadiumGameDTO.setG_time(g_time);
							lists.add(stadiumGameDTO);
						}
					}
					no_time += 2;
				}
			}
			
			for(StadiumGameDTO DTO : stadiumGameLists) {
				for(StadiumGameDTO dto : lists) {
					
					System.out.println("DTO.getC_name() : " + DTO.getC_name() + " / dto.getC_name() : " + dto.getC_name());
					System.out.println("DTO.getG_time() : " + DTO.getG_time() + " / dto.getG_time() : " + dto.getG_time());
					if(dto.getG_time().equals(DTO.getG_time())) {
						
						dto.setC_name(DTO.getC_name());
						dto.setG_time(DTO.getG_time());
						dto.setG_date(DTO.getG_date());
						dto.setC_idx(DTO.getC_idx());
						dto.setG_idx(DTO.getG_idx());
					}
				}
			}
			stadiumLists = sqlSession.getMapper(StadiumDAOImpl.class).stadiumlist(s_idx);
			for(StadiumDTO dto : stadiumLists) {
				cv = dto.getS_cv();
				type = dto.getS_type();
				memo = dto.getS_memo();
				addr = dto.getS_addr();
				name = dto.getS_name();
				price = dto.getS_price();
				dong = dto.getS_addr().split(" ")[2];
			}
		}
		else if(stadiumGameLists.isEmpty()) {
			
			stadiumLists = sqlSession.getMapper(StadiumDAOImpl.class).stadiumlist(s_idx);
			
			for(StadiumDTO dto : stadiumLists) {
				cv = dto.getS_cv();
				type = dto.getS_type();
				memo = dto.getS_memo();
				addr = dto.getS_addr();
				name = dto.getS_name();
				price = dto.getS_price();
				dong = dto.getS_addr().split(" ")[2];
				
				String[] s_time = dto.getS_starttime().split(":");
				String[] e_time = dto.getS_endtime().split(":");
				oper_time = ((Integer.parseInt(e_time[0]) - Integer.parseInt(s_time[0])) / 2);
				
				for(int i = 0 ; i <= oper_time ; i++) {
					if(no_time < Integer.parseInt(e_time[0])) {
						
						String g_time = String.valueOf(no_time);
						String ten = String.valueOf(no_time + 2);
						String g_endtime = null;
						if(g_time.length() == 1) {
							if(!ten.equals("10")) {
								g_endtime = "0" + String.valueOf(no_time + 2);
							}
							else if(ten.equals("10")) {
								g_endtime = String.valueOf(no_time + 2);
							}
							g_time = "0" + g_time + ":00 ~ " + g_endtime + ":00";
							StadiumGameDTO stadiumGameDTO = new StadiumGameDTO();
							stadiumGameDTO.setG_time(g_time);
							lists.add(stadiumGameDTO);
						}
						else {
							g_time = g_time + ":00 ~ " + String.valueOf(no_time + 2) + ":00";
							StadiumGameDTO stadiumGameDTO = new StadiumGameDTO();
							stadiumGameDTO.setG_time(g_time);
							lists.add(stadiumGameDTO);
						}
					}
					no_time += 2;
				}
			}
		}
		
		ArrayList<ClubDTO> c_list =  sqlSession.getMapper(MatchDAOImpl.class).getC_name(m_id);
		model.addAttribute("c_list", c_list);
		
		int cash = sqlSession.getMapper(MatchDAOImpl.class).getCash(m_id);
		
		model.addAttribute("stadiumGameLists", lists);
		model.addAttribute("s_idx", s_idx);
		model.addAttribute("cv", cv);
		model.addAttribute("type", type);
		model.addAttribute("memo", memo);
		model.addAttribute("addr", addr);
		model.addAttribute("dong", dong);
		model.addAttribute("name", name);
		model.addAttribute("price", price);
		model.addAttribute("cash", cash);
		
		return "/match/stadium_apply";
	}
	
	//경기장 리스트 모달창에서 매치신청
	@RequestMapping("/match/stadiumGameApply.do")
	public String stadiumGameApply(Model model, HttpServletRequest req, Principal principal) {
		
		String m_id = principal.getName();
		
		int c_idx = Integer.parseInt(req.getParameter("c_idx"));
		int cash = Integer.parseInt(req.getParameter("result_ball"));
		int g_idx = Integer.parseInt(req.getParameter("g_idx"));
		
		String req_date = req.getParameter("date");
		Date date = Date.valueOf(req_date);
		String[] addrs = req.getParameter("addr").split(" ");
		int we_c_idx = Integer.parseInt(req.getParameter("we_c_idx"));
		
		
		if(c_idx != 0) {
			GameDTO gameDTO = new GameDTO();
			gameDTO.setG_idx(g_idx);
			gameDTO.setC_idx(we_c_idx);		
			sqlSession.getMapper(MatchDAOImpl.class).stadiumGameApply_a(gameDTO);
			sqlSession.getMapper(MatchDAOImpl.class).setCash(cash, m_id);
			
		}
		else if(c_idx == 0) {
			
			int g_num = sqlSession.getMapper(AdminDAOImpl.class).get_Gnum();
			g_num++;
			
			GameDTO gameDTO = new GameDTO();
			gameDTO.setC_idx(we_c_idx);
			gameDTO.setS_idx(Integer.parseInt(req.getParameter("s_idx")));
			gameDTO.setG_sname(req.getParameter("name"));
			gameDTO.setG_saddr(req.getParameter("addr"));
			gameDTO.setG_type(req.getParameter("type"));
			gameDTO.setG_date(date);
			gameDTO.setG_num(g_num);
			gameDTO.setG_gu(addrs[1]);
			gameDTO.setG_time(req.getParameter("time"));
			
			sqlSession.getMapper(MatchDAOImpl.class).stadiumGameApply_b(gameDTO);
			sqlSession.getMapper(AdminDAOImpl.class).set_Gnum(g_num);
			sqlSession.getMapper(MatchDAOImpl.class).setCash(cash, m_id);
			
			String c_name = sqlSession.getMapper(ClubDAOImpl.class).getClubName(we_c_idx);
			send(we_c_idx, c_name + " 팀 경기가 잡혔습니다.", "경기 참가 여부를 선택해주세요!");
		}
		
		
		return "match/match_main";
	}
	
	@RequestMapping(value = "/match/sendMessage", method = RequestMethod.POST, produces = {"application/json;"})
	public @ResponseBody ResponseEntity<String> send(@RequestBody int c_idx, String title, String content) {
		
		Map<String, Object> retVal = new HashMap<String, Object>();
		
		JSONObject body = new JSONObject();
		List<String> tokenList = new ArrayList<String>();
		
		ArrayList<MemberDTO> memberTokens = sqlSession.getMapper(MemberDAOImpl.class).getMemberTokens(c_idx);
		for(MemberDTO dto : memberTokens) {
			tokenList.add(dto.getM_token());
		}
		
		JSONArray array = new JSONArray();
		
		for(int i = 0; i < tokenList.size(); i++) {
			array.add(tokenList.get(i));
		}
		
		body.put("registration_ids", array);
		
		JSONObject notification = new JSONObject();
		
		String ms_title = "", ms_content = "";
		
		try {
			ms_title = URLEncoder.encode(title, "UTF-8");
			ms_content = URLEncoder.encode(content, "UTF-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		
		notification.put("title", ms_title);
		notification.put("body", ms_content);
		body.put("notification", notification);
		
		System.out.println("body.toString() : " + body.toString());
		
		HttpEntity<String> request = new HttpEntity<String>(body.toString());
		
		CompletableFuture<String> pushNotification = AndroidPushNotificationsService.send(request);
		CompletableFuture.allOf(pushNotification).join();
		
		try {
			String firebaseResponse = pushNotification.get();
			
			return new ResponseEntity<>(firebaseResponse, HttpStatus.OK);
		} 
		catch (InterruptedException e) {
			e.printStackTrace();
		}
		catch (ExecutionException e) {
			e.printStackTrace();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return new ResponseEntity<String>("Push Notification ERROR!", HttpStatus.BAD_REQUEST);
		
	}

	//용병페이지
	@RequestMapping("/match/player.do")
	public String player(Model model, HttpServletRequest req, HttpSession session) {
		
		ArrayList<GameDTO> lists = sqlSession.getMapper(MatchDAOImpl.class).playerList();
		
		for(GameDTO dto : lists) {
			//시작시간 쪼개기
			String[] g_time = dto.getG_time().split(":");
			dto.setG_time(g_time[0]);
		}
		
		Collections.sort(lists, new Comparator<GameDTO>() {
			@Override
			public int compare(GameDTO g1, GameDTO g2) {
				
				if(g1.getG_date().equals(g2.getG_date())) {					
					if(Integer.parseInt(g1.getG_time()) < Integer.parseInt(g2.getG_time())) {
						return -1;
					}
					else if(Integer.parseInt(g1.getG_time()) > Integer.parseInt(g2.getG_time())) {
						return 1;
					}
					return 0;
				}
				return 3;
			}
		});
		
		model.addAttribute("lists", lists);
		
		return "match/player";
	}
	
	//용병리스트 모달창에서 용병신청
	@RequestMapping("/match/extraApply.do")
	public String extraApply(Model model, HttpServletRequest req, Principal principal) {
				
		
		String m_id = (String) (principal.getName());
		int g_idx = (Integer.parseInt(req.getParameter("list_idx")));
		
		sqlSession.getMapper(MatchDAOImpl.class).extraApply(m_id, g_idx);		
		
		return "redirect:matchMain.do";
	}
		
	//게임리스트에서 경기장이름 클릭 시 카카오맵을 보여주는 페이지
	@RequestMapping("match/map.do")
	public String map() {
		
		return "match/map";
	}

	//게임 리스트 출력
	@RequestMapping("/match/game_list.do")
	public String game_list(Model model, HttpServletRequest req, Principal principal) {
        
        ArrayList<GameDTO> lists = sqlSession.getMapper(MatchDAOImpl.class).gameList();
		
		for(GameDTO dto : lists) {
			//내용에 대해 줄바꿈 처리
			String temp = dto.getG_memo().replace("\r\n", "<br>");
			dto.setG_memo(temp);
			//시작시간 쪼개기
			String[] g_time = dto.getG_time().split(":");
			dto.setG_time(g_time[0]);
			
			if(dto.getG_check().equals("yes")) {
				lists.remove(dto);
			}
		}
		
		Collections.sort(lists, new Comparator<GameDTO>() {
			@Override
			public int compare(GameDTO g1, GameDTO g2) {
				
				if(g1.getG_date().equals(g2.getG_date())) {					
					if(Integer.parseInt(g1.getG_time()) < Integer.parseInt(g2.getG_time())) {
						return -1;
					}
					else if(Integer.parseInt(g1.getG_time()) > Integer.parseInt(g2.getG_time())) {
						return 1;
					}
					return 0;
				}
				return 3;
			}
		});
		

		String m_id = (String)principal.getName();
		
		ArrayList<ClubDTO> c_list =  sqlSession.getMapper(MatchDAOImpl.class).getC_name(m_id);
		
		model.addAttribute("c_list", c_list);
		model.addAttribute("lists", lists);

		return "match/game_list";
	}

	//매칭신청(리스트 등록)시 로그인한 사용자가 가입되어있는 클럽 리스트 가져오기
	@RequestMapping("/match/gameInsert.do")
	public String gameInsert(Model model, HttpServletRequest req, Principal principal) {
		
		String m_id = (String)principal.getName();
		
		ArrayList<ClubDTO> c_list =  sqlSession.getMapper(MatchDAOImpl.class).getC_name(m_id);
		
		model.addAttribute("c_list", c_list);

		return "match/gameInsert";
	}
	
	//매칭신청(리스트 등록)
	@RequestMapping("/match/gameApply.do")
	public String gameApply(Model model, HttpServletRequest req, HttpSession session) {
		
		String req_date = req.getParameter("g_date");
		Date date = Date.valueOf(req_date);
		String[] addr = req.getParameter("g_saddr").split(" ");
		String s_time = req.getParameter("s_time");
		String e_time = req.getParameter("e_time");
		
		if(s_time.length() == 1) {
			s_time = "0" + s_time;
		}
		if(e_time.length() == 1) {
			e_time = "0" + e_time;
		}
		if(s_time.length() == 0) {
			s_time = "00";
		}
		if(e_time.length() == 0) {
			e_time = "00";
		}
		String time = s_time + ":00 ~ " + e_time + ":00";
		
		int g_num = sqlSession.getMapper(AdminDAOImpl.class).get_Gnum();
		g_num++;
		
		int c_idx = Integer.parseInt(req.getParameter("c_idx"));
		GameDTO gameDTO = new GameDTO();
		gameDTO.setC_idx(c_idx);
		gameDTO.setG_sname(req.getParameter("g_sname"));
		gameDTO.setG_saddr(req.getParameter("g_saddr"));
		gameDTO.setG_type(req.getParameter("g_type"));
		gameDTO.setG_date(date);
		gameDTO.setG_memo(req.getParameter("g_memo"));
		gameDTO.setG_num(g_num);
		gameDTO.setG_gu(addr[1]);
		gameDTO.setG_time(time);
		gameDTO.setG_lat(req.getParameter("latitude"));
		gameDTO.setG_lng(req.getParameter("longitude"));
		
		
		System.out.println("c_idx="+Integer.parseInt(req.getParameter("c_idx")));
		System.out.println("g_sname="+req.getParameter("g_sname"));
		System.out.println("latitude="+req.getParameter("latitude"));
		System.out.println("longitude="+req.getParameter("longitude"));
		
		
		sqlSession.getMapper(MatchDAOImpl.class).gameApply(gameDTO);
		sqlSession.getMapper(AdminDAOImpl.class).set_Gnum(g_num);
		
				
		return "redirect:matchMain.do";
	}
			
	//게임리스트 모달창에서 매치신청
	@RequestMapping("/match/matchApply.do")
	public String matchApply(Model model, HttpServletRequest req) {
				
		GameDTO gameDTO = new GameDTO();
		gameDTO.setG_idx(Integer.parseInt(req.getParameter("g_idx")));
		gameDTO.setC_idx(Integer.parseInt(req.getParameter("c_idx")));		
		
		sqlSession.getMapper(MatchDAOImpl.class).matchApply(gameDTO);
				
		return "redirect:matchMain.do";
	}
	
}
























