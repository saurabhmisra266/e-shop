<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Account</title>
<link href="${pageContext.request.contextPath}/static/CSS/sign-up.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<form method="post"
		action="${pageContext.request.contextPath}/accountCreated">
		<div id="signup-box">
			<div class="left box">
				<h1>Sign Up</h1>
				<input type="text" name="username" placeholder="Username" /> <input
					type="text" name="name" placeholder="Name" /> <input type="text"
					name="mobile" placeholder="Mobile No" /> <input type="text"
					name="email" placeholder="Email" /> <input type="password"
					name="password" placeholder="Password" /> <input type="password"
					name="password1" placeholder="Retype Password" /> <input
					type="text" name="address" placeholder="Address" /> <input
					type="text" name="street" placeholder="Street" /> <input
					type="text" name="state" placeholder="State" /> <input
					type="submit" name="sign-up-button" value="Sign Up" />
			</div>
		</div>
	</form>
</body>
</html>