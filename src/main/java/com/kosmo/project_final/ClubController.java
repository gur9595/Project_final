package com.kosmo.project_final;

import java.security.Principal;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import mybatis.AdminDAOImpl;
import mybatis.ClubDAOImpl;
import mybatis.ClubDTO;
import mybatis.ClubMemberDTO;
import mybatis.GameDTO;
import mybatis.GameMemberDTO;
import mybatis.MatchDTO;
import mybatis.MemberDAOImpl;
import mybatis.MemberDTO;
import utils.PagingUtil;
@Controller
public class ClubController {

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/club/clubMain.do")
	public String clubMain() {
		return "club/club_main";
	}

	@RequestMapping("/club/clubMyList.do")
	public String clubMyList(Principal principal, Model model, HttpServletRequest req) {

		String m_id = principal.getName();

		ArrayList<ClubDTO> lists = sqlSession.getMapper(ClubDAOImpl.class).myClubList(m_id);

		int check = sqlSession.getMapper(ClubDAOImpl.class).myClubListCount(m_id);

		for (int i = 0; i < 5 - check; i++) {
			lists.add(new ClubDTO());
		}
		model.addAttribute("lists", lists);

		return "club/club_mylist";
	}

	@RequestMapping("/club/clubRanking.do")
	public String clubRanking() {
		return "club/club_ranking";
	}

	@RequestMapping("/club/clubSearch.do")
	public String clubSearch(Principal principal, Model model, HttpSession session, HttpServletRequest req) {

		String m_id = principal.getName();

		int totalRecordCount = sqlSession.getMapper(ClubDAOImpl.class).getTotalCount();

		int pageSize = 10;
		int blockPage = 5;

		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);

		int nowPage = req.getParameter("nowPage") == null ? 1 : Integer.parseInt(req.getParameter("nowPage"));

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;

		System.out.println(req.getParameter("clubName") + "" + req.getParameter("area") + ""
				+ req.getParameter("ability") + "" + req.getParameter("gender") + "" + req.getParameter("age"));

		ArrayList<ClubDTO> lists = sqlSession.getMapper(ClubDAOImpl.class).listPage(start, end);

		String pagingImg = PagingUtil.pagingImg(totalRecordCount, pageSize,
		blockPage, nowPage, req.getContextPath() + "/club/clubMain.do?");

		model.addAttribute("pagingImg", pagingImg);
		
		model.addAttribute("m_id", m_id);

		System.out.println(totalRecordCount);

		model.addAttribute("lists", lists);
		return "club/club_search";
	} 

	@RequestMapping("/club/clubSearchFilter.do")
	public String clubSearchFilter(Principal principal, Model model, HttpSession session, HttpServletRequest req) {

		String m_id = principal.getName();

		ClubDTO clubDTO = new ClubDTO();
		String clubName = req.getParameter("clubName");

		clubName = clubName.replaceAll("\\+", " ");

		clubDTO.setC_name(clubName);
		clubDTO.setC_area(req.getParameter("area"));
		clubDTO.setC_ability(req.getParameter("ability"));
		clubDTO.setC_gender(req.getParameter("gender"));
		clubDTO.setC_age(req.getParameter("age"));

		System.out.println(clubName + " " + req.getParameter("area") + " "
				+ req.getParameter("ability") + " " + req.getParameter("gender") + " " + req.getParameter("age"));

		int totalRecordCount = sqlSession.getMapper(ClubDAOImpl.class).getTotalCountFilter(clubDTO);

		// 페이지 처리를 위한 설정값.

		int pageSize = 10;
		int blockPage = 5;

		// 전체 페이지 수 계산 int totalPage
		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);

		int nowPage = req.getParameter("nowPage") == null ? 1 : Integer.parseInt(req.getParameter("nowPage"));

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		
		clubDTO.setStart(start);
		clubDTO.setEnd(end);

		ArrayList<ClubDTO> lists = sqlSession.getMapper(ClubDAOImpl.class).listPageFilter(clubDTO);

		String pagingImg = PagingUtil.pagingImgFilter(totalRecordCount, pageSize,
		blockPage, nowPage, req.getContextPath() + "/club/clubSearch.do?");

		model.addAttribute("pagingImg", pagingImg);

		System.out.println(totalRecordCount);

		model.addAttribute("lists", lists);
		return "club/club_search";
	}

	@RequestMapping(value = "/club/clubApplyAction.do", method = RequestMethod.POST)
	public String clubApplyAction(HttpServletRequest req) {

		ClubMemberDTO clubMemberDTO = new ClubMemberDTO();
		clubMemberDTO.setC_idx(req.getParameter("c_idx"));
		clubMemberDTO.setM_id(req.getParameter("m_id"));
		clubMemberDTO.setCm_memo(req.getParameter("memo"));
		// Mybatis 사용
		int suc = sqlSession.getMapper(ClubDAOImpl.class).clubApply(clubMemberDTO);

		System.out.println(suc);

		return "club/club_main";
	}

	@RequestMapping("/club/clubCreate.do")
	public String clubCreate() {

		return "club/club_create";
	}

	@RequestMapping("/club/clubView.do")
	public String clubView(HttpServletRequest req, Model model) {
		
		int c_idx = Integer.parseInt(req.getParameter("c_idx"));
		ClubDTO clubDTO = new ClubDTO();
		clubDTO = sqlSession.getMapper(ClubDAOImpl.class).clubView(Integer.parseInt(req.getParameter("c_idx")));
		int clubMemberCount = sqlSession.getMapper(ClubDAOImpl.class).clubMemberCount(c_idx);
		
		model.addAttribute("clubMemberCount", clubMemberCount);
		model.addAttribute("clubDTO", clubDTO);

		return "club/club_view_main";
	}

	@RequestMapping("/club/clubViewMember.do")
	public String clubViewMember(HttpServletRequest req, Model model) {
		
		int c_idx = Integer.parseInt(req.getParameter("c_idx"));
		ClubDTO clubDTO = new ClubDTO();
		clubDTO = sqlSession.getMapper(ClubDAOImpl.class).clubView(Integer.parseInt(req.getParameter("c_idx")));
		ArrayList<MemberDTO> lists = sqlSession.getMapper(ClubDAOImpl.class).clubViewMember(c_idx);
		
		model.addAttribute("lists", lists);
		model.addAttribute("clubDTO", clubDTO);
		
		return "club/club_view_member";
	}
	
	@RequestMapping("/club/clubViewRank.do")
	public String clubViewRank(HttpServletRequest req, Model model) {

		int c_idx = Integer.parseInt(req.getParameter("c_idx"));

		ClubDTO clubDTO = new ClubDTO();
		clubDTO = sqlSession.getMapper(ClubDAOImpl.class).clubView(Integer.parseInt(req.getParameter("c_idx")));

		model.addAttribute("clubDTO", clubDTO);

		return "club/club_view_rank";
	}

	@RequestMapping("/club/clubViewMatch.do")
	public String clubViewMatch(HttpServletRequest req, Model model) {
		
		int c_idx = Integer.parseInt(req.getParameter("c_idx"));
		System.out.println("c_idx:"+ c_idx);
		ClubDTO clubDTO = new ClubDTO();
		clubDTO = sqlSession.getMapper(ClubDAOImpl.class).clubView(c_idx);
		
		ArrayList<MatchDTO> lists = sqlSession.getMapper(ClubDAOImpl.class).clubViewMatch(c_idx);
 
		for(MatchDTO matchDTO : lists) {
			
			int g_num = matchDTO.getG_num();
			
			MatchDTO matchDTO2 = sqlSession.getMapper(ClubDAOImpl.class).clubMatchOpponent(g_num, c_idx);
			
			
			if(sqlSession.getMapper(ClubDAOImpl.class).clubMatchOpponentCount(g_num, c_idx)>0) {
				matchDTO.setC_idx(matchDTO2.getC_idx());
				matchDTO.setC_name(matchDTO2.getC_name());
			}
			else {
				matchDTO.setC_name("");
			}
			
		}
				
		ArrayList<GameDTO> lists2 = sqlSession.getMapper(ClubDAOImpl.class).clubViewAccept(c_idx); 
		
		model.addAttribute("lists", lists); 
				
		model.addAttribute("lists2", lists2); 
		
		model.addAttribute("clubDTO", clubDTO);   
		    

		return "club/club_view_match";
	}
	
	@RequestMapping("/club/clubViewFormation.do")
	public String clubViewForm(HttpServletRequest req, Model model) {
		
		int c_idx = Integer.parseInt(req.getParameter("c_idx"));
		System.out.println("c_idx:"+ c_idx);
		ClubDTO clubDTO = new ClubDTO();
		clubDTO = sqlSession.getMapper(ClubDAOImpl.class).clubView(Integer.parseInt(req.getParameter("c_idx")));
		
		ArrayList<MatchDTO> lists = sqlSession.getMapper(ClubDAOImpl.class).clubViewMatch(c_idx);
		
		model.addAttribute("lists", lists); 
		model.addAttribute("clubDTO", clubDTO);   
		    

		return "club/club_view_formation";
	}
	
	@RequestMapping("/club/clubMakeFormation.do")
	public String clubMakeForm(HttpServletRequest req, Model model) {
		
		int g_idx = Integer.parseInt(req.getParameter("g_idx"));
		
		ArrayList<GameMemberDTO> lists = sqlSession.getMapper(ClubDAOImpl.class).clubMakingForm(g_idx); 
		
		model.addAttribute("lists", lists);  

		return "club/club_view_formmake";
	}

	@RequestMapping("/club/clubViewManage.do")
	public String clubViewManage(HttpServletRequest req, Model model) {
		
		int c_idx = Integer.parseInt(req.getParameter("c_idx"));
		System.out.println("c_idx : "+c_idx);
		ClubDTO clubDTO = new ClubDTO();
		clubDTO = sqlSession.getMapper(ClubDAOImpl.class).clubView(Integer.parseInt(req.getParameter("c_idx")));
		
		ArrayList<MemberDTO> applylists = sqlSession.getMapper(ClubDAOImpl.class).clubManageApplyList(clubDTO);
		ArrayList<MemberDTO> gradelists = sqlSession.getMapper(ClubDAOImpl.class).clubViewGrade(c_idx);
		
		
		model.addAttribute("clubDTO", clubDTO);
		model.addAttribute("applylists", applylists);
		model.addAttribute("gradelists", gradelists);

		return "club/club_view_manage";
	}
	
	
	@RequestMapping(value="/club/clubManageEdit.do", method = RequestMethod.POST)
	public String clubManageEdit(HttpServletRequest req, Model model) {
		
		int c_idx = Integer.parseInt(req.getParameter("c_idx"));
		String cm_grade = req.getParameter("cm_grade");
		String m_id = req.getParameter("m_id");
		
		ClubDTO clubDTO = new ClubDTO();
		clubDTO = sqlSession.getMapper(ClubDAOImpl.class).clubView(Integer.parseInt(req.getParameter("c_idx")));
		
		int clubManageEdit = sqlSession.getMapper(ClubDAOImpl.class).clubViewUpdate(c_idx, cm_grade, m_id);
        
        model.addAttribute("clubManageEdit", clubManageEdit);
		return "redirect:/club/clubViewManage.do?c_idx="+ c_idx;
	}
	
	
	
	
	@RequestMapping("/club/clubMemberApply.do")
	public String clubMemberApply(HttpServletRequest req, Model model) {

		ClubDTO clubDTO = new ClubDTO();
		clubDTO = sqlSession.getMapper(ClubDAOImpl.class).clubView(Integer.parseInt(req.getParameter("c_idx")));
		
		int c_idx = Integer.parseInt(req.getParameter("c_idx"));
		
		sqlSession.getMapper(ClubDAOImpl.class).clubMemberApply(Integer.parseInt(req.getParameter("cm_idx")));
		
		model.addAttribute("clubDTO", clubDTO);

		return "redirect:/club/clubViewManage.do?c_idx="+ c_idx;
	}
	
	@RequestMapping("/club/clubMemberReject.do")
	public String clubMemberReject(HttpServletRequest req, Model model) {
		
		ClubDTO clubDTO = new ClubDTO();
		clubDTO = sqlSession.getMapper(ClubDAOImpl.class).clubView(Integer.parseInt(req.getParameter("c_idx")));

		sqlSession.getMapper(ClubDAOImpl.class).clubMemberReject(Integer.parseInt(req.getParameter("cm_idx")));
		
		int c_idx = Integer.parseInt(req.getParameter("c_idx"));
		
		model.addAttribute("clubDTO", clubDTO);
		
		return "redirect:/club/clubViewManage.do?c_idx="+ c_idx;
	}
	
	@RequestMapping("/club/clubMemberRelease.do")
	public String clubMemberRelease(HttpServletRequest req, Model model) {
		
		ClubDTO clubDTO = new ClubDTO();
		clubDTO = sqlSession.getMapper(ClubDAOImpl.class).clubView(Integer.parseInt(req.getParameter("c_idx")));

		sqlSession.getMapper(ClubDAOImpl.class).clubMemberReject(Integer.parseInt(req.getParameter("cm_idx")));
		
		int c_idx = Integer.parseInt(req.getParameter("c_idx"));
		
		model.addAttribute("clubDTO", clubDTO);
		
		return "redirect:/club/clubViewMember.do?c_idx="+ c_idx;
	}

	public static String getUuid() {
		String uuid = UUID.randomUUID().toString();
		System.out.println("생성된UUID-1: " + uuid);
		uuid = uuid.replaceAll("-", "");
		System.out.println("생성된UUID-2: " + uuid);
		return uuid;
	}

	// 클럽 생성
	@RequestMapping(value = "/club/clubCreate.do", method = RequestMethod.POST)
	public String clubCreatePro(Principal principal, HttpSession session, ClubDTO clubdto, Model model,
			MultipartHttpServletRequest req) {

		String m_id = principal.getName();
		// 서버의 물리적경로 가져오기
		String path = req.getSession().getServletContext().getRealPath("/resources/uploadsFile");

		// 폼값과 파일명을 저장후 View로 전달하기 위한 맵 생성
		Map returnObj = new HashMap();
		try {
			// 업로드폼의 file속성의 필드를 가져온다. (여기서는 2개임)
			Iterator itr = req.getFileNames();

			MultipartFile mfile = null;
			String fileName = "";
			List resultList = new ArrayList();

			// 파일외의 폼값 받음(여기서는 제목만 있음)
			String title = req.getParameter("title");
			System.out.println("title=" + title);

			/*
			 * 물리적 경로를 기반으로 File 객체를 생성한후 디렉토리가 존재하는지 확인함 만약 없다면 생성함
			 */
			File directory = new File(path);
			if (!directory.isDirectory()) {
				directory.mkdirs();
			}
			// 업로드폼의 file속성의 필드갯수만큼 반복
			while (itr.hasNext()) {

				// 전송된 파일의 이름을 읽어옴
				fileName = (String) itr.next();
				mfile = req.getFile(fileName);
				System.out.println("mfile= " + mfile);

				// 한글꺠짐방지 처리후 전송된파일명을 가져옴
				String originalName = new String(mfile.getOriginalFilename().getBytes(), "UTF-8");

				// 서버로 전송된 파일이 없다면 while문의 처음으로 돌아간다
				if ("".equals(originalName)) {
					continue;
				}

				// 파일명에서 확장자 부분을 가져옴
				String ext = originalName.substring(originalName.lastIndexOf('.'));

				// UUID를 통해 생성된 문자열과 확장자를 합침
				String saveFileName = getUuid() + ext;

				// 물리적경로에 새롭게 생성된 파일명으로 파일저장
				File serverFullName = new File(path + File.separator + saveFileName);
				mfile.transferTo(serverFullName);

				// 서버에 파일업로드 완료후...
				Map file = new HashMap();
				file.put("originalName", originalName); // 원본파일명
				file.put("saveFileName", saveFileName); // 저장된파일명
				file.put("serverFullName", serverFullName);// 서버의 전체 경로
				file.put("title", title); // 제목
				// 위4가지 정보를 저장한 Map을 ArrayList에 저장한다.
				resultList.add(file);

				clubdto.setC_emb(saveFileName);

				sqlSession.getMapper(ClubDAOImpl.class).clubCreate(clubdto);

				int idx = sqlSession.getMapper(ClubDAOImpl.class).clubIdx(clubdto);

				sqlSession.getMapper(ClubDAOImpl.class).clubCreateMember(m_id, idx);

			}
			returnObj.put("files", resultList);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "club/club_main";
	}

}