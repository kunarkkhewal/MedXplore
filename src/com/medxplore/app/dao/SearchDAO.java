package com.medxplore.app.dao;

import static com.medxplore.utils.CommonDAO.getConnection;
import static com.medxplore.utils.QueryConstants.MAIN_MED_SQL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.log4j.Logger;

import com.medxplore.app.dto.SearchDTO;
import com.medxplore.app.dto.StoreDTO;


public class SearchDAO {
	Logger logger = Logger.getLogger(SearchDAO.class);
	
	public SearchDTO doSearch(String medicineName) throws ClassNotFoundException, SQLException {
		logger.debug("Inside SearchDAO doSearch() method.");
		
		Connection conn = null;
		PreparedStatement pstmt_MainMed = null;
		PreparedStatement pstmt_AltMedList = null;
		ResultSet rs1 = null;
		ResultSet rs2 = null;
		SearchDTO searchDTO = null;
		ArrayList<StoreDTO> stores = null;
		
		try {
			conn = getConnection();
			logger.debug("Connection created for SEARCH inside SearchDAO.");
			pstmt_MainMed = conn.prepareStatement(MAIN_MED_SQL);
			pstmt_MainMed.setString(1, medicineName);
			rs1 = pstmt_MainMed.executeQuery();
			logger.debug("MAIN_MED_SQL query executed.");
			
			while(rs1.next()) {
				if(searchDTO==null) {
					searchDTO = new SearchDTO();
					logger.debug("SearchDTO Object created in loop.");
					searchDTO.setMedname(rs1.getString("medname"));
					searchDTO.setPackSize(rs1.getInt("packsize"));
					searchDTO.setPrice(rs1.getFloat("price"));
					searchDTO.setSalt(rs1.getString("salt"));
					stores = new ArrayList<>();
					logger.debug("Medicine credentials loaded into the SearchDTO object.");
					searchDTO.setStores(stores);
				}
				StoreDTO store = new StoreDTO();
				store.setStoreName(rs1.getString("sname"));
				store.setStoreAddress(rs1.getString("saddress"));
				store.setStoreContactNo(rs1.getString("scontactno"));
				stores.add(store);
				logger.debug("Store added to SearchDTO object AList<>.");
			}
			logger.debug("Returning db-loaded SearchDTO object: " + searchDTO);
			return searchDTO;
		}
		finally {
			if(rs1!=null) {
				rs1.close();
			}
			if(pstmt_MainMed!=null) {
				pstmt_MainMed.close();
			}
			if(conn!=null) {
				conn.close();
			}
		}
		
	}
}
