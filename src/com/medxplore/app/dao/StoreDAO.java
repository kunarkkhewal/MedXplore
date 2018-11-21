package com.medxplore.app.dao;

import static com.medxplore.utils.CommonDAO.getConnection;
import static com.medxplore.utils.QueryConstants.ADD_STORE_SQL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class StoreDAO {

	public String doAddStore(String storeName, String storeAddress, String contactNo, String region, String mapLink) throws ClassNotFoundException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(ADD_STORE_SQL);
			pstmt.setString(1, storeName);
			pstmt.setString(2, storeAddress);
			pstmt.setString(3, contactNo);
			pstmt.setString(4, region);
			pstmt.setString(5, mapLink);
			int noOfRecordsUpdated = pstmt.executeUpdate();
			if(noOfRecordsUpdated>0) {
				return "SUCCESS";
			}
			else {
				return "ERROR";
			}
		} catch (SQLException e) {
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
