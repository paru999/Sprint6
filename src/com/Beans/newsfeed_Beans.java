package com.Beans;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class newsfeed_Beans 
{
	String newsfeed;
	String fname;
	String lname;
	String image;
	String files;
	
	public String getFiles()
	{
		return files;
	}
	public void setFiles(String files)
	{
		this.files = files;
	}
	public String getNewsfeed()
	{
		return newsfeed;
	}
	public void setNewsfeed(String newsfeed) 
	{
		this.newsfeed = newsfeed;
	}
	public String getFname()
	{
		return fname;
	}
	public void setFname(String fname)
	{
		this.fname = fname;
	}
	public String getLname()
	{
		return lname;
	}
	public void setLname(String lname)
	{
		this.lname = lname;
	}
	public String getImage()
	{
		return image;
	}
	public void setImage(String image)
	{
		this.image = image;
	}
	
	}
