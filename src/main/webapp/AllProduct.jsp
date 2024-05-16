
<%@page import="krushimart_application.controller.AddProductController"%>
<%@page import="krushimart_application.dto.User"%>
<%@page import="krushimart_application.dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="krushimart_application.dto.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AllProduct</title>
<link rel="stylesheet" type="text/css" href="NavBar.css">
<link rel="stylesheet" type="text/css" href="Post.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
	integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
	crossorigin="anonymous"></script>


<style>
.nvname {
	color: black;
	font-size: 30px;
	margin-left: 100px;
	font-family: Bahnschrift SemiBold Condensed;
	text-decoration: none;
}

.navbar {
	height: 10vh;
	align-content: center;
	left: 0px;
	background-image: linear-gradient(#e4f5e8, #e4f5e8) !important;
}

.navmenue {
	font-size: 25px;
	margin-left: 15%;
	font-family: Bahnschrift SemiBold Condensed;
	margin-top: 4%;
	font-weight: bold;
	color: black !important;
}

.mdiv {
	margin-top: 5%;
}

.pro {
	width: 40%;
	height: auto;
	margin-left: 10%;
	border: 1px solid black;
	border-radius: 10px;
	padding: 30px;
	font-size: 25px;
	font-family: Times New Roman;
	backdrop-filter: blur(50px);
	background-image: linear-gradient(#fffad1, #f0ffd1);
}

.ap {
	text-decoration: none;
}

.ap1 {
	height: 6vh;
	width: 50%;
	border: 1px soli black;
	border-radius: 10px;
	margin-left: 10%;
	font-size: 20px;
	font-weight: bolder;
	color: black;
	margin-top: 5%;
	align-content: center;
}

body {
	background-image:
		url("https://media.istockphoto.com/id/1187320693/photo/the-farmer-holds-a-money-bag-on-the-background-of-plantations-lending-and-subsidizing-farmers.jpg?s=612x612&w=0&k=20&c=mpXsJO0x11Nro_AC6OdWXlfV9jYeiTOYKSMCZfFktco=");
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
	/*height: 715px;
	width: 100%;*/
}

.pro {
	border-radius: 20px;
	border: 2px solid black;
	box-shadow: 0px 0px 15px black;
	width: 400px;
	margin-left: 50px;
	transition-duration: 0.5s;
	background: transparent;
}

.pro:hover {
	box-shadow: 0px 0px 25px black;
}
</style>
</head>

<body>
	<%
	String msg = (String) request.getAttribute("message");
	User user = (User) session.getAttribute("user");
	if (msg != null) {
	%>
	<h1>
		<%=msg%>

	</h1>
	<%
	}
	%>

	<div class="nb">
		<nav class="navbar">
			<ul type="none" style="display: flex;">
				<li class="km"><span style="color: orange;">Krushi</span> <span
					style="color: #0d4706;">Mart</span></li>
				<a class="navmenue" href="index.html">
					<li>Home</li>
				</a>
				<%
				if (user.getType().equals("Farmer")) {
				%>
				<a class="navmenue" href="FarmerReg.jsp">
					<li>Farmer</li>
				</a>
				<%
				}
				%>
				<%
				if (user.getType().equals("Buyer")) {
				%>
				<a class="navmenue" href="BuyerReg.jsp">
					<li>Buyer</li>
				</a>
				<%
				}
				%>
				<li><form action="addProduct" method="post">
						<button class="navmenue"
							style="border: none; background: transparent; margin-top: 25%; margin-left: 45%">
							Profile</button>
					</form></li>
				<a class="navmenue" href="UpdateProfile.jsp">
					<li>Update</li>
				</a>
				<%
				if (user.getType().equals("Farmer")) {
				%>
				<a class="navmenue" href="ProductPost.jsp">
					<li>Add</li>
				</a>
				<%
				}
				%>
			</ul>
		</nav>
	</div>
	<h1>
		Welcome
		<%=user.getFirstName()%>
	</h1>


	<h1>Login Successful</h1>
	<div class="mdiv">
		<%
		List<Product> list = (List) request.getAttribute("product");
		%>


		<%
		for (Product p : list) {
		%>

		<div class="sdiv">
			<div class="pro">
				<b><%=p.getName()%></b> <br>Rs.<b> <%=p.getPrice()%></b> <br>
				Quantity :
				<%=p.getQuantity()%>
				<br>
				<%=p.getDescription()%>
				<br>
				<button class="ap1">Buy Product</button>

			</div>
			<br>
			<div></div>

		</div>


		<%
		}
		%>
		<br>

	</div>
	<br>
	<br>

	<div class="card-group">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title">Quick Links</h5>
				<p>
					<a href="index.jsp">Home</a>
				</p>
				<p>
					<a href="#">About Us</a>
				</p>
				<p>
					<a href="FarmerReg.jsp">Sell on Krushimart</a>
				</p>
				<p>
					<a href="#">Help</a>
				</p>
			</div>
		</div>
		<div class="card">
			<div class="card-body">
				<h5 class="card-title">Contacts</h5>
				<p>
					Address <br> Pune
				</p>
				<p>
					Contact <br> +91 76201 65532
				</p>

				<p>
					Email <br> info@krishimart.in
				</p>
				<p class="card-text">
					<small class="text-muted">© 2016-2023 KrishiMART - All
						Rights Reserved</small>
				</p>

			</div>
		</div>
		<div class="card">
			<div class="card-body">
				<h5 class="card-title">My Account</h5>
				<p>
					<a href="BuyerLogin.jsp">Login</a>
				</p>
				<p>
					<a href="#">All Products</a>
				</p>
				<p>
					<a href="#">My Wishlist</a>
				</p>
				<p>
					<a href="#">Order History</a>
				</p>

			</div>
		</div>
	</div>
</body>
</html>


