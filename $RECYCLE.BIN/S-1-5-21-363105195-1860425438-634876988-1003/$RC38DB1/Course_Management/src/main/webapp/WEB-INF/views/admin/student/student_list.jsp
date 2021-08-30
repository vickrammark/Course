<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
			<div class="container-fluid p-5 col-lg-8 col-md-12 col-xs-12"
				id="pagecontent">
				<h1 style="text-align:center">Course Details</h1>
				<hr>
				<div class="container-fluid p-5">
					<h1 style="text-align: center">Students Enrolled in this course</h1>
					<hr>
					<div style="text-align: center" class="container-fluid">
						<table class="table">
						<caption></caption>
							<thead>
								<tr>
									<th scope="col">S.no</th>
									<th scope="col">Student name</th>
									<th scope="col">Student mail</th>
									<th scope="col">delete student</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${users}" var="user" varStatus="status">
									<tr>
										<th scope="row">${status.index+1}</th>
										<td>${user.getUsername()}</td>
										<td>${user.getEmail()}</td>
										<td><a class="btn btn-danger"
											href="/deleteStudent?user_id=${user.getId()}&course_id=${course.getId()}">Delete user</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>