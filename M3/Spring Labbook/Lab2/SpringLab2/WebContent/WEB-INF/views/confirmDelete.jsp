<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Spring MVC 5 form-handling</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquerry/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form:form action="deleteFromDB/${trainee.id }" modelAttribute="trainee" method="get">
	<div class="container">
	<h3 style="color:black" align=center><b>Confirm Delete</b></h3>
	</div>
	<div class="container">
	
		<table class="table table-bordered" style="text-align: center; ">
			<tr style="color:red">
				<th><b>Trainee ID</b></th>
				<th><b>Trainee Name</b></th>
				<th><b>Trainee Location</b></th>
				<th><b>Trainee Domain</b></th>
			</tr>
			<tr style="color:blue" >
				<td>${trainee.id}</td>
				<td>${trainee.name}</td>
				<td>${trainee.location}</td>
				<td>${trainee.domain}</td>
			</tr>
		</table>
		<input type="submit" class="btn-btn-warning" value="Delete"/>
		</div>
	</form:form>
	
</body>
</html>