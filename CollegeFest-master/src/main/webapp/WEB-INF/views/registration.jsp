<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Registration Form</title>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle Navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-bran" href="#">Registration and Login Module </a>
			</div>
		</div>
	</nav>
	<br>
	<br>
	<br>
	<br>
	<!-- Create HTML Registration here -->
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<!--  success message -->
				<c:if test="${param.success=='sucess'}">
					<div class="alert alert-info">You have successfully
						registered to our college Fest APP</div>
				</c:if>
				<hr>
				<h1>Registration</h1>
				<form:form action="/registration" method="post"
					modelAttribute="user">
					<div class="form-group">
						<label for="firsrtName">First Name</label>
						<form:input path="firstName" class="form-control"
							cssClass="required" required="required" />
					</div>
					<div class="form-group">
						<label for="lastName">Last Name</label>
						<form:input path="lastName" class="form-control"
							cssClass="required" required="required" />
					</div>
					<div class="form-group">
						<label for="email">Email</label>
						<form:input path="email" class="form-control" cssClass="required"
							required="required" />
					</div>

					<div class="form-group">
						<label for="password">Password</label>
						<form:input path="password" class="form-control"
							cssClass="required" required="required" />
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-success">Register</button>
						<span>Already Registered?<a href="login">Login Here</a></span>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>