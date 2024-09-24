package com.servlet;

import java.io.IOException;

import com.DB.DBConnect;
import com.dao.UserDao;
import com.entity.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String em=req.getParameter("email");
			String ps=req.getParameter("password");
			HttpSession session=req.getSession();
			
			if("admin@gmail.com".equals(em) && "admin@121".equals(ps)) {
				user u=new user();
				session.setAttribute("userobj", u);
				u.setRole("admin");
				resp.sendRedirect("admin.jsp");
			}else {
				UserDao dao=new UserDao(DBConnect.getConn());
				user user= (com.entity.user) dao.login(em, ps);
				System.out.println(user);
				if(user !=null) {
					session.setAttribute("userobj", user);
					resp.sendRedirect("home.jsp");
				}
				else {
					session.setAttribute("succMsg","Invalid Email & Password");
					resp.sendRedirect("login.jsp");
				}
			}	
		} catch (Exception e) {
         e.printStackTrace();
		}
		
	}

}
