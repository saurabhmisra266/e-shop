<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>::My Shop::</title>
<link
	href="${pageContext.request.contextPath}/static/cs/jquery.bxslider.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/static/fa/css/font-awesome.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/cs/style.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/cs/media.css">
</head>

<body>
	<div id="wrapper">
		<div id="header">
			<div id="subheader">
				<div class="container">
					<p>world fastest online shopping place</p>
					<a href="${pageContext.request.contextPath}/createAccount">Sign
						Up</a><a href="#">Consumer</a><a href="#">Download App</a><a href="#">Help</a>
				</div>
			</div>
			<!--==main header==-->
			<div id="main-header">
				<!--logo-->
				<div id="logo">
					<span id="ist">MY</span><span id="iist">Shop.com</span>
				</div>
				<!--==user-menu==-->
				
				
				<div id="user-menu">
					<li><a href="${pageContext.request.contextPath}/showCart">Cart</a></li>
					<li><a href="${pageContext.request.contextPath}/login">Login</a></li>
				</div>
				
			</div>
		</div>
		<!----=====navigation bar==--->
		<div id="navigation">
			<a href="#" class="menu-togglr"><i class="fa fa-bars"></i></a>
			<nav id="mainav">
				<a href="#">Home</a> <a href="#">New arrivals</a> <a href="#">Deals</a>
				<a href="#">Electronics</a> <a href="#">Accessroies</a> <a href="#">Products</a>
				<a href="#">Order</a>

			</nav>
		</div>
		<!--============home-slider==-->
		<div id="slider">
			<ul class="bxslider">
				<li><img
					src="${pageContext.request.contextPath}/static/images/img1.jpg"></li>
				<li><img
					src="${pageContext.request.contextPath}/static/images/img2.jpg"></li>
				<li><img
					src="${pageContext.request.contextPath}/static/images/img3.jpg"></li>
			</ul>
		</div>
		<!----=====category boxes===----->
		<div class="container">
			<div id="heading-block">
				<h2>Category</h2>
			</div>
			<!---1st catbox--->
			<a href="#">
				<div class="catbox">
					<img
						src="${pageContext.request.contextPath}/static/images/cat1.jpg"
						alt="Men-fashion"> <span>Men Fashion</span>
				</div>
			</a>
			<!---2nd catbox--->
			<a href="#">
				<div class="catbox">
					<img
						src="${pageContext.request.contextPath}/static/images/cat2.jpg"
						alt="Men-fashion"> <span>Sandal</span>
				</div>
			</a>
			<!---third catbox--->
			<a href="#">
				<div class="catbox">
					<img
						src="${pageContext.request.contextPath}/static/images/cat3.jpg"
						alt="Men-fashion"> <span>Hand bags</span>
				</div>
			</a>
			<!---fourth catbox--->
			<a href="#">
				<div class="catbox">
					<img
						src="${pageContext.request.contextPath}/static/images/cat4.jpg"
						alt="Men-fashion"> <span>Earing</span>
				</div>
			</a>
			<!---fifth catbox--->
			<a href="#">
				<div class="catbox">
					<img
						src="${pageContext.request.contextPath}/static/images/cat5.jpg"
						alt="Men-fashion"> <span>Ladies Fashion</span>
				</div>
			</a>
			<!---HEADING OF CATEGORY-->
			<div id="heading-block">
				<h2>Products</h2>
			</div>
			<div class="prod-container">
				<!--first product-->
				<div class="prod-box">
						 <img
							src="${pageContext.request.contextPath}/static/images/pro1.jpg"
							alt="man suit">
							
						<div class="prod-trans">
							<div class="prod-feature">
								<p>Man special suit</p>
								
								<p style="color: #fff; font-weight: bold;">Price : $100</p>
								<form method="post" action="${pageContext.request.contextPath}/addCart">
						<input type="hidden" id="image" name="image" value="pro1.jpg">
						<input type="hidden" id="image" name="price" value="100">
						<input type="hidden" id="image" name="quantity" value="1">
								<input type = submit value="Add to cart">
								</form>
							</div>
						</div>
					
				</div>
				<!--second product-->
				<div class="prod-box">
					<img
						src="${pageContext.request.contextPath}/static/images/pro2.jpg"
						alt="man suit">
					<div class="prod-trans">
						<div class="prod-feature">
							<p>Man T-shirt</p>
							<p style="color: #fff; font-weight: bold;">Price : $39</p>
							<form method="post" action="${pageContext.request.contextPath}/addCart">
						<input type="hidden" id="image" name="image" value="pro2.jpg">
						<input type="hidden" id="image" name="price" value="39">
						<input type="hidden" id="image" name="quantity" value="1">
								<input type = submit value="Add to cart">
								</form>
						</div>
					</div>
				</div>
				<!--third product-->
				<div class="prod-box">
					<img
						src="${pageContext.request.contextPath}/static/images/pro3.jpg"
						alt="man suit">
					<div class="prod-trans">
						<div class="prod-feature">
							<p>Ladies sandal</p>
							<p style="color: #fff; font-weight: bold;">Price : $300</p>
							<form method="post" action="${pageContext.request.contextPath}/addCart">
						<input type="hidden" id="image" name="image" value="pro3.jpg">
						<input type="hidden" id="image" name="price" value="300">
						<input type="hidden" id="image" name="quantity" value="1">
								<input type = submit value="Add to cart">
								</form>
						</div>
					</div>
				</div>
				<!--fourth product-->
				<div class="prod-box">
					<img
						src="${pageContext.request.contextPath}/static/images/pro4.jpg"
						alt="man suit">
					<div class="prod-trans">
						<div class="prod-feature">
							<p>Ladies sandal 2</p>
							<p style="color: #fff; font-weight: bold;">Price : $230</p>
							<form method="post" action="${pageContext.request.contextPath}/addCart">
						<input type="hidden" id="image" name="image" value="pro4.jpg">
						<input type="hidden" id="image" name="price" value="230">
						<input type="hidden" id="image" name="quantity" value="1">
								<input type = submit value="Add to cart">
								</form>
						</div>
					</div>
				</div>
				<!--fifth product-->
				<div class="prod-box">
					<img
						src="${pageContext.request.contextPath}/static/images/pro5.jpg"
						alt="man suit">
					<div class="prod-trans">
						<div class="prod-feature">
							<p>Ladies hand bag</p>
							<p style="color: #fff; font-weight: bold;">Price : $200</p>
							<form method="post" action="${pageContext.request.contextPath}/addCart">
						<input type="hidden" id="image" name="image" value="pro5.jpg">
						<input type="hidden" id="image" name="price" value="200">
						<input type="hidden" id="image" name="quantity" value="1">
								<input type = submit value="Add to cart">
								</form>
						</div>
					</div>
				</div>
				<!--first product-->
				<div class="prod-box">
					<img
						src="${pageContext.request.contextPath}/static/images/pro6.jpg"
						alt="man suit">
					<div class="prod-trans">
						<div class="prod-feature">
							<p>Ladies white hand bag</p>
							<p style="color: #fff; font-weight: bold;">Price : $120</p>
							<form method="post" action="${pageContext.request.contextPath}/addCart">
						<input type="hidden" id="image" name="image" value="pro6.jpg">
						<input type="hidden" id="image" name="price" value="120">
						<input type="hidden" id="image" name="quantity" value="1">
								<input type = submit value="Add to cart">
								</form>
						</div>
					</div>
				</div>
				<!--first product-->
				<div class="prod-box">
					<img
						src="${pageContext.request.contextPath}/static/images/pro7.jpg"
						alt="man suit">
					<div class="prod-trans">
						<div class="prod-feature">
							<p>neckless</p>
							<p style="color: #fff; font-weight: bold;">Price : $10</p>
							<form method="post" action="${pageContext.request.contextPath}/addCart">
						<input type="hidden" id="image" name="image" value="pro7.jpg">
						<input type="hidden" id="image" name="price" value="10">
						<input type="hidden" id="image" name="quantity" value="1">
								<input type = submit value="Add to cart">
								</form>
						</div>
					</div>
				</div>
				<!--first product-->
				<div class="prod-box">
					<img
						src="${pageContext.request.contextPath}/static/images/pro8.jpg"
						alt="man suit">
					<div class="prod-trans">
						<div class="prod-feature">
							<p>Ladies blue pendent</p>
							<p style="color: #fff; font-weight: bold;">Price : $50</p>
							<form method="post" action="${pageContext.request.contextPath}/addCart">
						<input type="hidden" id="image" name="image" value="pro8.jpg">
						<input type="hidden" id="image" name="price" value="50">
						<input type="hidden" id="image" name="quantity" value="1">
								<input type = submit value="Add to cart">
								</form>
						</div>
					</div>
				</div>
				<!--first product-->
				<div class="prod-box">
					<img
						src="${pageContext.request.contextPath}/static/images/pro9.jpg"
						alt="man suit">
					<div class="prod-trans">
						<div class="prod-feature">
							<p>Indian ladies suit</p>
							<p style="color: #fff; font-weight: bold;">Price : $40</p>
							<form method="post" action="${pageContext.request.contextPath}/addCart">
						<input type="hidden" id="image" name="image" value="pro9.jpg">
						<input type="hidden" id="image" name="price" value="40">
						<input type="hidden" id="image" name="quantity" value="1">
								<input type = submit value="Add to cart">
								</form>
						</div>
					</div>
				</div>
				<!--first product-->
				<div class="prod-box">
					<img
						src="${pageContext.request.contextPath}/static/images/pro10.jpg"
						alt="man suit">
					<div class="prod-trans">
						<div class="prod-feature">
							<p>Ladies jacket</p>
							<p style="color: #fff; font-weight: bold;">Price : $1500</p>
							<form method="post" action="${pageContext.request.contextPath}/addCart">
						<input type="hidden" id="image" name="image" value="pro10.jpg">
						<input type="hidden" id="image" name="price" value="1500">
						<input type="hidden" id="image" name="quantity" value="1">
								<input type = submit value="Add to cart">
								</form>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div id="heading-block">
					<h2>Offer</h2>
				</div>
				<!--offer-boxes-->
				<div class="offer">
					<a href="#"><img
						src="${pageContext.request.contextPath}/static/images/offer1.JPG"></a>
				</div>
				<div class="offer">
					<a href="#"><img
						src="${pageContext.request.contextPath}/static/images/offer2.JPG"></a>
				</div>
				<div class="offer">
					<a href="#"><img
						src="${pageContext.request.contextPath}/static/images/offer3.JPG"></a>
				</div>
			</div>

		</div>
		<div id="footer">
			<div class="container">
				<div class="footer_sub">
					<h2>Our Story</h2>
					<p>
						this is my first e-commerce website design in html and css and
						also using bx-slider. this is my first e-commerce website design
						in html and css and also using bx-slider. this is my first
						e-commerce website design in html and css and also using
						bx-slider. this is my first e-commerce website design in html and
						css and also using <span><a href="#">Read more..</a></span>
					</p>
				</div>
				<div class="footer_sub_2">
					<center>
						<h2>Important Links</h2>
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#">New arrivals</a></li>
							<li><a href="#">Deals</a></li>
							<li><a href="#">Electronics</a></li>
							<li><a href="#">Accessories</a></li>
							<li><a href="#">Products</a></li>
							<li><a href="#">Order</a></li>
						</ul>
					</center>
				</div>
				<div class="footer_sub_2">
					<center>
						<h2>Social Links</h2>
						<ul>
							<li><a href="www.facebook.com">Facebook</a></li>
							<li><a href="#">Google+</a></li>
							<li><a href="#">Youtube</a></li>
							<li><a href="#">Twitter</a></li>
							<li><a href="#">Linkdin</a></li>
							<li><a href="#">Blogger</a></li>
							<li><a href="#">Digg</a></li>
						</ul>
					</center>
				</div>
				<div class="footer_sub_3">
					<center>
						<h2>Subscribe Us</h2>
						<input type="text" name="subs" placeholder="Write your e-mail"
							class="subs"> <input type="submit" name="submit_btn"
							value="Subscribe" class="sub_btn">
						<p class="sub_p">Enter your e-mail id for get notification by
							us.</p>
					</center>
				</div>
			</div>
		</div>

	</div>
	<script src="${pageContext.request.contextPath}/static/js/jquery.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/jquery.bxslider.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/my.js"></script>
</body>
</body>
</html>