<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
</head>
<body background="../images/2.jpg"> 
<div class="container">

	<center><h1><font color="Black">Login</font></h1></center>
	<hr />
	<c:if test="${invalidUser != null}">
		<div class="alert alert-danger" role="alert">
			
			<c:out value="${invalidUser}" />
		</div>
	</c:if>
		<br/>
		<div class="well">
		<form method = "POST">
	
			<h4>
				 <b>Email  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="email" name="email" required/>
			</h4>
			<h4>
				 <b>Password &nbsp;&nbsp;</b> <input type="password" name="password" required />
			</h4>
			
			<input type="submit" class="btn btn-primary" value="Login" name="Login"/>
			
			
					
		</form>	
	<hr/>
	Not yet Registered?   <a href="register.html" class="btn btn-primary">Register</a>
			
		</div>
		




</div>

</body>
</html>





