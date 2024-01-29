<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch Data</title>
<link rel="stylesheet" href="/css/show.css">
<link rel="stylesheet" href="/css/main.css">
</head>
<body>
<h1>Student Information</h1>
<div class="backDiv"><a href="AdminPanel.jsp">Back</a></div>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>City</th>
			<th>Email</th>
			<th>Password</th>
			<th>Actions</th>
		</tr>
		<c:forEach var="ele" items="${ele_data }">

			<tr>
				<td>${ele.id}</td>
				<td>${ele.name }</td>
				<td>${ele.city }</td>
				<td>${ele.email }</td>
				<td>${ele.password }</td>
				<td><a href="<c:url value='/edit/${ele.id }'/>">&#9998;</a> <a
					href="<c:url value='/${ele.id }'/>">&#10060;</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>