<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE  html>
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
	<div class="container">
	<h3>Login</h3>
	<hr>
	<form:form action="loginCheck" class="form-horizontal" method="get">
	<div class="form-group">
		<label class="col-md-3 control-label">Name</label>
		<div class="col-md-5">
			<input class="form-control" type="text" name="uname"/>
		</div>
	</div>
	<div class="form-group">
		<label class="col-md-3 control-label">Password</label>
		<div class="col-md-5">
			<input type="password" class="form-control" name="pass"/>
		</div>
	</div>
	<div class="form-group">
		<div class="col-md-offset-3 col-md-9">
			<input type="submit" value="Login">
		</div>
	</div>
	</form:form>
	</div>
</body>
</html>