
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
				<h1>User Login Page</h1>
				<form:form
					action="${pageContext.request.contextPath}/authenticateTheUser"
					method="POST" modelAttribute="">
					<!-- error message -->
					<c:if test="${param.error!=null}">
						<div class="alert alert-danger col-xs-offset-1 col-xs-10">
							Invalid UserName Or Password.</div>
					</c:if>
					<!-- Logout Message -->
					<c:if test="${param.logout}=='logout'">
						<div class="alert alert-danger col-xs-offset-1 col-xs-10">You
							Have been logout</div>
					</c:if>
					<!-- User name -->
					<div style="margin-bottom: 25px" class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span> <input type="text"
							name="username" placeholder="username" class="form-control">
					</div>

					<!-- Password -->
					<div style="margin-bottom: 25px" class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-lock"></i></span> <input type="password"
							name="password" placeholder="password" class="form-control">
					</div>

					<!-- Login/Submit Button -->
					<div style="margin-top: 10px" class="form-group">
						<div class="col-sm-6 controls">
							<button type="submit" class="btn btn-success">Login</button>
						</div>
					</div>
					<div class="form-group">
						<span>New user? <a href="${pageContext.request.contextPath}/registration">Register here</a></span>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>