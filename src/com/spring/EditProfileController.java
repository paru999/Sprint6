package com.spring;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.Beans.UserBean;
import com.Beans.editBeans;
import com.Beans.newsfeed_Beans;
import com.DBconnection.DB_EditProfile;
import com.DBconnection.DB_Search;
import com.google.gson.Gson;




@Controller
public class EditProfileController
{  
	@RequestMapping(value="/editprfl" ,method = RequestMethod.GET)
	 public String edting(@ModelAttribute("Editbeans") editBeans Edb, HttpSession session, Model model, UserBean userBean,HttpServletResponse response,HttpServletRequest request) throws SQLException, IOException
    {
		
		DB_EditProfile edit = new DB_EditProfile();
		 int userid= (int) session.getAttribute("userid");
		 ResultSet y=edit.editprofile(userid);
		 ResultSet x= edit.getlanguage(userid);
		// ResultSet z= edit.getcountry();
		 
		 if(y.next())
		 {
		 model.addAttribute("firstname",y.getString("vchr_firstname"));
		 model.addAttribute("lastname",y.getString("vchr_lastname"));
		model.addAttribute("image",y.getString("vchr_image"));
		model.addAttribute("gender",y.getString("vchr_gender"));
		model.addAttribute("email",y.getString("vchr_phone"));
		model.addAttribute("phone",y.getString("int_pheno"));
		model.addAttribute("date",y.getString("day"));
		model.addAttribute("year",y.getString("year"));
		model.addAttribute("month",y.getString("month"));
		
		 }
		List<String> lang_list=new ArrayList<String>();
			 while(x.next())
			 {
				 lang_list.add(x.getString("vchr_language"));
			 }
			 model.addAttribute("language",lang_list);
		
				List<editBeans> countryList = edit.getcountry();
				for(int i=0 ;i<countryList.size();i++){
					editBeans edb=new editBeans();
					edb=countryList.get(i);
					//System.out.println("country"+countryList);
				}
				model.addAttribute("countryList",countryList);
				
				List<editBeans> statelist = edit.getstate(1);
				for(int i=0 ;i<statelist.size();i++){
					editBeans edb=new editBeans();
					edb=statelist.get(i);
					System.out.println("states"+edb.getState());
					
				}
				model.addAttribute("statelist",statelist);
				
			 return "editprofile";
                    
             
             }
	@RequestMapping(value="/updateprofile" ,method = RequestMethod.POST)
	 public String updating( @ModelAttribute("Editbeans") editBeans edb, UserBean udb, Model model, HttpSession session) throws SQLException
	{
		DB_EditProfile edit = new DB_EditProfile();
		 int userid= (int) session.getAttribute("userid");
		String dob= edb.getYear()+"/"+edb.getMonth()+"/"+edb.getDate();
		
		 String x=edit.editprofile( edb.getFname(), edb. getLname(), edb.getEmail(),edb.getEmail(), dob, edb.getNumber(),userid);
		 ResultSet y=edit.editprofile(userid);
		 if(y.next())
		 {
		 model.addAttribute("firstname",y.getString("vchr_firstname"));
		 model.addAttribute("lastname",y.getString("vchr_lastname"));
		model.addAttribute("image",y.getString("vchr_image"));
		model.addAttribute("gender",y.getString("vchr_gender"));
		model.addAttribute("email",y.getString("vchr_phone"));
		model.addAttribute("phone",y.getString("int_pheno"));
		model.addAttribute("date",y.getString("day"));
		model.addAttribute("year",y.getString("year"));
		model.addAttribute("month",y.getString("month"));
		 }
		 return "editprofile";
		
	}
    }



