<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE  html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<%@ page isELIgnored="false" %>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	
	
</head>
<body>
	<form:form action="/LabAssignMaven/management" modelAtribute="trainee" method="get">
	<div class="container">
		<h2 style="color:black" align=center><b>Trainee Information</b></h2>
	</div>
	<div class="container" >
		<table class="table table-bordered">
			<tr style="color:red">
				<th><b>Trainee ID</b></th>
				<th><b>Trainee Name</b></th>
				<th><b>Trainee Location</b></th>
				<th><b>Trainee Domain</b></th>
			</tr>
			
			<tr style="color:blue">
				<td>${trainee.id}</td>
				<td>${trainee.name}</td>
				<td>${trainee.location}</td>
				<td>${trainee.domain}</td>
			</tr>
			
		</table>
	</div>
	</form:form>
</body>
</html>