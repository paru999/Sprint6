package com.DBconnection;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Beans.ListBeans;
import com.spring.SearchController;

public class DB_Search extends DB_connection {

	 public ArrayList<String> getFrameWork(String search) {
	        ArrayList<String> list = new ArrayList<String>();
	        PreparedStatement ps = null;
	        String data;
	        try {
	        ps = conn.prepareStatement("select * from  tbl_user where vchr_firstname  LIKE ?");
	                ps.setString(1, search + "%");
	                ResultSet rs = ps.executeQuery();
	                while (rs.next()) {
	                        data = rs.getString("vchr_firstname");
	                        list.add(data);
	                }
	        } catch (Exception e) {
	                System.out.println(e.getMessage());
	        }
	        return list;
	}
	 
	
	 public List<ListBeans> getlist(int id1)
	{

	List<ListBeans> list = new ArrayList<ListBeans>();
	
	PreparedStatement ps = null;
	  
	   try {
	   ps = conn.prepareStatement("select * from tbl_user where pk_int_UID<>?;");
	   ps.setInt(1, id1);
	   ps.execute();
	           ResultSet rs = ps.executeQuery();
	           while (rs.next()) {
	           	ListBeans lb=new ListBeans();
	            lb.setUserid(rs.getInt("pk_int_UID")); 
	           	lb.setListusername( rs.getString("vchr_firstname"));
	            lb.setListlastname(rs.getString("vchr_lastname"));
	                lb.setListimage(rs.getString("vchr_image"));   
	                   list.add(lb);
	                  /* System.out.println("nameee"+lb.getListusername());
	                   System.out.println("image"+lb.getListimage());
	                   System.out.println("id"+lb.getUserid());*/
	           }
	   } catch (Exception e) {
	           System.out.println(e.getMessage());
	   }

	return list;
	}
	 
	 public List<ListBeans> confirm(int Uid )
	 {
	 List<ListBeans> list = new ArrayList<ListBeans>();
	 PreparedStatement ps = null;
	   
	    try {
	   ps = conn.prepareStatement("select s.pk_int_UID, s.vchr_firstname, s.vchr_lastname, s.vchr_image, g.status from tbl_user s, tbl_relation g where user_id_two=? and status=0 AND  pk_int_UID=fk_int_UID;");
	 	   ps.setInt(1, Uid);
	    ps.execute();
	   
	            ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
	            	ListBeans lb=new ListBeans();
	             lb.setUserid(rs.getInt("pk_int_UID")); 
	            	lb.setListusername( rs.getString("vchr_firstname"));
	             lb.setListlastname(rs.getString("vchr_lastname"));
	                 lb.setListimage(rs.getString("vchr_image"));   
	                    list.add(lb);
	                    
	            }
	    } catch (Exception e) {
	            System.out.println(e.getMessage());
	    }

	 return list;
	 }
	 
	 public List<ListBeans> unfrnd(int Uid )
		{

		List<ListBeans> list = new ArrayList<ListBeans>();
		PreparedStatement ps = null;
		  
		   try {
		   ps = conn.prepareStatement("select * from tbl_user where pk_int_UID<>?;");
		   ps.setInt(1, Uid);
		   ps.execute();
		  
		           ResultSet rs = ps.executeQuery();
		           while (rs.next()) {
		           	ListBeans lb=new ListBeans();
		            lb.setUserid(rs.getInt("pk_int_UID")); 
		           	lb.setListusername( rs.getString("vchr_firstname"));
		            lb.setListlastname(rs.getString("vchr_lastname"));
		                lb.setListimage(rs.getString("vchr_image"));   
		                   list.add(lb);
		           }
		   } catch (Exception e) {
		           System.out.println(e.getMessage());
		   }

		return list;
		}

	 
	
	 
	
public String  frient(int UId, int user, int user1, int status, int  action) throws SQLException
	{
		PreparedStatement pt;
		pt= super.conn.prepareStatement("insert into tbl_relation(fk_int_UID,user_id_one,user_id_two,status,action_user_id)values(?,?,?,?,?)");
		pt.setInt(1,UId);
		pt.setInt(2,user);
		pt.setInt(3,user1);
		pt.setInt(4,status);
		pt.setInt(5,action);
		boolean x=pt.execute();
	
		return "success";
	}
	


	public String confm(int UId, int status, int action, int user, int user1) throws SQLException
	{
		PreparedStatement pt;
		pt= super.conn.prepareStatement("UPDATE tbl_relation SET fk_int_UID=? ,status = ?, action_user_id = ? WHERE user_id_one = ? AND user_id_two = ?");
		pt.setInt(1, UId);
		pt.setInt(2,status);
		pt.setInt(3,action);
		pt.setInt(4,user);
		pt.setInt(5,user1);
		boolean x=pt.execute();
	
		return "success";
	}
	public String delete(int UId, int status, int  action, int user, int user1 ) throws SQLException
	{
		PreparedStatement pt;
		pt= super.conn.prepareStatement("delete from tbl_relation where fk_int_UID=?, status=? and action_user_id=? and user_id_one=? and user_id_two=?");
		pt.setInt(1, UId);
		pt.setInt(1,status);
		pt.setInt(2,action);
		pt.setInt(3,user);
		pt.setInt(4,user1);
		boolean x=pt.execute();
	
		return "success";
	}
	
	
 
 
	public String unfrnd(int UId, int status, int  action, int user, int user1 ) throws SQLException
	{
		PreparedStatement pt;
		pt= super.conn.prepareStatement("UPDATE tbl_relation SET fk_int_UID=?, status = ?, action_user_id = ? WHERE user_id_one = ? AND user_id_two = ?");
		pt.setInt(1, UId);
		pt.setInt(2,status);
		pt.setInt(3,action);
		pt.setInt(4,user);
		pt.setInt(5,user1);
		boolean x=pt.execute();
	
		return "success";
	}
	
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DB_Search srch=new DB_Search();
		

	}



	


	
}
