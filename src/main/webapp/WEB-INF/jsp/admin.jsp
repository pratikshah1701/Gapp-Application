<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
</head>

<body>
<div class="container">
<br/><br/>
<h3>Welcome ,${user.fname}.</h3>
<div align="right">
<a href="/gapp" class=" btn btn-danger"> LOGOUT</a></div>
<br/><br/><br/><br/>
<div class="well">
Manage department : <a href="department.html">Manage Department</a><br>
Manage User : <a href="manageUser.html">Manage User</a>
</div>
</div>
</body>
</html>