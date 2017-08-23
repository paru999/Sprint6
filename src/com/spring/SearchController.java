package com.spring;

import java.io.IOException;
import java.sql.SQLException;

import com.google.gson.Gson;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
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
import com.Beans.SearchBean;
import com.Beans.UserBean;
import com.Beans.loginBean;
import com.DBconnection.DB_Search;


@Controller
public class SearchController extends HttpServlet
{
//searchbox
        private static final long serialVersionUID = 1L;
        @RequestMapping(value="/search" ,method = RequestMethod.GET)
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

                response.setContentType("application/json");
                try {
                        String term = request.getParameter("Searchbox");
                       // System.out.println("Data from ajax call " + term);

                        DB_Search dataDao = new  DB_Search();
                        ArrayList<String> list = dataDao.getFrameWork(term);
                        String searchList = new Gson().toJson(list);
                        response.getWriter().write(searchList);
                        //System.out.println(" Search:"+searchList);
                       
                } catch (Exception e) {
                        System.err.println(e.getMessage());
                }
                
        }
        @RequestMapping(value="/addrequest" ,method = RequestMethod.GET)
       public ModelAndView redirect(ListBeans lb, HttpSession session)
        {
        	
        		DB_Search objsrch = new DB_Search();
        		int userid=(int) session.getAttribute("userid");
        		List<ListBeans> list = objsrch.getlist(userid);
        		//return back to index.jsp

        		ModelAndView model = new ModelAndView("addrequest");
        		model.addObject("lists", list);

        		return model;
        }
        
       @RequestMapping(value="/confirmrequest" ,method = RequestMethod.GET)
    	 public ModelAndView pending(ListBeans lb, HttpSession session)
         {
         	
    		DB_Search objsrch = new DB_Search();
    		int userid=(int) session.getAttribute("userid");
    		List<ListBeans> list = objsrch.confirm(userid);
    		ModelAndView model = new ModelAndView("confirmrequest");
    		model.addObject("lists", list);

    		return model;
          }
       
       @RequestMapping(value="/unfrnd" ,method = RequestMethod.GET)
  	 public ModelAndView unfrnd(ListBeans lb, HttpSession session)
       {
       	

  		DB_Search objsrch = new DB_Search();
  		int userid=(int) session.getAttribute("userid");
  		List<ListBeans> list = objsrch.unfrnd(userid);
  		ModelAndView model = new ModelAndView("unfrnd");
  		model.addObject("lists", list);

  		return model;
       }

       
       @RequestMapping(value = "/add", method = RequestMethod.GET)
       public ModelAndView addfriend(@RequestParam("id") Integer id, HttpSession session,HttpServletRequest request, HttpServletResponse response,@ModelAttribute("FrndBean") FrndBean frndbean) throws SQLException

             {
             	
             	
              int userid= (int) session.getAttribute("userid");
             DB_Search objsrch = new DB_Search();
             objsrch.frient(userid,userid, id, 0, userid);
             List<ListBeans> list = objsrch.getlist(userid);
     		ModelAndView model = new ModelAndView("addrequest");
     		model.addObject("lists", list);

     		return model;
             }
             
             
     
        @RequestMapping(value = "/confm", method = RequestMethod.GET)
        public ModelAndView confmfriend(@RequestParam("id") Integer id, HttpSession session,HttpServletRequest request, HttpServletResponse response,@ModelAttribute("FrndBean") FrndBean frndbean) throws SQLException

        {
         int userid= (int) session.getAttribute("userid");
        
        DB_Search objsrch = new DB_Search();
        objsrch.confm(userid,1,userid,id, userid);
        List<ListBeans> list = objsrch.confirm(userid);
		ModelAndView model = new ModelAndView("confirmrequest");
		model.addObject("lists", list);

		return model;
        }
        
        @RequestMapping(value = "/delete", method = RequestMethod.GET)
        public ModelAndView delete(@RequestParam("id") Integer id, HttpSession session,HttpServletRequest request, HttpServletResponse response,@ModelAttribute("FrndBean") FrndBean frndbean) throws SQLException

        {
        	
       
        int userid= (int) session.getAttribute("userid");
        
        DB_Search objsrch = new DB_Search();
        objsrch.delete(userid, 0, id,id, userid);
        List<ListBeans> list = objsrch.confirm(userid);
		//return back to index.jsp

		ModelAndView model = new ModelAndView("confirmrequest");
		model.addObject("lists", list);

		return model;
        }
        
        
    
        
   @RequestMapping(value = "/unfriend", method = RequestMethod.GET)
   public ModelAndView unfriend(@RequestParam("id") Integer id,HttpSession session,HttpServletRequest request, HttpServletResponse response,@ModelAttribute("FrndBean") FrndBean frndbean) throws SQLException

        {


        int userid= (int) session.getAttribute("userid");
        
        DB_Search objsrch = new DB_Search();
        objsrch.unfrnd(userid, 0,userid ,id, userid);
        
        List<ListBeans> list = objsrch.unfrnd(userid);
		//return back to index.jsp

		ModelAndView model = new ModelAndView("unfrnd");
		model.addObject("lists", list);

		return model;
        
        
        
}
}
  
   


      

