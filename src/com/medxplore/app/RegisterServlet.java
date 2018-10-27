package com.medxplore.app;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.medxplore.app.dao.UserDAO;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	Logger logger = Logger.getLogger(RegisterServlet.class);
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		logger.debug("Inside RegisterServlet doPost() method.");
		PrintWriter out = response.getWriter();
		String rolename = request.getParameter("roleName");
		logger.debug("Entered role is:  " + rolename);
		String userid = request.getParameter("userid");
		String emailid = request.getParameter("emailid");
		String pwd = request.getParameter("pwd");
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String address = request.getParameter("address");
		String contactNo = request.getParameter("contactno");
		logger.debug("RegisterServlet doPost() received credentials.");
		
		UserDAO userDAO = new UserDAO();
		
		try {
			String message = userDAO.doRegister(rolename,userid, pwd, emailid, firstName, lastName, address, contactNo);
			//out.println(message);
			if(message=="SUCCESS") {
				HttpSession session = request.getSession();
				session.setAttribute("userID",userid);
				if(session.getAttribute("userid")==null) {
					response.sendRedirect("registrationSuccess.jsp");
				}
				else {
					response.sendRedirect("addAdminSuccess.jsp");
				}
			}
			else {
				response.sendRedirect("registrationError.jsp");
			}
			
		} catch (ClassNotFoundException e) { 
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			out.close();
		}
	}

}
