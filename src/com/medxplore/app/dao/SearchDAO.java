package com.medxplore.app.dao;

import static com.medxplore.utils.CommonDAO.getConnection;
import static com.medxplore.utils.QueryConstants.MAIN_MED_SQL;
import static com.medxplore.utils.QueryConstants.ALT_MED_LIST_SQL;

import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.log4j.Logger;

import com.medxplore.app.dto.MedAltDTO;
import com.medxplore.app.dto.SearchDTO;
import com.medxplore.app.dto.StoreDTO;


public class SearchDAO {
	Logger logger = Logger.getLogger(SearchDAO.class);
	
	public SearchDTO doSearch(String categoryName, String medicineName) throws ClassNotFoundException, SQLException {
		logger.debug("Inside SearchDAO doSearch() method.");
		
		Connection conn = null;
		PreparedStatement pstmt_MainMed = null;
		ResultSet rs1 = null;
		SearchDTO searchDTO = null;
		ArrayList<StoreDTO> stores = null;
		
		try {
			conn = getConnection();
			logger.debug("Connection created for SEARCH inside SearchDAO.");
			pstmt_MainMed = conn.prepareStatement(MAIN_MED_SQL);
			pstmt_MainMed.setString(1, categoryName);
			pstmt_MainMed.setString(2, medicineName);
			rs1 = pstmt_MainMed.executeQuery();
			logger.debug("MAIN_MED_SQL query executed.");
			
			while(rs1.next()) {
				if(searchDTO==null) {
					searchDTO = new SearchDTO();
					logger.debug("SearchDTO Object created in loop.");
					searchDTO.setMedname(rs1.getString("medname"));
					searchDTO.setCategoryName(rs1.getString("descr"));
					searchDTO.setPackSize(rs1.getInt("packsize"));
					searchDTO.setPrice(rs1.getFloat("price"));
					Array saltArray = rs1.getArray("salts");
						System.out.println("Array is:  " + saltArray.toString());
					String[] saltArrayString = (String[])saltArray.getArray();
						System.out.println("String[] is:  " + saltArrayString.toString());
					ArrayList<String> saltList = new ArrayList<>();
					for (String x : saltArrayString) {
				        saltList.add(x);
				    }
						System.out.println("Salts are:  " + saltList.toString());
					logger.debug("Salts are:  " + saltList.toString());
					searchDTO.setSalts(saltList);
					stores = new ArrayList<>();
					logger.debug("Medicine credentials loaded into the SearchDTO object.");
					searchDTO.setStores(stores);
				}
				StoreDTO store = new StoreDTO();
				store.setStoreName(rs1.getString("sname"));
				store.setStoreAddress(rs1.getString("saddress"));
				store.setStoreContactNo(rs1.getString("scontactno"));
				store.setStoreMapLink(rs1.getString("smaplink"));
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
	
	public ArrayList<MedAltDTO> doAlt(String medicineName, ArrayList<String> salts) throws ClassNotFoundException, SQLException {
		logger.debug("Inside SearchDAO doAlt() method.");
		
		Connection conn = null;
		PreparedStatement pstmt= null;
		ResultSet rs = null;
		MedAltDTO medAltDTO = null;
		ArrayList<MedAltDTO> medAltList = null;
		try {
			conn = getConnection();
			logger.debug("Connection created for ALT inside SearchDAO.");
			pstmt = conn.prepareStatement(ALT_MED_LIST_SQL);
			pstmt.setString(1, medicineName);
			pstmt.setString(2, salts.get(0));
			try{
				pstmt.setString(3, salts.get(1));
			}
			catch(IndexOutOfBoundsException e)
			{
				pstmt.setString(3, "1=1");
			}
			rs = pstmt.executeQuery();
			logger.debug("ALT_MED_LIST_SQL query executed.");
			medAltList = new ArrayList<>();
			
			while(rs.next()) {
					medAltDTO = new MedAltDTO();
					logger.debug("MedAltDTO Object created.");
					medAltDTO.setMedname(rs.getString("medname"));
					medAltDTO.setPackSize(rs.getInt("packsize"));
					medAltDTO.setPrice(rs.getFloat("price"));
					Array saltArray = rs.getArray("salts");
						System.out.println("Array is:  " + saltArray.toString());
					String[] saltArrayString = (String[])saltArray.getArray();
						System.out.println("String[] is:  " + saltArrayString.toString());
					ArrayList<String> saltList = new ArrayList<>();
					for (String x : saltArrayString) {
				        saltList.add(x);
				    }
						System.out.println("Salts are:  " + saltList.toString());
					logger.debug("Salts are:  " + saltList.toString());
					medAltDTO.setSalts(saltList);
					medAltList.add(medAltDTO);
			}
			logger.debug("Returning db-loaded MedAltList : " + medAltList);
			return medAltList;
		}
		finally {
			if(rs!=null) {
				rs.close();
			}
			if(pstmt!=null) {
				pstmt.close();
			}
			if(conn!=null) {
				conn.close();
			}
		}
	}
}
