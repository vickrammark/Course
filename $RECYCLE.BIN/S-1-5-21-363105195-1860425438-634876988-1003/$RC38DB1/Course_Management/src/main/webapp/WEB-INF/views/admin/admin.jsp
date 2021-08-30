<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Course Site</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="/app/custom.css">
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<script type="text/javascript" src="/app/hello.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</head>

<style>
body {
	background-image: url('app/bg-image-2.jpg');
	background-size: cover;
	color: white;
}
</style>

<body>
	<div class="d-flex" id="wrapper">

		<div id="page-content-wrapper">
			<nav
				class="navbar navbar-expand-lg navbar-light bg-transparent border-bottom">
				<div class="container-fluid">
					<a class="nav-link" href="/home">Course Site</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ms-auto mt-2 mt-lg-0">
							<li class="nav-item active"><a class="nav-link" href="/home">Home</a></li>
							<sec:authorize access="isAuthenticated()">
								<li class="nav-item"><a class="nav-link"
									href="/course_display">My learning</a></li>
							</sec:authorize>
							<sec:authorize access="hasRole('admin')">
								<li class="nav-item"><a class="nav-link" href="/admin">Admin
										room</a></li>
							</sec:authorize>
							<sec:authorize access="!isAuthenticated()">
								<li class="nav-item"><a class="nav-link" href="/login">login</a></li>
							</sec:authorize>
							<sec:authorize access="!isAuthenticated()">
								<li class="nav-item"><a class="nav-link" href="/signup">Sign
										Up</a></li>
							</sec:authorize>
							<sec:authorize access="isAuthenticated()">
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
									role="button" data-bs-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">more</a>
									<div class="dropdown-menu dropdown-menu-end"
										aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="/profile">profile</a> <a
											class="dropdown-item" href="/logout">logout</a>
									</div></li>
							</sec:authorize>
						</ul>
					</div>
				</div>
			</nav>
			<!-- Page content-->
			<div class="container-fluid p-5 col-lg-12 col-md-12 col-xs-12"
				id="pagecontent">
				<h1 style="text-align: center;">Course Details</h1>
				<hr>
				<div style="text-align: center;">
					<a class="btn btn-primary" href="/addCourse">Add Course</a>
				</div>
				<div class="contianer-fluid col-lg-12 m-1">
					<table class="table" style="color: white" >
					<caption></caption>
						<thead>
							<tr>
								<th scope="col">S.no</th>
								<th scope="col">Course name</th>
								<th scope="col">Course description</th>
								<th scope="col">Course status</th>
								<th scope="col">Update course</th>
								<th scope="col">Delete course</th>
								<th scope="col">Enrolled students list</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${courses}" var="course" varStatus="status">
								<tr>
									<th scope="row">${status.index+1}</th>
									<td>${course.getName()}</td>
									<td>${course.getDescription()}</td>
									<td>${course.getStatus()}</td>
									<td><a class="btn btn-success"
										href="/updatepage?course_id=${course.getId()}">Update
											Course</a></td>
									<td><a class="btn btn-danger"
										href="/deleteCourse?course_id=${course.getId()}">Delete
											Course</a></td>
									<td><a class="btn btn-primary" role="button"
										href="/student_list?course=${course.getId()}">Enrolled
											Students</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->


</body>
</html>