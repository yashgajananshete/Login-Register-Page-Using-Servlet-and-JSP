<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet" href="reg.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<style>
body {
	margin: 0;
	padding: 0;
	background-image:
		url('https://cdn.wallpapersafari.com/61/28/GLDMlC.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
	
}
</style>
</head>
<body>
	<div class="bgs">
		<div class="mainn">
			<form action="registration_form" method="post">

				<h1 class="heading">Sign Up</h1>
				<div class="mb-3">
					<input type="text" class="form-control" id="exampleInputEmail1"
						name="name" aria-describedby="emailHelp" placeholder="Enter Full Name" required>
				</div>



				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="floatingInput"
						name="email" placeholder="name@example.com" required> <label
						for="floatingInput">Email address</label>
				</div>
				<div class="form-floating">
					<input type="password" class="form-control" id="floatingPassword"
						name="pass" placeholder="Password" required> <label
						for="floatingPassword" >Password</label>
				</div>

				<div class="genderCheck">
					<div class="form-check">
						<input class="form-check-input" type="radio" name="gender"
							id="exampleRadios1" value="male" required> <label
							class="form-check-label" for="exampleRadios1"> Male &nbsp
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="gender"
							id="exampleRadios2" value="female" required> <label
							class="form-check-label" for="exampleRadios2"> Female
							&nbsp </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="gender"
							id="exampleRadios3" value="other" required> <label
							class="form-check-label" for="exampleRadios3"> Other </label>
					</div>
				</div>


				<br />
				<div class="mb-3">
					<select class="form-select" id="citySelect" name="city" required>
						<option selected>Select City</option>
						<option>Amravati</option>
						<option>Pune</option>
						<option>Delhi</option>
						<option>Bangalore</option>
						<option>Wadala</option>
					</select>
				</div>


				<br />
				<div class="d-grid gap-2">
					<button class="btn btn-success" type="Submit" value="Submit">Submit</button>
				</div>

			</form>

			<form action="login.jsp" class="d-grid gap-2" id="loginButton">
				<button class="btn btn-primary" type="submit" value="Login">Login</button>
			</form>

		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>