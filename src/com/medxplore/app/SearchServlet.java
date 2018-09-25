package com.medxplore.app;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.medxplore.app.dao.SearchDAO;


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
		
		searchDAO.doSearch(medicineName);
		
		
	}

}
