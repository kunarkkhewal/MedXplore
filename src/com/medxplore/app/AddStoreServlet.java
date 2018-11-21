package com.medxplore.app;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.medxplore.app.dao.StoreDAO;

@WebServlet("/addStore")
public class AddStoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Logger logger = Logger.getLogger(AddStoreServlet.class);
       
    public AddStoreServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
logger.debug("Inside AddMedicineServlet doPost() method.");
		
		String storeName = request.getParameter("storeName");
		String storeAddress = request.getParameter("storeAddress");
		String contactNo = request.getParameter("contactNo");
		String region = request.getParameter("region");
		String mapLink = request.getParameter("mapLink");
		
		StoreDAO storeDAO = new StoreDAO();
		
		try {
			String message = storeDAO.doAddStore(storeName, storeAddress, contactNo, region, mapLink);
			if(message == "SUCCESS") {
				response.sendRedirect("addStoreSuccess.jsp");
			}
			else {
				response.sendRedirect("addStoreError.jsp");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
