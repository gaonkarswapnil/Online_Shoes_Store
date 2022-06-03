package com.shoeShop.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;  
import java.io.PrintWriter; 
import com.shoeShop.dao.LoginDao;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		
		 response.setContentType("text/html");  
		    PrintWriter out = response.getWriter();  

	    String n=request.getParameter("username");  
	    String p=request.getParameter("userpass");  

		
	    if(LoginDao.validate(n, p)){  
	    
	    	response.sendRedirect("order.jsp?username="+n);
	    }  
	    else{ 
	    	out.println("<script type=\"text/javascript\">");
	        out.println("alert('User or password incorrect');");
	        out.println("</script>");
	        //out.print("Sorry username or password error");  
	        RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
	        rd.include(request,response);  
	    }  
	}

}
