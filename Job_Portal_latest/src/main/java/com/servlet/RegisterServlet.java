package com.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import com.DB.DBConnect;
import com.dao.UserDao;
import com.entity.user;
@WebServlet("/add_user")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
            String name = req.getParameter("name");

			String qua = req.getParameter("qua");

			String email = req.getParameter("email");

			String ps= req.getParameter("ps");

			UserDao dao =new UserDao(DBConnect.getConn());

			user u =new user(name, email, ps,qua,"user");

			boolean f =dao.addUser(u);
			HttpSession session=req.getSession();
			if(f) {
				session.setAttribute("succMsg","Registration Successfully");
				resp.sendRedirect("signup.jsp");
			}
			else {
				session.setAttribute("succMsg","Something Wrong on ....");
				resp.sendRedirect("signup.jsp");

			}
			} catch (Exception e) {
			e.printStackTrace();
			}


			}
	}
     

