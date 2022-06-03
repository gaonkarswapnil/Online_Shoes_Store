package com.shoeShop.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shoeShop.dao.OrderDao;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/order")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Inside doPost Orders");
		
		response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	    
	    HttpSession session = request.getSession();
	    
        String username = session.getAttribute("username").toString();
       
        System.out.println("String Username = "+username);

		String product_name = request.getParameter("product_name");
	 	String product_type = request.getParameter("product_type");
	 	String price = request.getParameter("price");
	 	String stock = request.getParameter("stock");
	 	String description = request.getParameter("description");
	 	String quantity = request.getParameter("quantity");
	 	
	 	System.out.print(" product_name = " + product_name +"product_type = " +product_type+ "price = " +
	 			price + "stock = " +stock + "description = "+description + "quantity" +quantity); 
	 	
	 	
	 	if(OrderDao.addOrder(product_name, product_type, Integer.parseInt(price), Integer.parseInt(stock), description, Integer.parseInt(quantity),username)){  
	    	response.sendRedirect("invoice.jsp?username="+username);
	    }  
	    else{  
	        out.print("Order cannot be placed");  
	        RequestDispatcher rd=request.getRequestDispatcher("index.html");  
	        rd.include(request,response);  
	    }
	 	
	}

}
