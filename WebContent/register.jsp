<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
		<title>Register</title>
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
			#mainSignup{
                                color:#340926;
                                letter-spacing:15px;
                                font-weight:bolder;
                                font-size:20;
                                margin-top:50px;
                        }
			#address{
				resize:none;	
			}
			input[type="textbox"], input[type=password], input[type=email], input[type=number], input[type=date], #address{
				border:none;
				background:#f1f1f1;
				padding:15px;
			}
			#infoText{
				color:#340926;
			}
			#signupButton{
				background:#340926;
				color:white;
				border:none;
				width:100px;
				margin-top:15px;
				
			}
			#signupButton:hover{
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
					<a class="navbar-brand" href="index.jsp">Shoes Store</a>
				</div>
				<div class="collapse navbar-collapse" id="mainNavbar">
					<ul class="nav navbar-nav">
						<li><a href="index.jsp">HOME</span></a></li>
						<li><a href="Products.jsp">PRODUCTS</span></a></li>
						<!-- <li class="dropdown">
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
						<li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span>LOGIN</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="container">
			<h2 class="text-center" id="mainSignup">SIGNUP</h2>
			<p class="text-center" id="infoText">Please fill in this form to create an account.</p>
			<hr>
			<form class="form-horizontal"  method="POST" action="RegisterServlet">
				<div class="form-group">
					<label class="control-label col-sm-4" for="firstname">Firstname:</label>
					<div class="col-sm-6">
						<input type="textbox" class="form-control" id="firstname" name="firstname" placeholder="Enter firstname" required>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-4" for="lastname">Lastname:</label>
					<div class="col-sm-6">
						<input type="textbox" class="form-control" id="lastname" name="surname" placeholder="Enter lastname" required>
					</div>
				</div>
			<!-- 	<div class="form-group">
					<label class="control-label col-sm-4" for="dob">Birth Date:</label>
					<div class="col-sm-6">
						<input type="date" id="dob" name="dob" class="form-control" required>
					</div>
				</div> -->
				<div class="form-group">
					<label class="control-label col-sm-4" for="address">Address:</label>
					<div class="col-sm-6">
						<textarea id="address" name="address" placeholder="Enter address" class="form-control" rows="5" title ="Please enter Address with Pincode" required></textarea>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-4" for="emailId">Email:</label>
					<div class="col-sm-6">
						<input type="email" id="emailid" name="username" placeholder="Enter email id" class="form-control" required>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-4" for="mobileno">Mobile No.:</label>
					<div class="col-sm-6">
						<input type="textbox" maxlength="10" id="mobileno" placeholder="Enter mobile number" class="form-control" name="mobileno" title ="Please enter 10 digit mobileno." required>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-4" for="password">Password:</label>
					<div class="col-sm-6">
						<input type="password"  class="form-control" placeholder="Enter password" name="password" id = "pass1" required>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-4" for="confirmpassword">Confirm Password:</label>
					<div class="col-sm-6">
						<input type="password"  name="repassword" placeholder="Confirm password" id = "pass2" class="form-control" required onkeyup="checkPass(); return false;">		
						<span id="confirmMessage" class="confirmMessage"></span>
					</div>
				</div>
				<div class="form-group text-center">
                     <div class="col-sm-offset-4 col-sm-6">
                     	<button type="submit" class="btn btn-primary btn-md" id="signupButton" onclick="signup()">SIGN UP</button>
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
		<script>
			function checkPass()
			{
			    var pass1 = document.getElementById('pass1');
			    var pass2 = document.getElementById('pass2');
			    var message = document.getElementById('confirmMessage');
			    var goodColor = "#66cc66";
			    var badColor = "#ff6666";
			    if(pass1.value == pass2.value){
			        pass2.style.backgroundColor = goodColor;
			        message.style.color = goodColor;
			        message.innerHTML = "Passwords Match!"
			    }else{
			      
			        pass2.style.backgroundColor = badColor;
			        message.style.color = badColor;
			        message.innerHTML = "Passwords Do Not Match!"
			    }
			}  
		</script>
		<script>
			function signup(){
				alert("Registration done successfully!!!")
			}
		</script>
</body>
</html>