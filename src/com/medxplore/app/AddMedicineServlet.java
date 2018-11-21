package com.medxplore.app;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.medxplore.app.dao.MedicineDAO;

/**
 * Servlet implementation class AddMedicineServlet
 */
@WebServlet("/addMedicine")
public class AddMedicineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Logger logger = Logger.getLogger(AddMedicineServlet.class);
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doPost(request, response);
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		logger.debug("Inside AddMedicineServlet doPost() method.");
		
		String medicineName = request.getParameter("medicineName");
		int brand = Integer.parseInt(request.getParameter("brand"));
		int category = Integer.parseInt(request.getParameter("category"));
		String salt1 = request.getParameter("salt1")+" "+request.getParameter("conc1")+"mg";
		String salt2 = request.getParameter("salt2").length()>0?request.getParameter("salt2")+" "+request.getParameter("conc2")+"mg":"";
		float price = Float.parseFloat(request.getParameter("price"));
		int packSize = Integer.parseInt(request.getParameter("packSize"));
		logger.debug(medicineName+" "+brand+" "+category+" "+salt1+" "+salt2+" "+price+" "+packSize);
		
		MedicineDAO medDAO = new MedicineDAO();
		
		try {
			String message = medDAO.doAddMed(medicineName, brand, category, price, packSize, salt1, salt2);
			if(message == "SUCCESS") {
				response.sendRedirect("addMedSuccess.jsp");
			}
			else {
				response.sendRedirect("addMedError.jsp");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
