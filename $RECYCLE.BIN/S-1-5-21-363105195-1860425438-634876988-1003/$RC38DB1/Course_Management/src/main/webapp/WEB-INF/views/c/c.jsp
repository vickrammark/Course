
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
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
<script type="text/javascript" src="/app/hello.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>

</head>

<body onload="loadHtml('topics/what_is_c_language')">
	<div class="d-flex" id="wrapper">
		<!-- Sidebar-->
		<div class="border-end bg-white" id="sidebar-wrapper">
			<div class="sidebar-heading border-bottom bg-light">Course Site</div>
			<div class="list-group list-group-flush">

				<a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					onclick="loadHtml('topics/what_is_c_language')">What is C Language</a> <a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					onclick="loadHtml('topics/history_of_c')">History of C </a> <a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					onclick="loadHtml('topics/features_of_c')">Features of C</a> <a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					onclick="loadHtml('topics/install_c')">How to install C</a> <a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					onclick="loadHtml('topics/first_c_program')">First C Program</a> <a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					onclick="loadHtml('topics/compilation_process_in_c')">Compilation Process in C</a>
				<a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					onclick="loadHtml('topics/printf_scanf')">printf scanf</a> <a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					onclick="loadHtml('topics/variables_in_c')">Variables in C</a> <a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					onclick="loadHtml('topics/data_types_in_c')">Data Types in c</a> <a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					onclick="loadHtml('topics/keywords_in_c')">Keywords in c</a> 
			</div>
		</div>
		<!-- Page content wrapper-->
		<div id="page-content-wrapper">
			<!-- Top navigation-->
			<nav
				class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
				<div class="container-fluid">
					<button class="btn btn-primary" id="sidebarToggle">Toggle
						Menu</button>
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
				
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->

</body>

</html>

