package com.spring;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;


import org.springframework.web.servlet.ModelAndView;

import com.Beans.*;
import com.DBconnection.DB_insert1;
import com.DBconnection.DB_newsfeed;

@Controller
public class logincontroller
{
	@RequestMapping(value="/login" ,method = RequestMethod.POST)
	public ModelAndView submit(HttpServletRequest request, HttpServletResponse response,Model model, @ModelAttribute("loginBean") loginBean loginBean) throws SQLException
{
	
	 DB_insert1 obj =new DB_insert1();
	 
	 ResultSet x=obj.store(loginBean.getMail(), loginBean.getPwd());
	 ResultSet y=obj.emailerror(loginBean.getMail());
	  if(x.next())
	  {
		 
		 model.addAttribute("pwd", loginBean.getPwd());
		  System.out.println("x="+x);
		 
		  
		 /* model.addAttribute("name", x.getString("vchr_firstname"));
		  model.addAttribute("name2", x.getString("vchr_lastname"));
		 model.addAttribute("img",x.getString("vchr_image"));
			*/
		 //System.out.println( x.getString("vchr_email"));
		 HttpSession session = request.getSession();
		 session.setAttribute("userid", x.getInt("pk_int_UID"));
		 session.setAttribute("UserName", x.getString("vchr_firstname"));
		 session.setAttribute("LastName", x.getString("vchr_lastname"));
		 session.setAttribute("image", x.getString("vchr_image"));
		 
		 DB_newsfeed nwsfeed= new DB_newsfeed();
		 List<newsfeed_Beans> list = nwsfeed.getNewsfeed();
		 ModelAndView models = new ModelAndView("homepage");
			models.addObject("lists", list);
			 return models;
		
		// return "homepage";
		  
		}
	
	else if(y.next())
	  {
		  /*model.addAttribute("name", y.getString("vchr_firstname"));
		  model.addAttribute("name2", y.getString("vchr_lastname"));
		 model.addAttribute("email",y.getString("vchr_email"));
		 model.addAttribute("img",y.getString("vchr_image"));*/
		 HttpSession session = request.getSession();
		 session.setAttribute("UserName", y.getString("vchr_firstname"));
		 session.setAttribute("LastName", y.getString("vchr_lastname"));
		 session.setAttribute("email",y.getString("vchr_email"));
		 session.setAttribute("image",y.getString("vchr_image"));
		//return "puerror";
		 ModelAndView models = new ModelAndView("puerror");
		 return models;

	  }
	  else 
	{
	model.addAttribute("error", "Invalid Details");
	
	//return "username";
	 ModelAndView models = new ModelAndView("username");
	 return models;
	}
	  
	  
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpServletRequest request)
	{
		System.out.println("logout()");
		HttpSession httpSession=request.getSession();
		httpSession.invalidate();
		return "facebook";
		
	}
	
	@RequestMapping(value="/staythispage")
	public ModelAndView stay(HttpServletRequest request)
	{
		System.out.println("stay()");
		HttpSession httpSession=request.getSession();
		 DB_newsfeed nwsfeed= new DB_newsfeed();
		 List<newsfeed_Beans> list = nwsfeed.getNewsfeed();
		 ModelAndView models = new ModelAndView("homepage");
			models.addObject("lists", list);
			 return models;
		
		
	}
	

}
	
	


	

	

	

	
	




	

