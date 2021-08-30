<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

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
	color:white;
}
</style>

<body>
	<div class="d-flex" id="wrapper">

		<div id="page-content-wrapper">
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
			<div class="container-fluid  col-lg-12 col-md-12 col-xs-12"
				id="pagecontent">
				<div class="container-fluid col-lg-8 col-md-12 col-xs-12"
					style="text-align: center;">
					<h1 style="text-align: center;">Add Course</h1>
					<hr>
					<div
						style="display:${!ex_message.equals('')?'block':'none'};color:red">${ex_message}</div>
					<form:form action="/success_page" modelAttribute="course"
						enctype="multipart/form-data">

						<div class="form-group m-2">
							<label for="exampleInputEmail1">Course Name</label>
							<form:input cssClass="form-control" path="name"
								placeholder="Enter course name" required="required" />
						</div>
						<div class="form-group m-2">
							<label for="exampleInputPassword1">Course Description</label>
							<form:input cssClass="form-control" path="description"
								placeholder="Enter course description" required="required" />
						</div>
						<div class="form-group m-2">
							<label for="exampleInputPassword1">Course Status</label>
							<form:select path="status" required="required" class="form-control">
								<form:option value="Coming soon">Coming Soon</form:option>
								<form:option value="Get Started">Get Started</form:option>
							</form:select>
						</div>

						<div class="form-group m-2">
							<label for="exampleInputPassword1">Course logo</label> <input
								class="form-control" name="fileimage" type="file"
								placeholder="Upload the logo" required="required" />
						</div>

						<button type="submit" class="btn btn-primary m-2">Submit</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->


</body>
</html>