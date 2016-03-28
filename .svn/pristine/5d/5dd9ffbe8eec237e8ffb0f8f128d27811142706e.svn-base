<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<title>Insert title here</title>
</head>
<body>
<div class="container">
<br/>
<center><h3>Add Requirement</h3></center>
<div align="right"><a href="logout.html" class=" btn btn-danger"> LOGOUT</a></div>

<a href="admin.html?id=1">Home</a>><a href="department.html">Manage Department</a>
<br/>
<div class="well">


<h4>Department : ${department.name }</h4>

<form:form modelAttribute="gappAdditionalReq">

	<h4>Enter Additional Requirement :</h4><br>
	Requirement name:	<form:input path="name" required="true"/><br>
	Requirement Type: <form:select path="type">
   <form:option value="text"  items="text"/>
      <form:option value="number"  items="number" />
      <form:option value="file" items="file" />
	</form:select><br>
	Required <form:radiobutton path="requiredOrOptional" value="required" ></form:radiobutton> ||
	optional <form:radiobutton path="requiredOrOptional" value="optional"></form:radiobutton><br>
	<%-- <form:input path="requiredOrOptional" required="true"/> --%>
	<input type="hidden" name="rid" value="${department.id}">
	
		<br><input type="submit"   value="Add">
	
</form:form>
</div>
</div>
</body>
</html>