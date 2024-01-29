<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit/Show Data</title>
<link rel="stylesheet" href="/css/show.css">
<link rel="stylesheet" href="/css/main.css">
</head>
<body>
	<h1>Student Control</h1>
	<div class="backDiv"><a href="StudentPanel.jsp">Back</a></div>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>City</th>
			<th>Email</th>
			<th>Password</th>
			<th>Actions</th>
		</tr>

			<tr>
				<td>${ele3.id}</td>
				<td>${ele3.name }</td>
				<td>${ele3.city }</td>
				<td>${ele3.email }</td>
				<td>${ele3.password }</td>
				<td><a href="<c:url value='/edit/user/${ele3.id }'/>">&#9998;</a></td>
			</tr>
	</table>
</body>
</html>