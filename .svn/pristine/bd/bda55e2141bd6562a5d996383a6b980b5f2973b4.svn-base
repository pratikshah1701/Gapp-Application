<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<title>Add Program</title>
</head>
<body>
<div class="container">


<br>
<center><h3>Add Program</h3></center>
<div align="right"><a href="logout.html" class=" btn btn-danger"> LOGOUT</a></div>

<a href="admin.html?id=1">Home</a>><a href="department.html">Manage Department</a>
<br/>
<div class="well">

Department : ${department.name }
<form:form modelAttribute="gappProgram">

	Enter Program name:	<form:input path="name" required="true"/>
	<input type="hidden" name="did" value="${department.id}">
	
		<br><input type="submit"   value="Add">
	
</form:form>
</div>
</div>
</body>
</html>