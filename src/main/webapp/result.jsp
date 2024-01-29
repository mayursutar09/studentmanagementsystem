<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/result.css">

</head>
<body>
	<h1>Result</h1>
	<div class="backDiv"><a href="StudentPanel.jsp">Back</a></div>
	<div id="mainContainer">
		<div>ID:<span> ${ele2.id }</span></div>
		<div>Name:<span> ${ele2.name }</span></div>
		<div>email:<span> ${ele2.email }</span></div>
		<div>City:<span> ${ele2.city }</span></div>
		<div>Sub1 Marks:<span> ${ad1.sub1 }</span></div>
		<div>Sub2 Marks:<span> ${ad1.sub2 }</span></div>
		<div>Sub3 Marks:<span> ${ad1.sub3 }</span></div>
		<div>Sub4 Marks:<span> ${ad1.sub4 }</span></div>
		<div>Sub5 Marks:<span> ${ad1.sub5 }</span></div>
		<div>Percentage:<span> ${ad1.percentage }</span></div>
		<div>Remark:<span> ${ad1.remark }</span></div>
		<div>Result:<span> ${ad1.result }</span></div>
	</div>
</body>
</html>