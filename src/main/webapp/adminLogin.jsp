<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/login.css">
</head>
<body>
	<h1>Admin Sign In</h1>
	<div class="backDiv"><a href="Home.jsp">Back</a></div>
	<form action="AdminAuth" method="post">
		<div>
			<label for="email">Email</label> <input type="text"
				placeholder="Enter your email" id="email" name="email">
		</div>
		<div>
			<label for="password">Password</label> <input type="text"
				placeholder="Enter password" id="password" name="password">
		</div>
		<div>
			<button type="submit">Sign In</button>
		</div>
	</form>
</body>
</html>