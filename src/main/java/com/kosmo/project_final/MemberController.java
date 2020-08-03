package com.kosmo.project_final;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.github.scribejava.core.model.OAuth2AccessToken;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import mybatis.ClubDAOImpl;

import mybatis.MemberDAOImpl;
import mybatis.MemberDTO;
import mybatis.StadiumDAOImpl;
import mybatis.StadiumDTO;


@Controller
public class MemberController {

   @Autowired
   private SqlSession sqlSession;
   
   @Autowired
   private JavaMailSender mailSender;

   @RequestMapping("/member/memberSelect.do")
   public String member_select() {

      return "/member/member_select";
   }

   @RequestMapping("/member/memberAgree.do")
   public String memberAgree() {

      return "member/member_agree";
   }

   @RequestMapping("/member/article.do")
   public String article() {

      return "member/article";   
   }


   @RequestMapping("/member/login.do")
   public String login() {

      return "member/login";
   }


   @RequestMapping("/member/managerJoin.do")
   public String managerJoin() {

      return"member/managerJoin";
   }

   @RequestMapping("/member/id_pw.do")
   public String id_pw() {

      return "/member/id_pw";
   }

// id찾기 메일전송
	@RequestMapping(value = "/member/id_mailSending.do")
	public String id_mailSending(HttpServletRequest request) {

		MemberDTO memberDTO = new MemberDTO();

		// 보내는 사람 이메일
		String setfrom = "wjvnsej";
		// 받는 사람 이름
		String name = request.getParameter("id_name");
		// 받는 사람 이메일
		String tomail = request.getParameter("id_email");
		// 제목
		String title = "<B-PRO>고객님의 아이디 찾기 결과를 알려드립니다."; 
		// 내용
		String content = "고객님의 아이디는 '";

		memberDTO.setM_name(name);
		memberDTO.setM_email(tomail);

		String id = sqlSession.getMapper(MemberDAOImpl.class).id_mailSending(memberDTO);

		content += id + "' 입니다.\n저희 B-PRO를 이용해주셔서 감사합니다!\n좋은하루되세요!";

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message,
					true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}

		return "/member/id_pw";
	}

	// pw찾기 메일전송
	@RequestMapping(value = "/member/pw_mailSending.do")
	public String pw_mailSending(HttpServletRequest request) {

		MemberDTO memberDTO = new MemberDTO();

		// 보내는 사람 이메일
		String setfrom = "wjvnsej";
		// 받는 사람 아이디
		String id = request.getParameter("pw_id");
		// 받는 사람 이메일
		String tomail = request.getParameter("pw_email");
		// 제목
		String title = "<B-PRO>고객님의 비밀번호 찾기 결과를 알려드립니다."; 
		// 내용
		String content = "고객님의 비밀번호는 '";

		memberDTO.setM_id(id);
		memberDTO.setM_email(tomail);

		String pass = sqlSession.getMapper(MemberDAOImpl.class).pw_mailSending(memberDTO);

		content += pass + "' 입니다.\n저희 B-PRO를 이용해주셔서 감사합니다!\n좋은하루되세요!";

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message,
					true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}

		return "/member/id_pw";
	}
	
	//회원가입 1페이지에서 2페이지로 데이터를 보냄
   @RequestMapping(value = "/member/memberJoin1.do", method = RequestMethod.POST) 
   public String memberJoinPro1(HttpServletRequest req, Model model) {

      String m_id = req.getParameter("m_id");
      String m_pw = req.getParameter("m_pw");
      String m_name = req.getParameter("m_name");
      String m_birth = req.getParameter("m_birth");
      String m_sex = req.getParameter("m_sex");
      String m_phone = req.getParameter("m_phone");
      String m_email = req.getParameter("m_email");

      model.addAttribute("m_id",m_id);
      model.addAttribute("m_pw",m_pw);
      model.addAttribute("m_name",m_name);
      model.addAttribute("m_birth",m_birth);
      model.addAttribute("m_sex", m_sex);
      model.addAttribute("m_phone",m_phone);
      model.addAttribute("m_email",m_email);
       
      return "member/member_agree2";
   }
   
   public static String getUuid() {
      String uuid= UUID.randomUUID().toString();
      System.out.println("생성된UUID-1: "+uuid);
      uuid = uuid.replaceAll("-", "");
      System.out.println("생성된UUID-2: "+uuid);
      return uuid;
   }
   
   //회원가입 2페이지에서 파일업로드후 DB저장
   @RequestMapping(value="/member/memberJoin2.do",method=RequestMethod.POST)
   public String memberJoinPro2(HttpSession session, MemberDTO dto, Model model , MultipartHttpServletRequest req) {
      
      //서버의 물리적경로 가져오기
            String path = req.getSession().getServletContext().getRealPath("/resources/uploadsFile");

            //폼값과 파일명을 저장후 View로 전달하기 위한 맵 생성
            Map returnObj = new HashMap();
            try {
               //업로드폼의 file속성의 필드를 가져온다. (여기서는 2개임)
               Iterator itr= req.getFileNames();

               MultipartFile mfile = null;
               String fileName = "";
               List resultList = new ArrayList();

               //파일외의 폼값 받음(여기서는 제목만 있음)
               String title = req.getParameter("title");
               System.out.println("title="+ title);

               /*
                      물리적 경로를 기반으로 File 객체를 생성한후 
                      디렉토리가 존재하는지 확인함 만약 없다면 생성함 
                */
               File directory = new File(path);
               if(!directory.isDirectory()) {
                  directory.mkdirs();
               }
               //업로드폼의 file속성의 필드갯수만큼 반복
               while(itr.hasNext()) {

                  //전송된 파일의 이름을 읽어옴
                  fileName = (String)itr.next();
                  mfile = req.getFile(fileName);
                  System.out.println("mfile= "+mfile);

                  //한글꺠짐방지 처리후 전송된파일명을 가져옴
                  String originalName= new String(mfile.getOriginalFilename().getBytes(),"UTF-8");

                  //서버로 전송된 파일이 없다면 while문의 처음으로 돌아간다
                  if("".equals(originalName)) {
                     continue;
                  }

                  //파일명에서 확장자 부분을 가져옴
                  String ext = originalName.substring(originalName.lastIndexOf('.'));

                  //UUID를 통해 생성된 문자열과 확장자를 합침
                  String saveFileName = getUuid() +ext;

                  //물리적경로에 새롭게 생성된 파일명으로 파일저장 
                  File serverFullName = new File(path+File.separator+saveFileName);
                  mfile.transferTo(serverFullName);

                  //서버에 파일업로드 완료후...
                  Map file = new HashMap();
                  file.put("originalName", originalName);    //원본파일명
                  file.put("saveFileName", saveFileName);      //저장된파일명
                  file.put("serverFullName", serverFullName);//서버의 전체 경로
                  file.put("title", title);               //제목
                  //위4가지 정보를 저장한 Map을 ArrayList에 저장한다.
                  resultList.add(file);

                  dto.setM_pic(saveFileName);
                  
                  sqlSession.getMapper(MemberDAOImpl.class).memberJoin(dto);
               }
               returnObj.put("files", resultList);
            } catch (IOException e) {
               e.printStackTrace();
            } catch (Exception e) {
               e.printStackTrace();
            }     

      return "member/login"; 
   }
   
   //회원정보 수정
   @RequestMapping(value="/member/memberEditAction.do",method=RequestMethod.POST)
   public String memberEditAction(MemberDTO dto, MultipartHttpServletRequest req) {
      
	   	//서버의 물리적경로 가져오기
	   
		String path = req.getSession().getServletContext().getRealPath("/resources/uploadsFile");
				
		//폼값과 파일명을 저장후 View로 전달하기 위한 맵 생성
		Map returnObj = new HashMap();
		try {
		   //업로드폼의 file속성의 필드를 가져온다. (여기서는 2개임)
		   Iterator itr= req.getFileNames();
		
		   MultipartFile mfile = null;
		   String fileName = "";
		   List resultList = new ArrayList();
		
		   //파일외의 폼값 받음(여기서는 제목만 있음)
		   String title = req.getParameter("title");
		   System.out.println("title="+ title);

           /*
                      물리적 경로를 기반으로 File 객체를 생성한후 
                      디렉토리가 존재하는지 확인함 만약 없다면 생성함 
        	*/
           File directory = new File(path);
           if(!directory.isDirectory()) {
              directory.mkdirs();
           }
           //업로드폼의 file속성의 필드갯수만큼 반복
           while(itr.hasNext()) {

              //전송된 파일의 이름을 읽어옴
              fileName = (String)itr.next();
              mfile = req.getFile(fileName);
              System.out.println("mfile= "+mfile);

              //한글꺠짐방지 처리후 전송된파일명을 가져옴
              String originalName= new String(mfile.getOriginalFilename().getBytes(),"UTF-8");

              //서버로 전송된 파일이 없다면 while문의 처음으로 돌아간다
              if("".equals(originalName)) {
                 continue;
              }

              //파일명에서 확장자 부분을 가져옴
              String ext = originalName.substring(originalName.lastIndexOf('.'));

              //UUID를 통해 생성된 문자열과 확장자를 합침
              String saveFileName = getUuid() +ext;

              //물리적경로에 새롭게 생성된 파일명으로 파일저장 
              File serverFullName = new File(path+File.separator+saveFileName);
              mfile.transferTo(serverFullName);

              //서버에 파일업로드 완료후...
              Map file = new HashMap();
              file.put("originalName", originalName);    //원본파일명
              file.put("saveFileName", saveFileName);      //저장된파일명
              file.put("serverFullName", serverFullName);//서버의 전체 경로
              file.put("title", title);               //제목
              //위4가지 정보를 저장한 Map을 ArrayList에 저장한다.
              resultList.add(file);

              dto.setM_pic(saveFileName);

              int aa=sqlSession.getMapper(MemberDAOImpl.class).memberUpdate(dto);
              System.out.println("aa : " + aa);
           }
           		
       		returnObj.put("files", resultList);
        } 
		catch (IOException e) {
           e.printStackTrace();
        } 
		catch (Exception e) {
           e.printStackTrace();
        }
            

      return "redirect:/"; 
   }
   
   //경기장 등록페이지
   @RequestMapping("/member/member_stadiumIn.do")
   public String member_stadiumIn() {

      return"member/member_stadiumIn";
   }
   
   //경기장 등록
   @RequestMapping("/member/member_stadiumInsert.do")
   public String member_stadiumInsert(HttpSession session, StadiumDTO dto,HttpServletRequest req) {
      
      String s_addr1 = req.getParameter("s_addr1");
      String s_addr2 = req.getParameter("s_addr2");
      String s_addr = s_addr1+" "+s_addr2;
      
      dto.setS_addr(s_addr);
      
      System.out.println("s_memo : "+dto.getS_memo());
      sqlSession.getMapper(StadiumDAOImpl.class).stadiumInsert(dto);
      
      return"member/member_select";
   }
   
   //접근 에러
   @RequestMapping("/member/error.do")
   public String error(){  
      return "/member/error";
   }
   
   //회원정보를 가지고 회원수정 페이지 이동
   @RequestMapping("/member/memberEdit.do")
   public String memberEdit(Model model , HttpServletRequest req, Principal principal) {
      String m_id = principal.getName();

      if(m_id =="") {
         return "redirect:login.do";
      }

      MemberDTO dto = new MemberDTO();
      dto.setM_id(m_id);

      dto = sqlSession.getMapper(MemberDAOImpl.class).memberInfo(dto);

      String addr = dto.getM_addr();

      System.out.println(addr);

      String[] addrArr = addr.split(",");

      req.setAttribute("addr1", addrArr[0]);
      req.setAttribute("addr2", addrArr[1]);

      model.addAttribute("dto",dto);
      
      return"member/memberEdit";
   }
   

   @RequestMapping("/member/memberEdit2.do")
   public String memberEdit2(HttpServletRequest req, Model model, Principal principal) {

	   String m_id = principal.getName();

      if(m_id =="") {
         return "redirect:login.do";
      }

      MemberDTO dto = new MemberDTO();
      dto.setM_id(m_id);
      
      dto = sqlSession.getMapper(MemberDAOImpl.class).memberInfo(dto);
	  
      String m_addr1 = req.getParameter("m_addr1");
      String m_addr2 = req.getParameter("m_addr2");

      String m_addr = m_addr1+","+m_addr2;
      
      dto.setM_id(req.getParameter("m_id"));
      dto.setM_pw(req.getParameter("m_pw"));
      dto.setM_name(req.getParameter("m_name"));
      dto.setM_birth(req.getParameter("m_birth"));
      dto.setM_phone(req.getParameter("m_phone"));
      dto.setM_email(req.getParameter("m_email"));
      dto.setM_addr(m_addr);
      
      model.addAttribute("dto", dto);

      principal.getName();

      return "member/memberEdit2";
   }

   @RequestMapping("/member/mypageMain.do")
   public String mypageMain() {

      return"member/mypage_main";
   }


}