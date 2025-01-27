<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Job Portal</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="style1.css">
	<style>
		body {
			background-color: #f0f2f5;
			font-family: 'Poppins', sans-serif;
		}

		.navbar {
			background: linear-gradient(to right, #ff9966, #ff5e62);
		}

		.navbar-brand {
			font-size: 2rem;
			font-weight: bold;
			color: #fff;
		}

		.nav-link {
			color: #fff;
			font-weight: 500;
		}

		.card {
			border: none;
			border-radius: 15px;
			box-shadow: 0 4px 8px rgba(0,0,0,0.1);
			transition: transform 0.3s ease-in-out;
		}

		.card:hover {
			transform: scale(1.05);
		}

		.card-title {
			font-size: 1.5rem;
			font-weight: bold;
			color: #333;
		}

		.btn-primary {
			background: linear-gradient(to right, #ff9966, #ff5e62);
			border: none;
			font-weight: bold;
			border-radius: 50px;
			padding: 10px 25px;
		}

		.btn-primary:hover {
			background: linear-gradient(to right, #ff5e62, #ff9966);
		}
	</style>
</head>
<body>
<nav class="navbar navbar-expand-lg">
	<div class="container">
		<a class="navbar-brand" href="#">Job Portal Web App</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ms-auto">
				<li class="nav-item"><a class="nav-link" href="home">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
				<li class="nav-item"><a class="nav-link" href="https://telusko.com/">Contact</a></li>
			</ul>
		</div>
	</div>
</nav>

<div class="container mt-5">
	<div class="row justify-content-center">
		<div class="col-md-6 mb-4">
			<div class="card text-center bg-light">
				<div class="card-body">
					<h5 class="card-title">View All Jobs</h5>
					<form action="/viewalljobs" method="get">
						<button type="submit" class="btn btn-primary">View Jobs</button>
					</form>
				</div>
			</div>
		</div>

		<div class="col-md-6 mb-4">
			<div class="card text-center bg-light">
				<div class="card-body">
					<h5 class="card-title">Add Job</h5>
					<form action="/addjob" method="get">
						<button type="submit" class="btn btn-primary">Add Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>