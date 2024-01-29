<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddAdmin</title>
</head>
<body>
	<link rel="stylesheet" href="/css/addAdmin.css">
	<link rel="stylesheet" href="/css/main.css">
</head>
<body>
	<h1>Add Admin</h1>
	<div class="backDiv"><a href="AdminPanel.jsp">Back</a></div>
	<form action="addedAdmin" method="post">
		<div>
			<label for="Name">Name</label> <input type="text"
				placeholder="Enter your name" id="Name" name="Name">
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
			<button type="submit">Add Admin</button>
		</div>
	</form>
</body>
</html>