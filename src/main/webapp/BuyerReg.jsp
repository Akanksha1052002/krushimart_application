<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
<link rel="stylesheet" type="text/css" href="RegistrationPage.css">
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

.fdiv {
	margin-top: 100px;
	z-index: -20px;
}
</style>




</head>
<body
	style="background-image: url('https://t4.ftcdn.net/jpg/03/03/21/41/360_F_303214121_oNaiP4BcP65GOvcNIiieHlyelQBR3Rdh.jpg'); background-repeat: no-repeat; background-size: cover;">

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
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<h4 style="margin-top: 5%; font-weight: bold; color: red;">
		<%=message%>
	</h4>
	<%
	}
	%>


	<div class="fdiv">
		<h1 class="sign">Sign Up</h1>
		<div class="form" style="border-color: grey;">
			<form action="buyerReg" method="post">
				<br>
				<br> <input placeholder="First Name" type="text" name="fname"
					required="required"><br>
				<br> <input placeholder="Surname" type="text" name="lname"><br>
				<br> <input placeholder="Email" type="text" name="email"
					required="required"><br>
				<br> <input placeholder="Phone Number" type="tel" name="phone"
					required="required"><br>
				<br> <input placeholder="Address" type="text" name="address"><br>
				<br> <input placeholder="Password" type="text" name="password"
					id=""> <br>
				<br> <a href="BuyerLogin.jsp" class="flog"> Already
					Registered?</a><br>
				<br>
				<button>Submit</button>
				<br>
				<br>
				<br>

			</form>
		</div>
	</div>
	<br>
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