<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head lang="en">
		<title>Invoice</title>
		<meta charset="utf-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
  		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<style>
			.affix{
                                top:0;
                                width:100%;
                                z-index: 9999 !important;
                        }
			.navbar{
				font-family:Montserrat, sans-serif;
				letter-spacing:4px;
				border:0;	
				font-size:11px;
				opacity:0.9;
				background-color:#340926;
				font-color:red;
				margin-bottom:0px;
				z-index: 9999 !important;
			}
			.dropdown-menu li a:hover{
				background-color:#2d2d30;
				color:#CBE432;
			}
			.navbar .navbar-brand{
				color:white;
			}
			.navbar .collapse li a{
				color:white;	
			}
			.navbar .collapse li a:hover{
				background-color:black;
				color:#CBE432;
			}
			.navbar .collapse .dropdown li a{
				color:white;
				background-color:#340926;
			}
			.navbar .collapse .dropdown li a:hover{
				color:#CBE432;
				background-color:black;
			
			}
			.affix + .container-fluid{
				padding-top:50px;
			
			}
			body{
				position:relative;
			}
			#mainHeading{
				color:#340926;
				padding-top:28px;
				letter-spacing:4px;
				font-family:Montserrat, sans-serif;
				font-weight:bolder;
			}
			#invoiceMain{
				color:#340926;
				letter-spacing:10px;
				margin-top:50px;
			}
			#invoiceSecond{
				color:#340926;
				letter-spacing:10px;
			}
			#invoiceBody{
				margin-top:30px;
			}
			#printButton{
				background-color:#340926;
				width:150px;
				border:none;
			}
			#printButton:hover{
				color:#CBE432;
			}
			#footerID{
				background-color:#340926;
				padding-bottom:5px;
				color:white;
				opacity:0.9;
			}
		</style>
	</head>
	<body>
	<% 
	String username=request.getParameter("username"); 
	//out.print("Welcome "+ username);
	session.setAttribute("username",username); 
	%> 
	
	<sql:setDataSource
	        var="myDS"
	        driver="com.mysql.jdbc.Driver"
	        url="jdbc:mysql://localhost:3306/showstore"
	        user="root" password=""
	    />
	     
	    
	    <sql:query var="orderDetails"   dataSource="${myDS}">
	        SELECT ORDER_ID,USERNAME, PRODUCT_NAME, PRODUCT_TYPE, PRICE, STOCK, QUANTITY, DESCRIPTION,TOTAL_AMOUNT FROM ORDERS WHERE USERNAME = '<%= request.getParameter("username") %>' order by ORDER_ID desc limit 1;;
	    </sql:query>
	    
	     <sql:query var="customerDetails"   dataSource="${myDS}">
	        select CUSTOMER_ID, FIRSTNAME, SURNAME, ADDRESS, USERID, PASSWORD from CUSTOMER_LOGIN WHERE USERID = '<%= request.getParameter("username") %>' order by CUSTOMER_ID desc limit 1;;
	    </sql:query>
		
		<div class="container-fluid text-center" style="height:120px; background-color:#CBE432; opacity:0.9;">
			<h1 id="mainHeading">Shoe Store</h1>	
		</div>
		<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="118">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainNavbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Hello <%= request.getParameter("username") %></a>
				</div>
				<div class="collapse navbar-collapse" id="mainNavbar">
					<ul class="nav navbar-nav">
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="index.jsp"><span class="glyphicon glyphicon-log-out"></span>LOGOUT</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="container">
			<h3 class="text-center" id="invoiceMain">INVOICE</h3>
			<hr>
			<h4 class="text-center" id="invoiceSecond">Shoe Store PVT. LTD.</h4>
			<form class="form-horizontal" id="invoiceBody">
			
			<c:forEach var="order" items="${orderDetails.rows}">
				<div class="form-group">
					<div class="col-sm-6 text-right">
						<label class="control-label">Order No : </label>
					</div>
					<div class="col-sm-6 text-left">
						<label class="control-label">${order.ORDER_ID}</label>
					</div>
				</div>
				<c:forEach var="customerDetails" items="${customerDetails.rows}">
				<div class="form-group">
                                        <div class="col-sm-6 text-right">
                                                <label class="control-label">Name :  </label>
                                        </div>
                                        <div class="col-sm-6 text-left">
                                                <label class="control-label">${customerDetails.FIRSTNAME} ${customerDetails.SURNAME}</label>
                                        </div>
                                </div>
				<div class="form-group">
                                        <div class="col-sm-6 text-right">
                                                <label class="control-label">Delivery Address :  </label>
                                        </div>
                                        <div class="col-sm-6 text-left">
                                                <label class="control-label">${customerDetails.ADDRESS}</label>
                                        </div>
                                </div>
                <div class="form-group">
                                        <div class="col-sm-6 text-right">
                                                <label class="control-label">Email Id :  </label>
                                        </div>
                                        <div class="col-sm-6 text-left">
                                                <label class="control-label">${customerDetails.USERID}</label>
                                        </div>
                                </div>
				</c:forEach>
                               <div class="form-group">
                                        <div class="col-sm-6 text-right">
                                                <label class="control-label">Product Name :  </label>
                                        </div>
                                        <div class="col-sm-6 text-left">
                                                <label class="control-label">${order.PRODUCT_NAME}</label>
                                        </div>
                                </div>
                                
                                <div class="form-group">
                                        <div class="col-sm-6 text-right">
                                                <label class="control-label">Product Type :  </label>
                                        </div>
                                        <div class="col-sm-6 text-left">
                                                <label class="control-label">${order.PRODUCT_TYPE}</label>
                                        </div>
                                </div>
                                
                                <div class="form-group">
                                        <div class="col-sm-6 text-right">
                                                <label class="control-label">Quantity :  </label>
                                        </div>
                                        <div class="col-sm-6 text-left">
                                                <label class="control-label">${order.QUANTITY}</label>
                                        </div>
                                </div>
                                
                                <div class="form-group">
                                        <div class="col-sm-6 text-right">
                                                <label class="control-label">Description : </label>
                                        </div>
                                        <div class="col-sm-6 text-left">
                                                <label class="control-label">${order.DESCRIPTION}</label>
                                        </div>
                                </div>
                                
                                <div class="form-group">
                                        <div class="col-sm-6 text-right">
                                                <label class="control-label">Price :  </label>
                                        </div>
                                        <div class="col-sm-6 text-left">
                                                <label class="control-label">${order.PRICE}</label>
                                        </div>
                                </div>
				<div class="form-group">
                                        <div class="col-sm-6 text-right">
                                                <label class="control-label">Amount to be paid : </label>
                                        </div>
                                        <div class="col-sm-6 text-left">
                                                <label class="control-label">${order.TOTAL_AMOUNT}</label>
                                        </div>
                                </div>
				<hr>
				</c:forEach>
			</form>
			<div class="col-sm-12 text-center">
				<button type="button" class="btn btn-primary" id="printButton" onclick="printFunc()"><span class="glyphicon glyphicon-print"></span> Print Invoice</button>
			</div>
		</div>
		<!-- <footer class="text-center" id="footerID">
			<a href="index.html" data-toggle="tooltip" title="TO TOP">
				<span class="glyphicon glyphicon-chevron-up"></span>
			</a><br><br>
			<p>Designed and Developed by  <span class="glyphicon glyphicon-copyright-mark"></span><b> THE MAVERICKS</b></p>
		</footer> -->
		<script>
			function printFunc(){
				window.print();
			}
		</script>
	</body>
</html>







