package controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestScope;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import model.BoardDataBean;
import model.MemberDataBean;
import service.BoardDBBeanMybatis;
import service.MemberDBBeanMybatis;

@Controller
@RequestMapping("/member/")
public class MemberController {
	
	public MemberController() {
		System.out.println("member");
	}
	

	ModelAndView mv = new ModelAndView();
	
	@Autowired
	public MemberDBBeanMybatis memberDBBeanMybatis;
	
	
	
	
	@RequestMapping("input")
	public ModelAndView input(MemberDataBean member)throws Exception{
		 
		mv.setViewName("member/inputForm");
		
		return mv;
	}
	
	@RequestMapping("inputPro")
	public ModelAndView inputPro(MemberDataBean member)throws Exception{
		int check=memberDBBeanMybatis.insertMember(member);
		mv.addObject("check",check);
		mv.setViewName("member/inputPro");
	    	return mv;
	}
	@RequestMapping("login")
	public ModelAndView login(MemberDataBean member)throws Exception{
		  
		mv.setViewName("member/loginForm");
	    	return mv;
	}
	@RequestMapping("loginPro")
	public ModelAndView loginPro(HttpSession session,MemberDataBean member)throws Exception{
	
		System.out.println("===========================loginPro");
		mv.addObject("id",member.getId());
		mv.addObject("passwd",member.getPasswd());
		
		int check=memberDBBeanMybatis.userCheck(member.getId(),member.getPasswd());
		if(check==1) {
			session.setAttribute("sessionID", member.getId());
		}
	    	return mv;
	}
	@RequestMapping("update")
	public ModelAndView update(String id)throws Exception{
		MemberDataBean member = memberDBBeanMybatis.getMember(id);
		System.out.println(member);
		mv.addObject("member",member);
		mv.setViewName("member/updateForm");
		
		return mv;
	}
	
	@RequestMapping("updatePro")
	public ModelAndView updatePro(MemberDataBean member)throws Exception{
	
		memberDBBeanMybatis.updateMember(member);
		
		mv.addObject("member",member);
		mv.setViewName("member/loginForm");
	    	return mv;
	}
	@RequestMapping("logout")
	public ModelAndView logout(HttpSession session)throws Exception{
		session.invalidate();
		mv.setViewName("member/loginForm");
	    	return mv;
	}
	@RequestMapping("delete")
	public ModelAndView delete(MemberDataBean member)throws Exception{
		mv.setViewName("member/deleteForm");
	    	return mv;
	}
	@RequestMapping("deletePro")
	public ModelAndView deletePro(MemberDataBean member, HttpSession session)throws Exception{
		
		
		int check = memberDBBeanMybatis.deleteMember(member.getId(),member.getPasswd());
		if (check==1) {
			session.invalidate();
		}
		mv.addObject("check", check);
		mv.setViewName("member/deletePro");
		
		return mv;
	}
	@RequestMapping("memberList")
	public ModelAndView memberList(MemberDataBean member)throws Exception{
		List mem = memberDBBeanMybatis.getMembers();
		mv.addObject("memberList",mem);
		mv.setViewName("member/memberList");
		
		return mv;
	}
	
}
