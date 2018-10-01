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

import com.medxplore.app.dao.SearchDAO;
import com.medxplore.app.dto.SearchDTO;


@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Logger logger = Logger.getLogger(SearchServlet.class);
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		logger.debug("Inside SearchServlet doPost() method.");
		
		PrintWriter out = response.getWriter();
		String medicineName = request.getParameter("medicineName");
		
		logger.debug("SearchServlet doPost() received search credentials");
		
		SearchDAO searchDAO = new SearchDAO();
		
		try {
			SearchDTO searchDTO = searchDAO.doSearch(medicineName);
			logger.debug("SearchServlet received db-loaded SearchDTO Object: " + searchDTO);
			HttpSession session = request.getSession(false);
			session.setAttribute("fromSearchMed", "true");
			if(searchDTO!=null) {
				session.setAttribute("medname", searchDTO.getMedname());
				session.setAttribute("searchData", searchDTO);
				logger.debug("Redirecting to searchMedResult.jsp...");
				response.sendRedirect("searchMedResult.jsp");
			}
			else {
				logger.debug("Error in Search...");
				response.sendRedirect("searchMedError.jsp");
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
