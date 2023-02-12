<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Book List</title>
<style type="text/css">
.tfont {
	font-size: 20px;
}
</style>
</head>
<body>
	<div class="container p-1 my-3 bg-warning text-white">
		<!-- <h1 style="text-align: center;">!   !</h1> -->
	</div>
	<div class="container p-1 my-3 bg-primary text-white">
		<h1 style="text-align: center;">GL College Fest</h1>
		<hr style="height: 5px; background-color: white;">
		<a class="btn btn-outline-warning btn-lg" href="showStudentForm">Add
			Student</a> <a class="btn btn-outline-warning btn-lg" href="list">List
			Student</a>
		<hr style="height: 5px; background-color: white;">
		
		<!-- Add a search form -->
		<%-- <nav class="navbar navbar-expand-sm bg-primary navbar-dark">
			<form class="form-inline" action="search">
				<input class="form-control mr-sm-2" type="text" placeholder="Title"
					name="title"> <input class="form-control mr-sm-2"
					type="text" placeholder="Author" name="author">
				<button class="btn btn-outline-warning btn-lg" type="submit">Search</button>
			</form>
		</nav> --%>
		
		
		<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
			<!-- Add Logout Button -->
			<form:form action="${pageContext.request.contextPath}/logout"
				method="POST">
				<input class="btn btn-outline-warning btn-lg" type="submit" value="logout">
			</form:form>
		</nav>

		<hr style="height: 5px; background-color: white;">
		<table class="table table-hover tfont">
			<thead>
				<tr>
					<th>S.No</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Course</th>
					<th>Country</th>
					<th>Action</th>
				</tr>
			</thead>
			<c:forEach var="student" items="${students}" varStatus="c">
				<tbody class="text-white">

					<tr>
						<td>${c.count}</td>
						<td>${student.firstName}</td>
						<td>${student.lastName}</td>
						<td>${student.course}</td>
						<td>${student.country}</td>


						<td>
							<!-- Add "update" button/link --> <a class="btn btn-info btn-sm"
							href="updateStudentForm?id=${student.id}">Update</a> <!-- Add "delete" button/link -->
							<a class="btn btn-danger btn-sm" href="delete?id=${student.id}"
							onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">Delete</a>
						</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>


</body>

</html>