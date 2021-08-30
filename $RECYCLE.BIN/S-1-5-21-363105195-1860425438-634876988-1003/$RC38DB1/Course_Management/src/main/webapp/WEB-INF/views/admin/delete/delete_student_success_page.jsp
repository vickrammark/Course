<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Course Site</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script type="text/javascript" src="/app/dynamic_loading.js"></script>
<!-- Our Custom CSS -->
<link rel="stylesheet" href="/app/custom.css">
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>

</head>
<style>
body {
	background-image: url('app/bg-image-2.jpg');
	background-size: cover;
	color:white
}
</style>

<body>

	<!-- Page content wrapper-->
	<div id="page-content-wrapper">
		<!-- Top navigation-->
		<nav
			class="navbar navbar-expand-lg navbar-light bg-transparent border-bottom">
			<div class="container-fluid">
				<a class="nav-link" href="/home" role="button">Course Site</a>
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
		<div class="container-fluid" id="pagecontent">
			<div class="container-fluid">
				<div class="container-fluid m-auto" style="text-align: center;">

					<div class="col-sm-6 col-sm-offset-3 m-auto">
						<br> <br>
						<h2 >Success</h2>
						<img src="/profile/${user.getId()}/${user.getProfile()}"
							alt="no picture" style="border-radius:250px;height:250px;width:250px" >
						<h3>Hey!!</h3>
						<p style="font-size: 20px;">The user
							${user.getUsername()} has been successfully deleted from the
							course ${course.getName()}!!</p>
						<a href="/admin" class="btn btn-success">Go Back</a> <br>
					</div>
				</div>
			</div>
		</div>


	</div>

</body>
</html>
d
