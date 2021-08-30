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
	
<style type="text/css">
body {
	background-image:url('app/bg-image-2.jpg');
	background-size: cover;
	color:white;
}
</style>

</head>

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
		<div class="container-fluid p-5" id="pagecontent">
		<h1 style="text-align: center;">Login</h1>
		<hr>
			<div style="text-align: center;" class="container col-lg-6 col-md-12 col-xs-12">
			<div >${param.error!=null?'Bad credentials':''}</div>
				<form:form modelAttribute="user" method="post">
					<div class=" form-group m-2">
						Email :
						<form:input class="form-control" path="email" placeholder="Email" type="text" required="required"/>
					</div>
					<div class=" form-group m-2">
						passowrd :
						<form:input class="form-control"  path="password" placeholder="Password" required="required" type="password"/>
					</div>
					<div class=" form-group m-2">
						<input type="submit" class="btn btn-primary" value="submit" />
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>