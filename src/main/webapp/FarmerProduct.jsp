<%@page import="krushimart_application.dto.User"%>
<%@page import="krushimart_application.dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>

<link rel="stylesheet" type="text/css" href="NavBar.css">
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
	background-image: linear-gradient(#d9b38c, #ff9933);
	box-shadow: 0px 0px 50px black;
}

.ap {
	font-size: 17px;
	text-decoration: none;
	font-weight: bold;
	color: black;
}

.ap1 {
	height: 30px;
	width: 120px;
	border: 1px soli black;
	border-radius: 10px;
	margin-left: 200px;
	margin-top: 50px
}

.profile {
	background-image: linear-gradient(#c68a53, #d2a479, #d2a679, #dfbe9f);
	height: 50vh;
	width: 30%;
	margin-top: 2%;
	margin-left: 10%;
	border: 1px solid black;
	border-radius: 15px;
	padding: 3%;
	box-shadow: 0px 0px 50px black;
	backdrop-filter: blur(50px);
}

.heading {
	font-size: 45px;
	font-family: Bahnschrift SemiBold Condensed;
	font-weight: bold;
	color: black;
}

.pimg {
	border: none;
	height: 90px;
	width: 90px;
	border-radius: 100px;
}

p {
	margin-top: 7%;
	margin-left: 20%;
}

.upro {
	font-size: 20px;
	height: 2vh;
	width: 7%;
	margin-left: 25%;
	text-decoration: none;
	color: black;
	font-weight: bold;
}

body {
	background-image:
		url("https://wallpapers.com/images/hd/farm-background-7g34pob2h7kxj3mh.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
	/*height: 715px;
	width: 100%;*/
}

.headp {
	width: 100%;
	background-image: linear-gradient(to right, #cc9966, #ffe680, #d2ff4d, #ffff4d);
	height: 10vh;
	margin-top: 5%;
}
</style>



</head>
<body>
	<%
	User user = (User) session.getAttribute("user");
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
							style="border: none; background: transparent; margin-top: 25%; margin-left: 40%">
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

	<%
	String msg = (String) request.getAttribute("message");

	if (msg != null) {
	%>
	<h1>
		<%=msg%>

	</h1>
	<%
	}
	%>

	<div class="headp" style="height: 15vh">
		<p>
			<span> <img class="pimg" alt="profile"
				src="https://static.thenounproject.com/png/4130647-200.png">
			</span> <span class="heading" style="margin-top: 7%;"> <%=user.getFirstName()%>
				<%=user.getLastName()%>
			</span>
		</p>
	</div>
	<div class="profile">

		<div class="data" style="color: black;">
			<h4>
				Name :
				<%=user.getFirstName()%>
			</h4>
			<h4>
				Surname :
				<%=user.getLastName()%>
			</h4>
			<h4>
				Phone :
				<%=user.getPhone()%>
			</h4>
			<h4>
				Email :
				<%=user.getEmail()%>
			</h4>
			<h4>
				Address :
				<%=user.getAddress()%>
			</h4>
			<br> <a href="UpdateProfile.jsp" class="upro">Update Profile
			</a>

		</div>
	</div>
	<%
	if (user.getType().equals("Farmer")) {
	%>
	<div class="headp">
		<h1 class="heading" style="margin-left: 25%">All Products</h1>
	</div>
	<div class="mdiv">
		<%
		List<Product> list = (List) request.getAttribute("product");
		%>


		<%
		for (Product p : list) {
		%>

		<div class="sdiv">
			<div class="pro" style="color: black;">
				<b><%=p.getName()%></b> <br>Rs.<b> <%=p.getPrice()%></b> <br>
				Quantity :
				<%=p.getQuantity()%>
				<br>
				<%=p.getDescription()%>
				<br>

			</div>
			<br>
		</div>
		<br>
	</div>

	<%
	}
	}
	%>


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