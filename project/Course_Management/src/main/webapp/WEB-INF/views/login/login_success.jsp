
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script type="text/javascript" src="/app/dynamic_loading.js"></script>
<title>Course Site</title>
<!-- Our Custom CSS -->
<link rel="stylesheet" href="/app/custom.css">
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>

</head>
<style type="text/css">
body {
	background-image:url('app/bg-image-2.jpg');
	background-size: cover;
	color: white;
}
</style>

<body>

	<div id="page-content-wrapper">
		<!-- Top navigation-->
		<nav
			class="navbar navbar-expand-lg navbar-light bg-transparent border-bottom">
			<div class="container-fluid">
				<a href="/home" class="nav-link">Course Site</a>
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
		<div class="container-fluid m-auto" id="pagecontent" style="text-align: center;">
			<div class="col-sm-6 col-sm-offset-3 m-auto">
				<br> <br>
				<h2>Hello ${user.getUsername()}</h2>
				<img alt="no picture" src="/profile/${user.getId()}/${user.getProfile()}" style="width:250px;height:250px;border-radius:200px">
				<h3>Welcome Back</h3>
				<p style="font-size: 20px;"> You have been succesfully logged in!!</p>
				<a href="/home" class="btn btn-primary">Go Home</a>&nbsp;
				<a href="/course_display" class="btn btn-success">My learning</a>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->

</body>

</html>

