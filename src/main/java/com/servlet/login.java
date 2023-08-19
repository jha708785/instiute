package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.dbcon;
import com.daoo.studentdao;
import com.entity.Student;

@WebServlet("/loginservlet")
public class login extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email=req.getParameter("uemail");
		String pass=req.getParameter("upassword");
		
		
		Student s=new Student();
		s.setEmail(email);
		s.setPassword(pass);
		
		
		
		studentdao dao=new studentdao(dbcon.getConn());
		Student  f=dao.login(s);
		
		HttpSession session=req.getSession();
		
		if (f!=null)
		{
			
			session.setAttribute("stuD", s);
			//session.setMaxInactiveInterval(60);
			//System.out.println("success");
			resp.sendRedirect("index.jsp");
			
		}
		else
		{
			
			session.setAttribute("login-field", "Invalid Username & Password");
			resp.sendRedirect("login.jsp");
		}
		
		
		
	}

}
