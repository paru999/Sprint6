package com.DBconnection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Beans.ListBeans;
import com.Beans.newsfeed_Beans;


public class DB_newsfeed extends DB_connection
{
	public String insertnewsfeed(int userid, String status) throws SQLException
	{
		PreparedStatement pt;
		pt = super.conn
	.prepareStatement("insert into tbl_newsfeed(int_uid,vchr_status)values(?,?)");
		pt.setInt(1,userid);
	pt.setString(2,status);
	boolean y=pt.execute();
	
		return status;
		
	}
	
	 public List<newsfeed_Beans> getNewsfeed()
		{

		List<newsfeed_Beans> list = new ArrayList<newsfeed_Beans>();
		PreparedStatement ps = null;
		  
		   try {
		   ps = conn.prepareStatement("select s.vchr_firstname, s.vchr_lastname, s.vchr_image, g.vchr_status from tbl_user s, tbl_newsfeed g where int_uid=pk_int_UID order by newsfeed_id desc;");
		          
		           ResultSet rs = ps.executeQuery();
		           while (rs.next()) {
		           	newsfeed_Beans news=new newsfeed_Beans();
		            //lb.setUserid(rs.getInt("pk_int_UID")); 
		           	news.setFname( rs.getString("vchr_firstname"));
		           	news.setLname(rs.getString("vchr_lastname"));
		           	news.setImage(rs.getString("vchr_image")); 
		           	news.setNewsfeed(rs.getString("vchr_status"));
		                   list.add(news);
		                  // System.out.println("nameee"+news.getFname());
		                  // System.out.println("id"+lb.getUserid());
		           }
		   } catch (Exception e) {
		           System.out.println(e.getMessage());
		   }

		return list;
		}
	 
	 
	 public String insertimage(int userid, String image,String imagestatus) throws SQLException
		{
			PreparedStatement pt;
			pt = super.conn
		.prepareStatement("insert into tbl_images(fk_int_newsfeed_id, vchr_images, vchr_imagestatus)values(?,?,?)");
			pt.setInt(1,userid);
		pt.setString(2,image);
		pt.setString(3, imagestatus);
		boolean y=pt.execute();
		System.out.println("inserted");	
			
			
			return "success";
			
		}
	 
	 public List<newsfeed_Beans> getimages()
		{

		List<newsfeed_Beans> list = new ArrayList<newsfeed_Beans>();
		PreparedStatement ps = null;
		  
		   try {
		   ps = conn.prepareStatement("select s.vchr_firstname, s.vchr_lastname, s.vchr_image, m.vchr_images, m.vchr_imagestatus from tbl_user s, tbl_images m where pk_int_UID=fk_int_newsfeed_id order by images_int_id desc;");
		          
		           ResultSet rs = ps.executeQuery();
		           while (rs.next()) {
		           	newsfeed_Beans image=new newsfeed_Beans();
		        	image.setFname( rs.getString("vchr_firstname"));
		        	image.setLname(rs.getString("vchr_lastname"));
		        	image.setImage(rs.getString("vchr_image")); 
		        	image.setFiles(rs.getString("vchr_images"));
		        	image.setNewsfeed(rs.getString("vchr_imagestatus"));
		        	
		        	System.out.println("status"+image.getNewsfeed());
		        	
		        	 list.add(image);
		        	
		           }
		   } catch (Exception e) {
		           System.out.println(e.getMessage());
		   }

		return list;
		}


}
