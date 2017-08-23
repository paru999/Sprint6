package com.spring;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.concurrent.SuccessCallback;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.Beans.ListBeans;
import com.Beans.UserBean;
import com.Beans.editBeans;
import com.Beans.newsfeed_Beans;
import com.DBconnection.DB_Search;
import com.DBconnection.DB_newsfeed;




@Controller
public class newsfeedController
{
	
	@RequestMapping(value="/postnewsfeed", method = RequestMethod.POST)
	public ModelAndView insertstatus(@ModelAttribute("Newsfeed_Beans") newsfeed_Beans newsfeed_beans, HttpServletRequest request) throws SQLException 
	{
	DB_newsfeed nwsfeed= new DB_newsfeed();
	
	HttpSession session=request.getSession();
	int id=(int) session.getAttribute("userid");
	
	nwsfeed.insertnewsfeed(id,newsfeed_beans.getNewsfeed());
	System.out.println(newsfeed_beans.getNewsfeed());
	List<newsfeed_Beans> list = nwsfeed.getNewsfeed();
	ModelAndView model = new ModelAndView("homepage");
	model.addObject("lists", list);
	return model;
	}
	
	@RequestMapping(value="/postimage" ,method = RequestMethod.POST)
	public ModelAndView insertimage(HttpServletRequest request, HttpServletResponse response, @RequestParam CommonsMultipartFile[] files,@ModelAttribute("Newsfeed_Beans") newsfeed_Beans newsfeed_beans) throws IllegalStateException, IOException 
	{
	String saveDirectory="C:/Users/ASUS/workspace/spring2/WebContent/WEB-INF/image";
	DB_newsfeed img=new  DB_newsfeed();
	HttpSession session=request.getSession();
	int userid= (int) session.getAttribute("userid");
	
		String fileName = null;
	   	String msg = "";
	   	if (files != null && files.length >0) {
	   	 for(int i =0 ;i< files.length; i++){
	           try {
	               fileName = files[i].getOriginalFilename();
	               byte[] bytes = files[i].getBytes();
	               BufferedOutputStream buffStream = 
	                       new BufferedOutputStream(new FileOutputStream(new File(saveDirectory+"/"+ fileName)));
	               buffStream.write(bytes);
	               buffStream.close();
	               img.insertimage(userid,fileName,newsfeed_beans.getNewsfeed());
	               msg += "You have successfully uploaded " + fileName +"<br/>";
	           } catch (Exception e) {
	              
	           }
	   	 }
	   	}
	   	List<newsfeed_Beans> list = img.getimages();
		//return back to index.jsp

		ModelAndView model = new ModelAndView("homepage");
		model.addObject("lists", list);
		
		return model;
		//return "homepage";
	   	 
	   }
}

	
	
	
	
	
	


