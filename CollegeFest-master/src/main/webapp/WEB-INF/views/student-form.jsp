<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <title>Book Form</title>
  
</head>

<body>
  <div class="container p-1 my-3 bg-warning text-white">
    <!-- <h1 style="text-align:center ;">!   !</h1> -->
  </div>
  <div class="container p-3 my-3 bg-primary ">
   <h3 style="text-align: center;"> GL College Fest !!!</h3>
      <hr style="height: 5px; background-color: white;">
    <div class="card">
      <div class="card-header">
        <h4>Add Students</h4>
      </div>
      <div class="card-body">
        <form action="saveStudent">
          <!-- Add hidden form field to handle update -->
          <div class="form-group">
            <input type="hidden" class="form-control" placeholder="ID" value="${student.id}" name="id">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" placeholder="First Name" value="${student.firstName}" name="firstName">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Last Name" value="${student.lastName}" name="lastName">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Course" value="${student.course}" name="course">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Country" value="${student.country}" name="country">
          </div>
          <button type="submit" class="btn btn-outline-warning btn-lg">Submit</button>
        </form>
      </div>
      <div class="card-footer"><a class="btn btn-outline-warning btn-lg" href="list">Back To Student List
           </a></div>
    </div>
  </div>
</body>
 