package com.DBconnection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Beans.Language_Beans;
import com.Beans.UserBean;
import com.Beans.ListBeans;
import com.Beans.editBeans;
import com.Beans.newsfeed_Beans;

public class DB_EditProfile extends DB_connection
{
	
	public ResultSet editprofile(int id) throws SQLException
	{
		UserBean ub=new UserBean();
		PreparedStatement pt2;
		pt2=super.conn.
	prepareStatement("select *,  year(date_DOB) as year ,month(date_DOB) as month, day(date_DOB) as day  from tbl_user where pk_int_UID=?");
			pt2.setInt(1,id);
			pt2.execute();
			ResultSet rs1 = pt2.executeQuery();
			return rs1;
	}

			public  ResultSet getlanguage(int userid) throws SQLException
		    {
		        List<String> lang_list = new ArrayList<String>();
		        	PreparedStatement pt2;
					pt2=super.conn.
							prepareStatement("select * from tbl_language where language_UID=?");
					pt2.setInt(1,userid);
					pt2.execute();
		             ResultSet rs2 = pt2.executeQuery();
		         
		         return rs2;
		        }
		  
			 public List<editBeans> getcountry() throws SQLException
				{

				List<editBeans> list = new ArrayList<editBeans>();
				PreparedStatement ps = null;
				   ps = conn.prepareStatement("select * from tbl_country");
				          
				           ResultSet rs = ps.executeQuery();
				           while (rs.next()) {
				           editBeans Edb=new editBeans();
				       	Edb.setCountry_id( rs.getString("country_id"));
				       //	System.out.println("id"+Edb.getCountry_id());
				       	Edb.setCountry( rs.getString("country_name"));
				                   //System.out.println("nameee"+Edb.getCountry());
				                   list.add(Edb);
				     
				           }
				   

				return list;
				}
			public List<editBeans> getstate(int id) throws SQLException
				{
				List<editBeans> list = new ArrayList<editBeans>();
				PreparedStatement pt = null;
				   pt = conn.prepareStatement("select * from tbl_state where fk_country_id=?");
				   pt.setInt(1,id);
					pt.execute();
				           ResultSet rs = pt.executeQuery();
				           while (rs.next()) {
				           editBeans Edb=new editBeans();
				       	Edb.setState( rs.getString("state_name"));
				                   System.out.println("nameee"+Edb.getState());
				                   list.add(Edb);
				           }
				return list;
				}
			 
		        	
	
			public String editprofile( String fname, String lname, String email, String reemail, String dob, String pheno, int userid) throws SQLException
			{
				PreparedStatement pt;
				pt= super.conn.prepareStatement("update tbl_user set vchr_firstname=?, vchr_lastname=?, vchr_email=?, vchr_phone=?,date_DOB=?, int_pheno=? where pk_int_UID=?");
				
				pt.setString(1,fname);
				pt.setString(2,lname);
				pt.setString(3,email);
				pt.setString(4,reemail);
				pt.setString(5,dob);
				pt.setString(6,pheno);
				pt.setInt(7,userid);
				boolean x=pt.execute();
				
				System.out.println("inserted");
					return "success";
			}

}


	

	

			

	
	
	
	