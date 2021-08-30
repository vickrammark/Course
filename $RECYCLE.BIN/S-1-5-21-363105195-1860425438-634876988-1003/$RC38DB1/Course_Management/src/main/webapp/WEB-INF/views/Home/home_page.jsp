<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Course Site</title>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="/app/custom.css">
<script type="text/javascript" src="/app/hello.js"></script>
<style>
.con {
	position: relative;
	text-align: center;
	color: white;
}

.centered {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.col-sm-3 {
	background-color: white;
	box-shadow: 5px 5px;
	height: 40px;
	text-align: center;
}
body {
	background-image:url('app/bg-image-2.jpg');
	background-size: cover;
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
		<div class="container-fluid" id="pagecontent">

			<div class="jumbotron text-center">
				<h1>Welcome to Course Site</h1>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<h3>Learn by Exploring</h3>
						<p>Your Programming language education is never complete. Each
							language is uniquely designed not to compete with an already
							existing one, but to solve a problem that other language couldn't
							manage.</p>
					</div>
					<div class="col-sm-4">
						<h3>Learn to Code</h3>
						<p>From Solving problems to building website, the choice is
							yours. No matter your experience level, you'll be writing real,
							working code in minutes.</p>
					</div>
					<div class="col-sm-4">
						<h3>Learn by practicing</h3>
						<p>Apply your learning with real-world projects and learn
							everything you need to take your career to the next level.</p>
					</div>
				</div>
				<br>
				<hr>
				<div class="con">
					<img alt="no picture" src="/app/welcomepic.jpg" style="width: 100%;" height="300">
					<div class="centered">
						<h3>It's time to start learning</h3>
						<p>Because learning to code might be the easiest way to change
							your career.</p>
					</div>
				</div>
				<hr>
				<h3>Our Courses</h3>
				<br>
				<div class="row">
					<div class="col-sm-3  offset-1 bg-light text-dark">Python</div>
					<div class="col-sm-3  offset-1 bg-light text-dark">C++</div>
					<div class="col-sm-3  offset-1 bg-light text-dark">Java</div>
					<br> <br> <br>
					<div class="col-sm-3  offset-1 bg-light text-dark">MySQL</div>
					<div class="col-sm-3  offset-1 bg-light text-dark">C</div>
					<div class="col-sm-3  offset-1 bg-light text-dark">jQuery</div>
				</div>
				<div class="row">
					<hr>
				</div>
			</div>

		</div>
	</div>
	<!-- Bootstrap core JS-->
</body>
</html>