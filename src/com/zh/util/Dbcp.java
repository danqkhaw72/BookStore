package com.zh.util;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.commons.dbcp.BasicDataSource;


public class Dbcp {
	private static final String DRIVER_CLASS = "com.mysql.jdbc.Driver";  
	private static final String URL = "jdbc:mysql://localhost:3306/bookstores?useUnicode=true&characterEncoding=UTF-8";
	private static final String USER = "springstudent";
	private static final String PASSWORD = "12345";
	private static BasicDataSource dataSource; 
	
	static{
		dataSource = new BasicDataSource();
		dataSource.setDriverClassName(DRIVER_CLASS);
		dataSource.setUrl(URL);
		dataSource.setUsername(USER);
		dataSource.setPassword(PASSWORD);
		dataSource.setInitialSize(2); 
		dataSource.setMaxActive(12);  
	}
	
	public static synchronized Connection getConnection(){
		System.out.println("-----------------------------------");
		try {
			System.out.println("Connect Success!!!");
			
			return dataSource.getConnection();
		} catch (SQLException e) {
			System.out.println("-----------------> Error Connect <-----------------");
			e.printStackTrace();
			return null;
		}
	}

	
	private Dbcp() {
	}

	public static void closeResultSet(ResultSet rs) {
		try {
			if (rs != null)
				rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void closeStatement(Statement stmt) {
		try {
			if (stmt != null)
				stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void closeCallableStatement(CallableStatement cstmt) {
		try {
			if (cstmt != null)
				cstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	
	public static void closePreparedStatement(PreparedStatement pstmt) {
		try {
			if (pstmt != null)
				pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	
	public static void closeConnection(Connection con) {
		try {
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}


