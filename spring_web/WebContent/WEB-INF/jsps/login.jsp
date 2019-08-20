<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="${pageContext.request.contextPath}/static/CSS/login.css" rel="stylesheet" type="text/css">
</head>
<body onload='document.f.j_username.focus();'>
	<div class="login-page">
		<div class="form">
		<c:if test="${param.error!=null}">
       <p class ="error">Incorrect username or password</p>
       </c:if>
			<form class="login-form" name='f' action='${pageContext.request.contextPath}/j_spring_security_check' method='POST'>
				<input type="text" placeholder="username" name='j_username' value='' /> <input type="password"
					placeholder="password" name='j_password'/>
					<input name="submit" type="submit" value="Login"/>

			</form>
		</div>
		</div>
		
</body>
</html>
