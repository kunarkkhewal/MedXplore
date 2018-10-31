package com.medxplore.app;

import java.io.IOException;
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


@WebServlet("/updateProfile")
public class UpdateProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	Logger logger = Logger.getLogger(UpdateProfileServlet.class);
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		logger.debug("Inside updateProfileServlet doPost() method."); 
		
		String newPassword = request.getParameter("newpassword");
		String userid = request.getParameter("userid");
		String emailid = request.getParameter("emailid");
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String address = request.getParameter("address");
		String contactNo = request.getParameter("contactno");
		
		HttpSession session = request.getSession(false);
		UserDTO userDTO = (UserDTO)session.getAttribute("userdata");
		int uid = userDTO.getUid();
		
		if(newPassword == "" || newPassword == null) {
			newPassword = userDTO.getPassword();
		}
		if(userid == "" || userid == null ) {
			userid = userDTO.getUserid();
		}
		if(emailid == "" || emailid == null) {
			emailid = userDTO.getEmailId();
		}
		if(firstName == "" || firstName == null) {
			firstName = userDTO.getFirstName();
		}
		if(lastName == "" || lastName == null) {
			lastName = userDTO.getLastName();
		}
		if(address == "" || address == null) {
			address = userDTO.getAddress();
		}
		if(contactNo == "" || contactNo == null) {
			contactNo = userDTO.getContactNo();
		}

		else {
			UserDAO userDAO = new UserDAO();
			try {
				String message = userDAO.doUpdate(uid,userid,newPassword,emailid,firstName,lastName,address,contactNo);
				if(message == "SUCCESS") {
					userDTO.setUserid(userid);
					userDTO.setPassword(newPassword);
					userDTO.setEmailId(emailid);
					userDTO.setFirstName(firstName);
					userDTO.setLastName(lastName);
					userDTO.setAddress(address);
					userDTO.setContactNo(contactNo);
					session.setAttribute("userdata", userDTO);
					response.sendRedirect("updateProfileSuccess.jsp");
				}
				else {
					response.sendRedirect("updateProfileError.jsp");
				}
			} 
			catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		}	
	}

}
