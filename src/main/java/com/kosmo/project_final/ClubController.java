package com.kosmo.project_final;


import java.security.Principal;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mybatis.ClubDAOImpl;
import mybatis.ClubDTO;
import mybatis.ClubMemberDTO;
@Controller
public class ClubController {
   
   @Autowired
   private SqlSession sqlSession;
   
   @RequestMapping("/club/clubMain.do")
   public String clubMain() {      
      return "club/club_main";
   } 
   
   @RequestMapping("/club/clubMyList.do")
   public String clubMyList(Model model, HttpServletRequest req) {
      

      
   
      return "club/club_mylist";
   }
   
   @RequestMapping("/club/clubRanking.do")
   public String clubRanking() {      
      return "club/club_ranking";
   }
   
   @RequestMapping("/club/clubSearch.do")
   public String clubSearch(Principal principal, Model model, HttpSession session, HttpServletRequest req) { 
      
	  String m_id = principal.getName();
	  session.setAttribute("m_id",m_id);
	   
	  ClubDTO clubDTO = new ClubDTO(); 
      clubDTO.setC_name(req.getParameter("clubName"));
      clubDTO.setC_area(req.getParameter("area"));
      clubDTO.setC_ability(req.getParameter("ability"));
      clubDTO.setC_gender(req.getParameter("gender"));
      clubDTO.setC_age(req.getParameter("age"));
      
      int totalRecordCount = sqlSession.getMapper(ClubDAOImpl.class).getTotalCount(clubDTO);
      
    //페이지 처리를 위한 설정값.
      /*
       * int pageSize =
       * Integer.parseInt(EnvFileReader.getValue("SpringBbsInit.properties",
       * "springBoard.pageSize")); int blockPage =
       * Integer.parseInt(EnvFileReader.getValue("SpringBbsInit.properties",
       * "springBoard.blockPage"));
       * 
       * //전체 페이지 수 계산 int totalPage
       * =(int)Math.ceil((double)totalRecordCount/pageSize);
       * 
       * int nowPage = req.getParameter("nowPage")==null ? 1 :
       * Integer.parseInt(req.getParameter("nowPage"));
       * 
       * int start =(nowPage-1) * pageSize + 1; int end = nowPage * pageSize;
       * 
       * parameterDTO.setStart(start); parameterDTO.setEnd(end);
       */
      ArrayList<ClubDTO> lists = sqlSession.getMapper(ClubDAOImpl.class).listPage(clubDTO);
      
      //String pagingImg = PagingUtil.pagingImg(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath() + "/mybatis/list.do?");
      
      //model.addAttribute("pagingImg", pagingImg);
      
      //model객체에 저장
      System.out.println(totalRecordCount);
      
      model.addAttribute("lists", lists);
      return "club/club_search";
   }
   
   @RequestMapping(value="/club/clubApplyAction.do", method=RequestMethod.POST)
   public String clubApplyAction(HttpServletRequest req)
   {  
	  
      ClubMemberDTO clubMemberDTO = new ClubMemberDTO();
      clubMemberDTO.setC_idx(req.getParameter("c_idx"));
      clubMemberDTO.setM_id(req.getParameter("m_id"));
      clubMemberDTO.setCm_memo(req.getParameter("memo"));
      //Mybatis 사용
      int suc = sqlSession.getMapper(ClubDAOImpl.class).clubApply(clubMemberDTO);
      
      System.out.println(suc);
      
      return "club/club_main";
   }
   
   @RequestMapping("/club/clubCreate.do")
   public String clubCreate() {   

      return "club/club_create";
   }
   
   @RequestMapping("/club/clubView.do")
   public String clubView() {
      return "club/club_view";
   }
   
   //클럽 생성
   @RequestMapping(value="/club/clubCreate.do", method = RequestMethod.POST)
   public String clubCreatePro(HttpSession session, ClubDTO clubdto) {
      
      sqlSession.getMapper(ClubDAOImpl.class).clubCreate(clubdto);
      
      return "club/club_main";
   }
   
   //클럽 검색
   /*
    * @RequestMapping(value="/club/clubSearch.do") public String
    * clubSearchPro(Model model, HttpServletRequest req) {
    * 
    * ParameterDTO parameterDTO = new ParameterDTO();
    * parameterDTO.setSearchTxt(req.getParameter("searchTxt"));
    * System.out.println("검색어:"+parameterDTO.getSearchTxt());
    * 
    * //리스트 페이지에 출력할 게시물 가져오기 ArrayList<ClubDTO>lists =
    * sqlSession.getMapper(ClubDAOImpl.class) .listsPage(parameterDTO);
    * 
    * //model객체에 저장 model.addAttribute("lists", lists);
    * 
    * return "club/club_main"; }
    */
   
   
   
}








