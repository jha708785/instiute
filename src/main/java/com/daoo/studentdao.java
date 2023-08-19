package com.daoo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.Student;


public class studentdao {

	private static  Connection conn;

	public studentdao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	// Add user method 
	public boolean adduser(Student student)
	{
		boolean f=false;
		
		try {
			String query="insert into detail(fullname,email,password) values(?,?,?)";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, student.getName());
			ps.setString(2,student.getEmail());
			ps.setString(3, student.getPassword());
			
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				f=true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return f;
	}
	
	//Add LoginMethod
	public Student login(Student student)
	{
		Student s=null;
		try
		{
			String query="select * from detail where email=? and password=?";
			PreparedStatement ps=conn.prepareStatement(query);

			ps.setString(1, student.getEmail());
			ps.setString(2, student.getPassword());
			
			ResultSet rs=ps.executeQuery();
			
			
			if(rs.next())
			{
				
				s=new Student();
				s.setName(rs.getString("fullname"));
				s.setEmail(rs.getString("email"));
				s.setPassword(rs.getString("password"));	
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return s;

		
	}

}
