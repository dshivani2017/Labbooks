<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enter New Product</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<div>
<div class="panel panel-default">
<div class="panel-heading">
<br>
<div class="panel-title"><b><h1>Shivani Diwakar</h1><br><h4> Add Product </h4></b></div>

</div>
<div class="panel-body">
<div class="jumbotron bg-danger">
<form action="/addProduct" class="form-horizontal">
<div class="form-group">
<label for="id">ID</label>
<div class="col-md-5">
<input type="text" name="id" class="form-control"><br><br>
</div>
</div>

<div class="form-group">
<label for="name">Name</label>
<div class="col-md-5">
<input type="text" name="name" class="form-control"><br><br>
</div>
</div>

<div class="form-group">
<label for="price">Price</label>
<div class="col-md-5">
<input type="text" name="price" class="form-control"><br><br></div>
</div>

<div class="form-group">
<div>
<input type="submit" value="Add Product" class="btn btn-warning">
</div>
</div>
</form>
</div>
</div>
</div>
</div>

</div>
</body>
</html>