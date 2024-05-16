<%@page import="krushimart_application.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
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
.mdiv{
margin-left: 10%;
margin-top: 10%;
height: 15%;
}

.fdiv{
	margin-top: -4%
}
input{
width: 70%;
height: 25px;
border: none;

background: transparent;
color: black;
}
.form{
align-content: center; 
border: 2px solid black;
 width: 40%;
 height:40vh;
 border-radius: 30px;
 border-color:grey;
 margin-left: 30%;
 padding-left: 100px;
backdrop-filter:blur(50px);
margin-top: 4%

}
.sign
{
	margin-left: 40%; 
	font-weight: bold; 
	margin-top: 5%; 
	font-family: Bookman Old Style; 
	color: black;
	
}
	
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

.profile
{
background-image:linear-gradient(#c68a53,#d2a479,#d2a679,#dfbe9f);
height: 50vh;
width: 30%;
margin-top: 2%;
margin-left: 10%;
border: 1px solid black;
border-radius: 15px;
padding: 3%;
box-shadow: 0px 0px 50px black;
backdrop-filter:blur(50px);

}
.heading{
font-size: 45px;
font-family: Bahnschrift SemiBold Condensed;
font-weight: bold;
color: black;

}
.pimg{
	border: none;
	height: 90px;
	width: 90px;
	border-radius: 100px; 
	
}
p{
	margin-top: 7%;
margin-left: 30%;
}


</style>
</head>
<body style=" background-image:url('https://t4.ftcdn.net/jpg/03/03/21/41/360_F_303214121_oNaiP4BcP65GOvcNIiieHlyelQBR3Rdh.jpg'); background-repeat: no-repeat;background-size: cover;">
<%
User user=(User)session.getAttribute("user");
%>
	<div class="nb" >
	<nav class="navbar" >
        <ul type="none" style="display: flex;">
        <li  class="km" ><span style="color: orange;">Krushi</span> <span style="color: #0d4706;">Mart</span></li>
			<a class="navmenue" href="index.html" > <li>Home</li></a>
		<%if(user.getType().equals("Farmer")){ %>
			<a class="navmenue" href="FarmerReg.jsp" > <li>Farmer</li></a>
			<%} %>
			<%if(user.getType().equals("Buyer")){ %>
			<a class="navmenue" href="BuyerReg.jsp" > <li>Buyer</li></a>
			<%} %>
			<li><form action="addProduct" method ="post"> <button class="navmenue" style="border: none; background: transparent; margin-top: 15%; margin-left: 35%" > Profile</button> </form></li>
					<a class="navmenue" href="UpdateProfile.jsp" > <li>Update</li></a>
			<%if(user.getType().equals("Farmer")){ %>
			<a class="navmenue" href="ProductPost.jsp" > <li>Add</li></a>	
			<%} %>		
		</ul>
    </nav>
</div>

 
<%String msg=(String) request.getAttribute("message");
	if (msg != null) {
	%>
	<h2 style="margin-top: 8% ; color: green;">
		<%=msg%></h2>
	<%
	}
	%>
	<br>

<div class="fdiv">
<div class="headp" style="height: 15vh">
		<p>
	<span>
	<img class="pimg" alt="profile" src="https://static.thenounproject.com/png/4130647-200.png" >
	</span> <span class="heading" style="margin-top: 7%;">  <%= user.getFirstName() %>  <%= user.getLastName() %> 
	</span>
	</p> </div>
<div  class="form" style="border-color: grey;" >
<form action="updateProfile" method ="post">
First Name: <input type="text" value="<%= user.getFirstName()%>" name="fname"> 
<br>
Last Name:  <input type="text" value="<%= user.getLastName()%>" name="lname"> 
<br>
Email :  <input type="text" value="<%= user.getEmail()%>" name="email"> 
<br>
Phone Number:  <input type="tel" value="<%= user.getPhone()%>" name="phone"> 
<br>
Address:  <input type="text" value="<%= user.getAddress()%>" name="address"> 

<input type="submit" name="login" value="Update" style="font-weight: bolder; font-size: 18px"> <br> <br> 
</form>
</div>
</div>
<br><br>
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