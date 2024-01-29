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
	<h1>Edit Admin</h1>
	<div class="backDiv"><a href="back">Back</a></div>
	<form action="admin/update/${id }" method="post">
		<div>
			<label for="Name">Name</label> <input type="text"
				placeholder="Enter your name" id="Name" name="Name" value="${ele.name }">
		</div>
		<div>
			<label for="city">Email</label> <input type="text"
				placeholder="Enter your email" id="email" name="email" value="${ele.email }">
		</div>
		<div>
			<label for="password">Password</label> <input type="text"
				placeholder="Enter password" id="password" name="password" value="${ele.password }">
		</div>
		<div>
			<button type="submit">Edit</button>
		</div>
	</form>
</body>
</html>