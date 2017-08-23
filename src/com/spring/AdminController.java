package com.spring;


import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Beans.FrndBean;
import com.Beans.ListBeans;
import com.Beans.newsfeed_Beans;
import com.DBconnection.DB_Admin;
import com.DBconnection.DB_Search;
import com.DBconnection.DB_newsfeed;

@Controller
public class AdminController 
{
	
	 
	 @RequestMapping(value="/admin" ,method = RequestMethod.GET)
  	 public ModelAndView advertisement(ListBeans lb, HttpSession session)
       {
		 DB_Admin objlist = new DB_Admin();
  		int userid=(int) session.getAttribute("userid");
  		List<ListBeans> list = objlist.adminlist(userid);
  		ModelAndView model = new ModelAndView("Admin");
  		model.addObject("lists", list);
  		return model;
	        
	}
	 

     @RequestMapping(value = "/confmadd", method = RequestMethod.GET)
     public ModelAndView advertisementcnfm(@RequestParam("id") Integer id,HttpSession session) throws SQLException

     {
      int userid= (int) session.getAttribute("userid");
      DB_Admin objlist = new DB_Admin();
      objlist.adminlistcnfm(1, userid, id);
     List<ListBeans> list = objlist.adminlist(userid);
		ModelAndView model = new ModelAndView("Admin");
		model.addObject("lists", list);

		return model;
     }
     

    @RequestMapping(value = "/rejectadd", method = RequestMethod.GET)
     public ModelAndView advertisementreject(@RequestParam("id") Integer id, HttpSession session) throws SQLException

     {
      int userid= (int) session.getAttribute("userid");
     
      DB_Admin objlist = new DB_Admin();
      objlist.adminlistupdate(0,userid,id);
     List<ListBeans> list = objlist.adminlist(userid);
		ModelAndView model = new ModelAndView("Admin");
		model.addObject("lists", list);

		return model;
     }
    
    
    @RequestMapping(value="/okadd")
	public ModelAndView stay(HttpServletRequest request,HttpSession session) throws SQLException
	{
		System.out.println("stay()");
		HttpSession httpSession=request.getSession();
		
		 int userid= (int) session.getAttribute("userid");
	      DB_Admin objlist = new DB_Admin();
	      objlist.Addlist(userid);
	      DB_newsfeed nwsfeed= new DB_newsfeed();
			 List<newsfeed_Beans> list = nwsfeed.getNewsfeed();
			ModelAndView model = new ModelAndView("homepage");
			model.addObject("lists", list);

			return model;
	   
    
    
	   }
}

