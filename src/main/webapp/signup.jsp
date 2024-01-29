<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/main.css">
</head>
<body>
	<h1>Sign Up</h1>
	<div class="backDiv"><a href="Home.jsp">Back</a></div>
	<form action="added" method="post">
		<div>
			<label for="Name">Name</label> <input type="text"
				placeholder="Enter your name" id="Name" name="Name">
		</div>
		<div>
			<label for="city">City</label> <input type="text"
				placeholder="Enter your city" id="city" name="city">
		</div>
		<div>
			<label for="email">Email</label> <input type="text"
				placeholder="Enter your email" id="email" name="email">
		</div>
		<div>
			<label for="password">Password</label> <input type="text"
				placeholder="Enter password" id="password" name="password">
		</div>
		<div>
			<button type="submit">Sign Up</button>
		</div>
	</form>
</body>
</html>