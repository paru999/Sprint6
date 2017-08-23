package com.DBconnection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Beans.ListBeans;

public class DB_Admin extends DB_connection
{
	 public List<ListBeans> adminlist(int UId)
		{

		List<ListBeans> list = new ArrayList<ListBeans>();
		PreparedStatement ps = null;
		   try {
		   ps = conn.prepareStatement("select s.pk_int_UID, s.vchr_firstname, s.vchr_lastname, s.vchr_image, g.status from tbl_user s, tbl_advertisement g where(status is null) and pk_int_UID=UID");
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
	 public String  Addlist(int UId) throws SQLException
		{
			PreparedStatement pt;
			pt= super.conn.prepareStatement("insert into tbl_advertisement(UID) values(?)");
			pt.setInt(1,UId);
			boolean x=pt.execute();
		
			return "success";
		}
	 public String  adminlistcnfm( int status,int UId, int id) throws SQLException
		{
			PreparedStatement pt;
			pt= super.conn.prepareStatement("update tbl_advertisement SET status=?, UID=? where request_id=?");
			pt.setInt(1, status);
			pt.setInt(2,UId);
			pt.setInt(3, id);
			boolean x=pt.execute();
		
			return "success";
		}
	 public String  adminlistupdate( int status,int UId, int id) throws SQLException
		{
			PreparedStatement pt;
			pt= super.conn.prepareStatement("update tbl_advertisement SET status=?, UID=? where request_id=?");
			pt.setInt(1, status);
			pt.setInt(2,UId);
			pt.setInt(3, id);
			boolean x=pt.execute();
		
			return "success";
		}
		 
}
