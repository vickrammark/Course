<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Course Site</title>
</head>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="/app/custom.css">
<script type="text/javascript" src="/app/hello.js"></script>
<style>
body {
	background-image: url('app/bg-image-2.jpg');
	background-size: cover;
	color:white;
}
</style>

<body>
	<div id="page-content-wrapper">
		<!-- Top navigation-->
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
		<div class="container-fluid m-auto" id="pagecontent"
			style="text-align: center">
			<div class=" col-lg-6 m-auto col-md-12 col-xs-12 p-5">
				<div style="text-align: center;">

					<div class="alert alert-warn"
						style="display: ${password_updated?'block':'none'}">${password_updated_or_not?'Password updated succesfully!!':'invalid password provided!!'}</div>
					<div class="alert alert-danger"
						style="display: ${!password_status.equals('')?'block':'none'}">${password_status}</div>
				</div>
				<h1 style="text-align: center;" class="m-2">Password Change</h1>
				<div style="text-align: center;" class="form-group m-2 p-5">
					<form action="/password_change" method="post">
						<div class="form-group m-2">
							old password : <input name="old_password" class="form-control">
						</div>
						<div class="form-group m-2">
							New Password : <input name="new_password" class="form-control">
						</div>
						<div class="from-group m-2">
							<input value="submit" type="submit" class="btn btn-primary">
							<a class="btn btn-danger" href="/profile" role="button">Go
								back</a>
						</div>
						<div>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal -->

</body>
</html>
