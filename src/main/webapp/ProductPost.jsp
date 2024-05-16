<%@page import="krushimart_application.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
<link rel="stylesheet" type="text/css" href="NavBar.css">
<link rel="stylesheet" type="text/css" href="ProductPost.css">
<link rel="stylesheet" type="text/css" href="RegistrationPage.css">


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
	background-image: linear-gradient( #e4f5e8,#e4f5e8 )!important;
	}

.navmenue {
	font-size: 25px;
	margin-left: 15%;
	font-family: Bahnschrift SemiBold Condensed;
	margin-top: 4%;
	font-weight: bold;
	color: black !important;
}
body{
	
	background-image: url("https://t3.ftcdn.net/jpg/05/66/44/50/360_F_566445063_ekPGmMmIPTuyne5jG1qQbFSWoovNFLnU.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
	/*height: 715px;
	width: 100%;*/
}
.formt{
width: 30%;
height: 60vh;
border: 1px solid grey;
box-shadow: 0px 0px 50px black;
border-radius: 50px;
padding-left:5%;
margin-left: 5%;
margin-top: 5%;
background-image:linear-gradient(#b2b266,#bbbb77);
}
.he1
{
margin-top:5%;
margin-left: 5%;
font-size: 50px;
font-family:Arial Rounded MT Bold;
font-weight: bolder;
color: #f2e6d9
}
</style>

</head>

<body>
<div class="nb" >
	<nav class="navbar" >
        <ul type="none" style="display: flex;">
        <li  class="km" ><span style="color: orange;">Krushi</span> <span style="color: #0d4706;">Mart</span></li>
			<a class="navmenue" href="Homepage.html" > <li>Home</li></a>
			<a class="navmenue" href="FarmerReg.jsp" > <li>Farmer</li></a>
			<li><form action="addProduct" method ="post"> <button class="navmenue" style="border: none; background: transparent; margin-top: 15%; margin-left: 35%" > Profile</button> </form></li>
			<a class="navmenue" href="UpdateProfile.jsp" > <li>Update</li></a>
			<a class="navmenue" href="ProductPost.jsp" > <li>Add</li></a>		
		</ul>
    </nav>
</div>
	<%
	User user = (User) session.getAttribute("user");
	%>
<h1 class="he1">Add Product</h1>
<div class="formt">
<br>
<form action="addProduct" method ="post">
<input placeholder="Product Name" type="text" name="pname" required="required" ><br><br>
<input placeholder="Quantity" type="text" name="quantity"><br><br>
<input placeholder="Price" type="text" name="price" required="required"><br><br>
<input placeholder="Description" type="text" name="discription" ><br><br><br><br>

<input type="submit" placeholder="Add" class="btn">
<input type="reset" placeholder="Cancel" class="btn">
</form>
</div>
<br><br><br>
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
					<small class="text-muted">© 2016-2023 KrishiMART - All Rights Reserved</small>
				</p>

			</div>
		</div>
		<div class="card">
			<div class="card-body">
				<h5 class="card-title">My Account</h5>
				<p><a href="BuyerLogin.jsp">Login</a> </p> 
				<p> <a href="#">All Products</a></p> 
				<p> <a href="#">My Wishlist</a> </p>
				  <p> <a href="#">Order History</a> </p> 

			</div>
		</div>
	</div>

</body>
</html>