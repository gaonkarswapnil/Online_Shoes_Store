<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
		<title>Shoes Store</title>
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
			#introduction{
				margin-top:10px;
				color:#340926;
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
			.container .carousel{
				margin-top:10px;	
			}
			.container .row{
				margin-top:10px;	
				
			}
			#googleMap{
				margin-top:30px;
				margin-bottom:20px;
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
			#contact h3{
				color:#340926;
				letter-spacing:4px;
				margin-top:90px;
				margin-bottom:20px;
				font-size:30px;
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
								<li><a href="Products.jsp">Beverages</a></li>
								<li><a href="Products.jsp">Breads Buns & Pavs</a></li>
								<li><a href="Products.jsp">Cookies & Tea Cakes</a></li>
								<li><a href="Products.jsp">Dairy</a></li>
							</ul>
						</li> -->
						<li><a href="#contact">CONTACT US</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span>SIGNUP</a></li>
						<li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span>LOGIN</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div id="introduction" class="container text-center">
			<p>These Website is the online Shoes store in Mumbai. With over 18,000 products and 1000 brands in our shoe list you will find everything you are looking for. Right from branded products online and other branded shoes online - we have it all. Save time and money, shop at our Website - the best online Shoes store - an all-encompassing online Shoes store of India.</p>
		</div>
		<div class="container">
			<div id="photoSlide" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#photoSlide" data-slide-to="0" class="active"></li>
					<li data-target="#photoSlide" data-slide-to="1"></li>
					<li data-target="#photoSlide" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img src="images\slider1.jpg" alt="first image">
					</div>
					<div class="item">
						<img src="images\slider2.jpg" alt="second image">
					</div>
					<div class="item">
						<img src="images\slider3.jpg" alt="third image">
					</div>
				</div>
				<a class="left carousel-control" href="#photoSlide" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#photoSlide" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<a href="login.jsp"><img src="images\display1.jpg" class="img-thumbnail"></a>
				</div>
				<div class="col-sm-3">
					<a href="login.jsp"><img src="images\display2.jpg" class="img-thumbnail"></a>
				</div>
				<div class="col-sm-3">
					<a href="login.jsp"><img src="images\display3.jpg" class="img-thumbnail"></a>
				</div>
				<div class="col-sm-3">
					<a href="login.jsp"><img src="images\display4.jpg" class="img-thumbnail"></a>
				</div>
			</div>
		</div>
		<div id="contact" class="container text-center">
			<h3 class="text-center">CONTACT</h3>
			<hr>
			<p class="text-center"><em>We love our customers</em></p>
			<p><span class="glyphicon glyphicon-map-marker"></span>Kalyan,Maharashtra, India</p>
			<p><span class="glyphicon glyphicon-phone"></span>Phone: +919022695479</p>
			<p><span class="glyphicon glyphicon-envelope"></span>Email: gaonkarswapnil1@gmail.com</p>
		</div>
		<div  class="container" id="googleMap" style="height:400px"></div>
		<footer class="text-center" id="footerID">
			<a href="index.jsp" data-toggle="tooltip" title="TO TOP">
				<span class="glyphicon glyphicon-chevron-up"></span>
			</a><br><br>
			<p>Designed and Developed by  <span class="glyphicon glyphicon-copyright-mark"></span><b>Gaonkar #Oliver</b></p>
		</footer>
		<script>
			function myMap() {
			var myCenter = new google.maps.LatLng(19.2204, 73.1641);
			var mapProp = {center:myCenter, zoom:18, scrollwheel:false, draggable:false, mapTypeId:google.maps.MapTypeId.ROADMAP};
			var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
			var marker = new google.maps.Marker({position:myCenter});
			marker.setMap(map);
			}
		</script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCg3AxFJTp-rgSuXzi6EyqV1dQpjn8v2wo&callback=myMap"></script>
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