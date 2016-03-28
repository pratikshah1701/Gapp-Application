<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Department</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

</head>
<body><div class="container">
<center><h2>Add department</h2></center>
<div align="right"><a href="logout.html" class=" btn btn-danger"> LOGOUT</a></div>

<a href="admin.html?id=1">Home</a>><a href="department.html">Manage Department</a>
		<br/>
<hr/>

<div class="well">

<form:form modelAttribute="department">
    Old Department name: ${department.name }<br>
	New Departname name:	<form:input path="name" required="true"/>
	<input type="hidden" name="did" value="${department.id}">
	
		<br><input type="submit"   value="save">
	
</form:form>
</div>
</div>
</body>
</html>