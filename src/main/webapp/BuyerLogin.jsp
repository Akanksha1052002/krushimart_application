<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
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

<style type="text/css">
fieldset {
	height: 90vh;
	width: 90%;
	box-shadow: 0px 0px 20px black;
	border-radius: 10px;
	margin-left: 15%;
	padding-top: 10%;
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
	width: 35%;
	height: 20vh;
	margin-top: 5%;
	padding-left: 2%;
	border-radius: 10px;
	margin-left: 25%;
}

* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}

.fpass {
	margin-left: 50%
}

.box {
	border: none;
	border-bottom: 1px solid black;
	width: 65%;
	text-align: center;
	height: 5%;
	background-color: transparent;
	margin-left: 15%;
}

.loginb {
	transition-delay: 1sec;
	height: 5%;
	width: 20%;
	border-radius: 10px;
	color: black;
	background-color: whitesmoke;
	font-size: 15px;
	margin-left: 40%;
	margin-top: 2%;
}

.loginb:hover {
	height: 40px;
	width: 100px;
	background: repeating-linear-gradient(#aaafb3, #c0c3c4, #c5ced4);
}

.lable {
	margin-left: 10px;
}

.lg {
	color: #296e1f;
	padding-left: 45%;
	padding-top: 5%;
	font-size: 50px;
	font-family: Arial Rounded MT Bold;
	text-shadow: 0px 0px 20px ghostwhite;
	font-weight: bolder;
}

.signup {
	border-radius: 10px;
	height: 30px;
	width: 100px;
	margin-left: 90px;
	margin-top: 20px;
}

.signup:hover {
	background: repeating-linear-gradient(#aaafb3, #c0c3c4, #c5ced4);
	height: 40px;
	width: 120px;
}

.cacc {
	margin-left: 30%;
	color: red;
	font-size: 20px;
}

p {
	margin-left: 20%;
}

body {
	background-image:
		url('https://img.freepik.com/free-vector/green-curve-frame-template-vector_53876-144370.jpg');
	background-repeat: no-repeat;
	background-size: cover;
}
</style>

</head>
<body>
	<div class="nb">
		<nav class="navbar">
			<ul type="none" style="display: flex;">
				<li class="km"><span style="color: orange;">Krushi</span> <span
					style="color: #0d4706;">Mart</span></li>
				<a class="navmenue" href="index.html">
					<li>Home</li>
				</a>
				<a class="navmenue" href="FarmerReg.jsp">
					<li>Farmer</li>
				</a>
				<a class="navmenue" href="BuyerReg.jsp">
					<li>Buyer</li>
				</a>
				<a class="navmenue" href="">
					<li>About</li>
				</a>
				<a class="navmenue" href="">
					<li>Contact</li>
				</a>
			</ul>
		</nav>
	</div>
	<%
	String msg = (String) request.getAttribute("message");
	if (msg != null) {
	%>
	<h2>
		<%=msg%></h2>
	<%
	}
	%>
	<div class="mdiv">
		<div class="login">

			<form action="farmerlogin" method="post">
				<h1 class="lg">Login</h1>

				<fieldset>

					<br> <br> <input type="text" name="email" class="box"
						placeholder="Enter email"> <br> <br> <br> <input
						type="Password" name="password" class="box"
						placeholder=" Enter Password"> <br> <br> <a
						href="" class="fpass">Forgot Password?</a> <br> <br> <input
						type="submit" name="login" value="Login" class="loginb"
						onclick="submite"> <br> <br>
					<br>
					<p>--------Don't have account yet?-------</p>
					<a href="BuyerReg.jsp" class="cacc">Create an account</a> <br>
					<br>
				</fieldset>

			</form>
		</div>
	</div>

	<br>
	<br>
	<br>

	<div class="card-group" style="margin-top: 45%">
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