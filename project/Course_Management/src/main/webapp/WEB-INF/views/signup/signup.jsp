
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<style>
.error {
	color: red;
}
body {
	background-image: url('app/bg-image-2.jpg');
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
		<div class="container-fluid" id="pagecontent" >
			<div class="col-sm-6 col-sm-offset-3 m-auto">
				<div style="text-align: center" class="container">
					<h1 style="text-align: center">SignUp Form</h1>
					<hr>
					<div
						style="display:${!ex_message.equals('')?'block':'none'};color:red">
						${ex_message}</div>
					<form:form action="signup_success" modelAttribute="user"
						enctype="multipart/form-data" method="post">
						<div class="form-group">
							Username :
							<form:input path="username" class="form-control"
								placeholder="Username" required="required" />
							<p>
								<form:errors path="username" cssClass="error"/>
							</p>
						</div>
						<br>
						<div class="form-group">
							Email :
							<form:input path="email" class="form-control" placeholder="Email"
								type="email" required="required" />
							<p>
								<form:errors path="email" cssClass="error"/>
							</p>
						</div>
						<br>
						<div class="form-group">

							Password :
							<form:input path="password" class="form-control"
								placeholder="Password" type="password" required="required" />
							<p>
								<form:errors path="password" cssClass="error"/>
							</p>
						</div>
						<br>
						<div class="form-group">
							Choose a profile image: <input type="file" name="profile_image"
								class="form-control" required="required">
						</div>
						<br>
						<div class="form-group">
							<input type="submit" value="submit" class="btn btn-primary">
						</div>
					</form:form>
				</div>

			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->




</body>
</html>