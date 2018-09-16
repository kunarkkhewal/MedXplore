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
import com.medxplore.app.dto.UserDTO;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Logger logger = Logger.getLogger(LoginServlet.class);
       
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		logger.debug("Inside LoginServlet doPost() method.");
		
		PrintWriter out = response.getWriter();
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		
		logger.debug("LoginServlet doPost() received credentials.");
				
		UserDAO userDAO = new UserDAO();
		
		try {
			UserDTO userDTO = userDAO.doLogin(userid,pwd);
			logger.debug("LoginServlet received db-loaded UserDTO Object: " + userDTO);
			if(userDTO != null) {
				/*HttpSession session = request.getSession(true);
				out.println("Session ID: " + session.getId());
				out.println("Session Created at: " + session.getCreationTime());
			*/
				out.println("Logged in.");
			}
			else {
				out.println("Error in Login.");
			}
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
