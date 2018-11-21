package com.medxplore.app.dao;

import static com.medxplore.utils.CommonDAO.getConnection;
import static com.medxplore.utils.QueryConstants.ADD_MED_SQL;

import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.log4j.Logger;

public class MedicineDAO {
	Logger logger = Logger.getLogger(MedicineDAO.class);
	
	public String doAddMed(String medicineName, int brand, int category, float price, int packSize, String salt1, String salt2) throws ClassNotFoundException, SQLException {
		logger.debug("Inside MedicineDAO doAddMed() method.");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ArrayList<String> saltsList = new ArrayList<>();
		saltsList.add(salt1);
		if(salt2.length()>0)
			saltsList.add(salt2);
		
		try {
			conn = getConnection();
			String[] s = saltsList.toArray(new String[0]);
			Array salts = conn.createArrayOf("text", s);
			pstmt = conn.prepareStatement(ADD_MED_SQL);
			pstmt.setString(1, medicineName);
			pstmt.setInt(2, category);
			pstmt.setInt(3, brand);
			pstmt.setInt(4, packSize);
			pstmt.setFloat(5, price);
			pstmt.setArray(6, salts);
			
			int noOfRecordsUpdated = pstmt.executeUpdate();
			if(noOfRecordsUpdated>0) {
				logger.debug("AddMed success!");
				return "SUCCESS";
			}
			else {
				logger.debug("AddMed failed!");
				return "ERROR";
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
			return "ERROR";
		}
		finally {
			if(pstmt!=null) {
				pstmt.close();
			}
			if(conn!=null) {
				conn.close();
			}
		}		
	}
	
}
