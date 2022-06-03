package com.shoeShop.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;


public class RegisterDao {

	public static boolean register(String firstname,String surname, String address, String username, String password){  
		boolean status=false;  
		try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection conn=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/showstore","root","");  
		
		Statement stmt = conn.createStatement();
		
		
		//stmt.executeUpdate("INSERT INTO CUSTOMER_LOGIN (FIRSTNAME, SURNAME, ADDRESS, USERID, PASSWORD) VALUES ('firstname', 'gaonkar', 'Kalyan', 'username', 'admin')");
		PreparedStatement pstmt = conn.prepareStatement("INSERT INTO CUSTOMER_LOGIN (FIRSTNAME, SURNAME, ADDRESS, USERID, PASSWORD) VALUES (?,?,?,?,?)");
		pstmt.setString(1, firstname);
		pstmt.setString(2, surname);
		pstmt.setString(3, address);
		pstmt.setString(4, username);
		pstmt.setString(5, password);
		
		pstmt.executeUpdate();
		
		       conn.close();   
		       
		       status = true;
		}catch(Exception e){
			System.out.println(e);
		}  
		return status;  
		}  
	
}
