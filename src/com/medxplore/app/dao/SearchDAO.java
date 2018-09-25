package com.medxplore.app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.log4j.Logger;

public class SearchDAO {
	Logger logger = Logger.getLogger(SearchDAO.class);
	
	public void doSearch(String medicineName) {
		logger.debug("Inside SearchDAO doSearch() method.");
		
		Connection con = null;
		PreparedStatement pstmt1 = null;
		PreparedStatement pstm2 = null;
		ResultSet rs1 = null;
		ResultSet rs2 = null;
		
		
	}
}
