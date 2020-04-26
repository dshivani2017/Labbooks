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
	<h3 style="color:Maroon; text-align: center"><b>Login</b></h3>
	<hr>
	<form:form action="loginCheck" class="form-horizontal" method="post" modelAttribute="login">
	<div class="form-group">
		<label for="Username" class="col-md-3 control-label" style="color:purple">Name</label>
		<div class="col-md-5">
			<form:input path="uname"  class="form-control" placeholder="Enter Name"/>
		</div>
	</div>
	<div class="form-group">
		<label for="Password" class="col-md-3 control-label" style="color:purple">Password</label>
		<div class="col-md-5">
			<form:input path="pass" type="password" class="form-control" placeholder="Enter Password"/>
		</div>
	</div>
	<div class="form-group">
		<div class="col-md-offset-3 col-md-9">
			<form:button class="btn btn-info">Submit</form:button>
		</div>
	</div>
	</form:form>
	</div>
</body>
</html>