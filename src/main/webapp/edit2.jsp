<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/main.css">
</head>
<body>
	<h1>Edit Student</h1>
	<div class="backDiv"><a href="back">Back</a></div>
	<form action="update/${id }" method="post">
		<div>
			<label for="Name">Name</label> <input type="text"
				placeholder="Enter your name" id="Name" name="Name" value="${ele1.name }">
		</div>
		<div>
			<label for="city">City</label> <input type="text"
				placeholder="Enter your city" id="city" name="city" value="${ele1.city }">
		</div>
		<div>
			<label for="city">Email</label> <input type="text"
				placeholder="Enter your email" id="email" name="email" value="${ele1.email }">
		</div>
		<div>
			<label for="password">Password</label> <input type="text"
				placeholder="Enter password" id="password" name="password" value="${ele1.password }">
		</div>
		<div>
			<button type="submit">Edit</button>
		</div>
	</form>
</body>
</html>