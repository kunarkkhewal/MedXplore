package com.medxplore.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

import org.apache.log4j.Logger;

import com.medxplore.app.dao.UserDAO;
import com.medxplore.utils.QueryConstants;

public interface CommonDAO {
	
	Logger logger = Logger.getLogger(CommonDAO.class);
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Connection conn = null;
		
		// Without Connection Pooling.
		ResourceBundle rb = ResourceBundle.getBundle("config");
		Class.forName(rb.getString("drivername"));
		conn = DriverManager.getConnection(rb.getString("dburl"), rb.getString("userid"), rb.getString("password"));
		return conn;
	}
	
	public static int fetch_UID(String userid) throws ClassNotFoundException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			
			pstmt = conn.prepareStatement(QueryConstants.UID_SQL);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			int uid;
			if(rs.next()) {
				uid = rs.getInt("UID");
			}
			else {
				uid = 0;
			}
			logger.debug("uid from ResultSet: " + uid);
			return uid;
		
		}
		finally {
			if(conn!=null) {
				conn.close();
			}
		}
	}
	
	public static int fetch_RoleID(String rolename) throws ClassNotFoundException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();			
			pstmt = conn.prepareStatement(QueryConstants.ROLEID_SQL);
			pstmt.setString(1, rolename);
			rs = pstmt.executeQuery();
			int roleid;
			if(rs.next()) {
				roleid = rs.getInt("ROLEID");
			}
			else {
				roleid = 0;
			}
			logger.debug("roleid from ResultSet: " + roleid);
			return roleid;
			
		}
		finally {
			if(conn!=null) {
				conn.close();
			}
		}
	}
}
