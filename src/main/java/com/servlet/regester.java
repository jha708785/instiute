package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.dbcon;
import com.daoo.studentdao;
import com.entity.Student;


@WebServlet("/regester")
public class regester extends HttpServlet{

	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String pass=req.getParameter("password");
		
		
		Student s=new Student();
		s.setName(name);
		s.setEmail(email);
		s.setPassword(pass);
		
	studentdao dao=new studentdao(dbcon.getConn());
	boolean f=dao.adduser(s);
	
	PrintWriter out =resp.getWriter();
	
	HttpSession session=req.getSession();
	
	
	if(f)
	{
		//System.out.println("regester succesfully");
		session.setAttribute("reg-msg", "Regester successfully....");
		resp.sendRedirect("regester.jsp");
	}
	else
	{
		//System.out.println("some thing else");
		session.setAttribute("errormsg", "Some thing error");
		resp.sendRedirect("regester.jsp");
	}
		
	}

}
