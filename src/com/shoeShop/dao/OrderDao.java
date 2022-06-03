package com.shoeShop.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class OrderDao {

	public static boolean addOrder(String product_name,String product_type, int price, int stock, String description, int quantity, String username){  
		boolean status=false;  
				
		try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection conn=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/showstore","root","");  
		
		
		//stmt.executeUpdate("INSERT INTO CUSTOMER_LOGIN (FIRSTNAME, SURNAME, ADDRESS, USERID, PASSWORD) VALUES ('firstname', 'gaonkar', 'Kalyan', 'username', 'admin')");
		PreparedStatement pstmt = conn.prepareStatement("INSERT INTO ORDERS(PRODUCT_NAME, PRODUCT_TYPE, PRICE, STOCK, DESCRIPTION, QUANTITY, TOTAL_AMOUNT, USERNAME) VALUES (?,?,?,?,?,?,?,?)");
		
		int total_amount = price * quantity; 
		
		pstmt.setString(1, product_name);
		pstmt.setString(2, product_type);
		pstmt.setInt(3, price);
		pstmt.setInt(4, stock);
		pstmt.setString(5, description);
		pstmt.setInt(6, quantity);
		pstmt.setInt(7, total_amount);
		pstmt.setString(8, username);
		
		pstmt.executeUpdate();
		
		       conn.close();   
		       
		       status = true;
		}catch(Exception e){
			System.out.println(e);
		}  
		return status;  
		}  
	

	
}
