<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
		<title></title>
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
			#loginMain{
				color:#340926;
				letter-spacing:15px;
				font-weight:bolder;
				font-size:20;
				margin-top:50px;
			}
			#loginButton{
				background-color:#340926;
				color:white;
				border:none;
				width:100px;
				margin-top:15px;
			}
			#loginButton:hover{
				color:#CBE432;
			}
			input[type="email"], input[type="password"]{
				border:none;
                background:#f1f1f1;
                padding:15px;
			}
			#signUp{
				color:#AE0D7A;
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
					<!-- 	<li class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" href="Products.jsp">PRODUCTS</a>
							<ul class="dropdown-menu">
								<li><a href="#">Beverages</a></li>
								<li><a href="#">Breads Buns & Pavs</a></li>
								<li><a href="#">Cookies & Tea Cakes</a></li>
								<li><a href="#">Dairy</a></li>
							</ul>
						</li> -->
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span>SIGNUP</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="container">
			<h2 class="text-center" id="loginMain">LOGIN</h2>
			<hr>
			<form class="form-horizontal" action="login" method="POST">
				<div class="form-group">
					<label class="control-label col-sm-4" for="username">Email:</label>
					<div class="col-sm-4">
						<input type="email" id="username" name="username" placeholder="Enter email" class="form-control" required>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-4" for="password">Password:</label>
					<div class="col-sm-4">
						<input type="password" id="password" name="userpass" placeholder="Enter password" class="form-control" required>
					</div>
				</div>
				<div class="form-group text-center">
					<div class="col-sm-offset-4 col-sm-4">
						<button type="submit" name="login" id="loginButton" class="btn btn-primary btn-md">Login</button>
					</div>
				</div>
				<div class="form-group">
					<div class="text-center">
						<p>Don't have an account? <a href="register.jsp" id="signUp">Sign Up</a></p>
					</div>
				</div>
			</form>
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
	</body>
</html>