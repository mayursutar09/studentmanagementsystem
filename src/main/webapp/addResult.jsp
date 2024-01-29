<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Result</title>
<link rel="stylesheet" href="/css/addResult.css">
<link rel="stylesheet" href="/css/main.css">
</head>
<body>
	<h1>Add Result</h1>
	<div class="backDiv"><a href="AdminPanel.jsp">Back</a></div>
	<form action="addedResult" method="post">
		<div>
			<label for="sub1">sub1</label> <input type="number" id="sub1"
				name="sub1">
		</div>
		<div>
			<label for="sub2">sub2</label> <input type="number" id="sub2"
				name="sub2">
		</div>
		<div>
			<label for="sub3">sub3</label> <input type="number" id="sub3"
				name="sub3">
		</div>
		<div>
			<label for="sub4">sub4</label> <input type="number" id="sub4"
				name="sub4">
		</div>
		<div>
			<label for="sub5">sub5</label> <input type="number" id="sub5"
				name="sub5">
		</div>
		<div>
			<label for="remark">Remark</label> <input type="text" id="remark"
				name="remark">
		</div>
		<div>
			<label for="studentData">studentID</label> <input type="number" id="studentData"
				name="studentData">
		</div>
		<div>
			<button type="submit">Add Result</button>
		</div>
	</form>
</body>
</html>