package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.AdminDBBeanMybatis1;

@Controller
public class AdminController1 {	
	ModelAndView ad = new ModelAndView();
		
	@Autowired
	public AdminDBBeanMybatis1 adminDBBeanMybatis1;
	
	@RequestMapping("/admin-member")
	public ModelAndView admin() {
		
		ad.setViewName("admin/admin-member");
		return ad;
	}
	
	@RequestMapping("/adminList")
	public ModelAndView list() throws Exception {
		
		List memberList = adminDBBeanMybatis1.getmemberList();
				
		ad.addObject("memberList", memberList);
		
		ad.setViewName("admin/admin-member");

		return ad;
	}
	
	@RequestMapping("/adminDelete")
	public ModelAndView delete(String id) throws Exception{
		ad.clear();
	          
	    ad.addObject("id", id);
	    
	    ad.setViewName("admin/admin-member");
	    return  ad; 
	   }	   
	}
