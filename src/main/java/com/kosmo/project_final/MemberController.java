package com.kosmo.project_final;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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

import mybatis.ClubDAOImpl;
import mybatis.MemberDAOImpl;
import mybatis.MemberDTO;
import mybatis.StadiumDAOImpl;
import mybatis.StadiumDTO;


@Controller
public class MemberController {

	@Autowired
	private SqlSession sqlSession;

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

	@RequestMapping("/member/managerMain.do")
	public String managerMain() {

		return "member/manager_main";
	}

	@RequestMapping("/member/managerJoin.do")
	public String managerJoin() {

		return"member/managerJoin";
	}

	@RequestMapping("/member/id_pw.do")
	public String id_pw() {

		return "/member/id_pw";
	}



	@RequestMapping(value = "/member/memberJoin1.do", method = RequestMethod.POST) 
	public String memberJoinPro1(HttpServletRequest req, Model model) {

		String m_id = req.getParameter("m_id");
		String m_pw = req.getParameter("m_pw");
		String m_name = req.getParameter("m_name");
		String m_birth = req.getParameter("m_birth");
		String m_phone = req.getParameter("m_phone");
		String m_email = req.getParameter("m_email");
		String m_addr1 = req.getParameter("m_addr1");
		String m_addr2 = req.getParameter("m_addr2");

		String m_addr = m_addr1+" "+m_addr2;

		model.addAttribute("m_id",m_id);
		model.addAttribute("m_pw",m_pw);
		model.addAttribute("m_name",m_name);
		model.addAttribute("m_birth",m_birth);
		model.addAttribute("m_phone",m_phone);
		model.addAttribute("m_email",m_email);
		model.addAttribute("m_addr",m_addr);



		return "member/member_agree2";
	}

	public static String getUuid() {
		String uuid= UUID.randomUUID().toString();
		System.out.println("생성된UUID-1: "+uuid);
		uuid = uuid.replaceAll("-", "");
		System.out.println("생성된UUID-2: "+uuid);
		return uuid;
	}

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
						file.put("originalName", originalName); 	//원본파일명
						file.put("saveFileName", saveFileName);		//저장된파일명
						file.put("serverFullName", serverFullName);//서버의 전체 경로
						file.put("title", title);					//제목
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

	@RequestMapping("/member/member_stadiumIn.do")
	public String member_stadiumIn() {

		return"member/member_stadiumIn";
	}

	@RequestMapping("/member/member_stadiumInsert.do")
	public String member_stadiumInsert(HttpSession session, StadiumDTO dto,HttpServletRequest req) {
		
		String s_addr1 = req.getParameter("s_addr1");
		String s_addr2 = req.getParameter("s_addr2");
		String s_addr = s_addr1+" "+s_addr2;
		
		dto.setS_addr(s_addr);
		
		sqlSession.getMapper(StadiumDAOImpl.class).stadiumInsert(dto);
		
		return"member/member_select";
	}
	
	@RequestMapping("/member/error.do")
	  public String error(){
		  
		  return "/member/error";
	  }




	@RequestMapping("/member/memberEdit.do")
	public String memberMyPage() {

		return"member/memberEdit";
	}

	@RequestMapping("/member/memberHistory.do")
	public String memberOMyPage() {

		return"member/memberHistory";
	}


}
