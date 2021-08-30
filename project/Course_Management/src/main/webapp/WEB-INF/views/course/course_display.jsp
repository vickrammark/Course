<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/app/custom.css">
<script type="text/javascript" src="/app/hello.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
<title>Course Site</title>
</head>
<style>
body {
	background-image: url('app/bg-image-2.jpg');
	background-size: cover;
}
</style>
<body>
	<div id="page-content-wrapper">
		<!-- Top navigation-->
		<nav
			class="navbar navbar-expand-lg navbar-light bg-transparent border-bottom">
			<div class="container-fluid">
				<a class="nav-link" href="/home" >Course Site</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse ml-2"
					id="navbarSupportedContent">
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
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
							role="button" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">more</a>
							<div class="dropdown-menu dropdown-menu-end"
								aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="/profile">profile</a> <a
									class="dropdown-item" href="/logout">logout</a>
							</div></li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- Page content-->
		<div class="container-fluid cards" id="pagecontent">
			<div class="container p-2" style="text-align: center;">
				<h1 style="color: white">Courses</h1>
				<hr>
			</div>
			<c:forEach items="${all_course}" var="course" varStatus="status">
				<div class="card p-2 m-2" style="width: 250px">
					<img class="card-img-top" src="/images/${course.getId()}/${course.getImage()}"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">${course.getName()}</h5>
						<p class="card-text">${course.getDescription()}</p>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">${course.getStatus()}</li>
					</ul>
					<div class="card-body">
						<c:if test="${course.getStatus().equals('Get Started')}">
							<a role="button" class="btn btn-primary"
								href="/course/${course_enrolled.contains(course.getName())?'course_page':'success_page'}/${course.getName()}/${course_enrolled.contains(course.getName())?'go_to_course':'enroll'}">
								${course_enrolled.contains(course.getName())?"Go to Course":"Enroll now"}
							</a>
						</c:if>
						<c:if test="${course.getStatus().equals('Coming soon')}">
							<a role="button" class="btn btn-success" href="#"> coming
								soon </a>
						</c:if>

					</div>
				</div>
			</c:forEach>
		</div>
	</div>


</body>
</html>