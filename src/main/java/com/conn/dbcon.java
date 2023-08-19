package com.conn;
import java.sql.*;
public class dbcon {

	
	private static Connection conn=null;
	
	public static Connection getConn()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/gym?autoReconnect=true&useSSL=false", "root", "sumit");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return conn;
	}
}
