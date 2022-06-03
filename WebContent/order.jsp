<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head lang="en">
		<title>Products</title>
		<meta charset="utf-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
  		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<style>
			input{
			 border: none;
			 background : transparent;
			}
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
			#mainBeverages{
				color:#340926;
				letter-spacing:10px;
			}
			#productImage{
				height:200px;
				width:300px;
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
	<form action="order" method = "post">
		<div class="container-fluid text-center" style="height:120px; background-color:#CBE432; opacity:0.9;">
			<h1 id="mainHeading">Shoes Store</h1>	
		</div>
		<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="118">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainNavbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Shoes Store</a>
				</div>
				<div class="collapse navbar-collapse" id="mainNavbar">
					<ul class="nav navbar-nav">
						<li><a href="index.jsp">HOME</span></a></li>
						<li><a href="Products.jsp">PRODUCTS</span></a></li>
						<!-- <li class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" href="Products.jsp">PRODUCTS</a>
							<ul class="dropdown-menu">
								<li><a href="cat1.html">Beverages</a></li>
								<li><a href="cat2.html">Breads Buns & Pavs</a></li>
								<li><a href="cat3.html">Cookies & Tea Cakes</a></li>
								<li><a href="cat4.html">Dairy</a></li>
							</ul>
						</li> -->
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><p class="navbar-brand">Welcome Customer</p></li>
						
					</ul>
				</div>
			</div>
		</nav>
		<sql:setDataSource
	        var="myDS"
	        driver="com.mysql.jdbc.Driver"
	        url="jdbc:mysql://localhost:3306/showstore"
	        user="root" password=""
    	/>
     
	    <sql:query var="listUsers"   dataSource="${myDS}">
	        SELECT PRODUCT_IMAGE,PRODUCT_ID, PRODUCT_NAME, PRODUCT_TYPE, PRICE, STOCK, DESCRIPTION FROM PRODUCTS;
	    </sql:query>
		
		<div class="container">
			<h2 class="text-center" id="mainBeverages">Sports Shoes</h2>
			<hr>
			<c:forEach var="user" items="${listUsers.rows}">
				<div class="media">
	                <div class="media-left media-middle">
	                    <img src="${user.PRODUCT_IMAGE}" class="media-object" id="productImage"style="width:90px height:80px">
	                </div>
	                <div class="media-body">			
	                    <h3 class="media-heading">${user.PRODUCT_NAME}</h3>
	                        <p>Product Name: <input type = "text" name = "product_name" value = "${user.PRODUCT_NAME}" readonly></p>
	                        <p>Product Type: <input type = "text" name = "product_type" value = "${user.PRODUCT_TYPE}" readonly></p>
	                        <p>Price: <input type = "text" name = "price" value = "${user.PRICE}" readonly></p> 
	                        <p>Stock: <input type = "text" name = "stock" value = "${user.STOCK}" readonly></p>
	                        <p>Description: <input type = "text" name = "description" value = "${user.DESCRIPTION}" readonly></p>
	                        <p>Quantity: <input type="number" name="quantity" min="1" max="${user.STOCK}" step="1" value="1"></p>
	                    
	                    <input type="submit" value="Buy" name = "submit" class="btn btn-primary">
	                    <h6>(online payment unavailable)</h6>
	                    <h6>Only COD available</h6>
	                </div>
	            </div>
	            <hr>
            </c:forEach>
			
		</div>
		<!-- <footer class="text-center" id="footerID">
			<a href="index.html" data-toggle="tooltip" title="TO TOP">
				<span class="glyphicon glyphicon-chevron-up"></span>
			</a><br><br>
			<p>Designed and Developed by  <span class="glyphicon glyphicon-copyright-mark"></span><b> THE MAVERICKS</b></p>
		</footer> -->
		<script>
			$(document).ready(function(){
				$('body').scrollspy({target: ".navbar", offset: 50});
			  	$("#mainNavbar a").on('click', function(event) {
					if (this.hash !== "") {
      						event.preventDefault();
						var hash = this.hash;
      						$('html, body').animate({
							scrollTop: $(hash).offset().top
						}, 800, function(){
        						window.location.hash = hash;
						});
					}
				});
			});
		</script>
		</form>
	</body>
</html>



