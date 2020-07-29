package com.kosmo.project_final;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
   
   @RequestMapping("/member/home.do")
   public String securityIndex2_1(Principal principal, HttpSession session) {
	   
      String m_id = principal.getName();
      System.out.println("m_id = "+m_id);
      
      return "redirect:/";
      
   }


   @RequestMapping(value="/login.do", method = RequestMethod.POST)
   public String printUser(Model model, Principal principal) {

      String m_id = principal.getName();//get logged in username

      model.addAttribute("m_id", m_id);

      System.out.println("m_id : "+m_id);

      return "home";

   }
}