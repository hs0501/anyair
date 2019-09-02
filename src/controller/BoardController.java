package controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import model.BoardDataBean;
import model.MemberDataBean;
import service.BoardDBBeanMybatis;

@Controller
@RequestMapping("/board/")
public class BoardController {

	ModelAndView mv = new ModelAndView();
	String boardid;
	int pageNum;
	String ip;
	@Autowired
	public BoardDBBeanMybatis boardDBBeanMybatis;
	
	@RequestMapping("test")
	public ModelAndView test() {
		mv.setViewName("board/test");
		return mv;
	}
	
	@ModelAttribute
	public void setAttr(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String reqboardid = request.getParameter("boardid");
		
		if(reqboardid != null) {
			session.setAttribute("boardid", reqboardid);
		}
		if(session.getAttribute("boardid") == null) {
			boardid = "1";
		}else {
			boardid = (String)session.getAttribute("boardid");
		}
		try {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));			
		} catch (Exception e) {
			pageNum = 1;
		}
		
		ip = request.getRemoteAddr();
	}
	
	@RequestMapping("list")
	public ModelAndView list()throws Exception {
		
	     int pageSize=3;
	     int currentPage = pageNum;
	     
	     int count = boardDBBeanMybatis.getArticleCount(boardid);
	     int startRow = (currentPage - 1) * pageSize;
	 	 int endRow = currentPage * pageSize;
	 	 if (count<endRow)  endRow=count;
	     List articleList = null;
	     if(boardDBBeanMybatis.mybatisConnector.getDbname().equals("Oracle")) {
	    	 articleList = boardDBBeanMybatis.getArticles(startRow+1, endRow, boardid);
	     }else {
	    	articleList = boardDBBeanMybatis.getArticles(startRow, pageSize, boardid);
	     }
	     int number=count-((currentPage - 1) * pageSize);
	 
		int bottomLine = 3;
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int startPage = 1 + (currentPage - 1) / bottomLine * bottomLine;
		int endPage = startPage + bottomLine - 1;
	    int nextPage = startPage + bottomLine;
	    int beforePage = startPage - bottomLine;
		if (endPage > pageCount)	endPage = pageCount;
		mv.addObject("bottomLine",bottomLine);
		mv.addObject("nextPage",nextPage);
	     mv.addObject("beforePage", beforePage);
		mv.addObject("pageCount",pageCount);
	     mv.addObject("count", count);
	     mv.addObject("boardid", boardid);
	     mv.addObject("pageNum", pageNum);
	     mv.addObject("articleList", articleList);
	     mv.addObject("number", number);
	     mv.addObject("startPage", startPage);
	     mv.addObject("endPage", endPage);
		 mv.setViewName("board/list");
		return mv;
	}
	
	@RequestMapping("writeForm")
	public ModelAndView writeForm(BoardDataBean article)throws Exception{
		 MemberDataBean mem = new MemberDataBean();
		 mv.addObject("num", article.getNum());
		 mv.addObject("pageNum", pageNum);
		 mv.addObject("ref", article.getRef());
		 mv.addObject("re_step", article.getRe_step());
		 mv.addObject("re_level", article.getRe_level());
		mv.setViewName("board/writeUploadForm");
		
		return mv;
	}
	
	@RequestMapping("writePro")
	public String writePro(BoardDataBean article)throws Exception{
		  
	    
	    	article.setIp(ip);
	    	boardDBBeanMybatis.insertArticle(article, boardid);
	    	return "redirect:list?pageNum="+pageNum;
	}
	@RequestMapping("writeUploadPro")
	public String writeUploadPro(MultipartHttpServletRequest multipart, BoardDataBean article)throws Exception{
		
		  MultipartFile multi = multipart.getFile("uploadfile");
		  String filename = multi.getOriginalFilename();
		  if(filename != null && !filename.equals("")) {
			  String uploadPath = multipart.getServletContext().getRealPath("/")+"/filesave";
			  System.out.println(uploadPath);
			  FileCopyUtils.copy(multi.getInputStream(), new FileOutputStream(uploadPath+"/"+multi.getOriginalFilename()));
			  article.setFilename(filename);
			  article.setFilesize((int)multi.getSize());
		  }else {
			  article.setFilename("");
			  article.setFilesize(0);
		  }
	    	article.setIp(ip);
	    	boardDBBeanMybatis.insertArticle(article, boardid);
	    	return "redirect:list?pageNum="+pageNum;
	}
	
	@RequestMapping("content")
	public ModelAndView content(int num) throws Exception{
				mv.clear();
				BoardDataBean article = boardDBBeanMybatis.getArticle(num, boardid);
				mv.addObject("article", article);
				mv.addObject("pageNum", pageNum);
				mv.setViewName("board/content");
				return mv;
	}
	@RequestMapping("update")
	public ModelAndView update(int num) throws Exception{
				mv.clear();
				
			    	 
			    	  
			     BoardDataBean article =  boardDBBeanMybatis.getUpdate(num, boardid); 
			     mv.addObject("article", article);
			     mv.addObject("pageNum", pageNum);
			    	
				mv.setViewName("board/updateForm");
				return mv;
	}
	
	@RequestMapping("updatePro")
	public ModelAndView updatePro(BoardDataBean article) throws Exception{
				mv.clear();
				
				 
				     
			    	int check = boardDBBeanMybatis.updateArticle(article, boardid); 
			    	 mv.addObject("check", check);
			    	 mv.addObject("pageNum", pageNum);
			 		
				
				mv.setViewName("board/updatePro");
				return mv;
	}
	
	@RequestMapping("delete")
	public ModelAndView delete(int num) throws Exception{
				mv.clear();
				
				 mv.addObject("num", num);
				 mv.addObject("pageNum", pageNum);
				 mv.setViewName("board/deleteForm");
						  return  mv; 
	}
	
	@RequestMapping("deletePro")
	public ModelAndView deletePro(int num , String passwd) throws Exception{
				mv.clear();
			
		    	int check = boardDBBeanMybatis.deleteArticle(num, passwd);  
		    	
		    	mv.addObject("check", check);
		    	mv.addObject("pageNum", pageNum);
		    	mv.setViewName("board/deletePro");
				  return  mv; 
			 
	}
	
		
}
