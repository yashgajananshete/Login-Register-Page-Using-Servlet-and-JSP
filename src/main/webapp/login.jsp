<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="log.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>

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

<body>
	<div class="mainn">
	<h1 class="heading">LogIn</h1>
		<form action="login_Form" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">Email address</label> <input
					type="email" name="loginMail" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					placeholder="name@example.com"> <small id="emailHelp"
					class="form-text text-muted">We'll never share your email
					with anyone else.</small>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Password</label> <input
					type="password" name="loginPass" class="form-control"
					id="exampleInputPassword1" placeholder="Password">
			</div>
			<br />
			<div class="d-grid gap-2">
					<button class="btn btn-success" type="Submit" value="Login">Login</button>
				</div>
		</form>
		<br />
		<form action="register.jsp" class="d-grid gap-2">
				<button class="btn btn-primary" type="submit" value="Register">Register</button>
			</form>
	</div>
</body>
</html>