<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<title>DepartmentDetail</title>
</head>
<body>

<div class="container">
<div align="right"><a href="logout.html" class=" btn btn-danger"> LOGOUT</a></div>

<a href="admin.html?id=1">Home</a>><a href="department.html">Manage Department</a>

		<br/>
<h2>Department Name : ${departmentDetail.name}</h2><br/>

<div class="well">
<h4>PROGRAMS:</h4>
<table class="table">
 <thead>
    <tr><th>Program Name</th></tr>
    </thead>
<c:forEach items="${departmentDetail.programList}" var="program">
<tr><td>${program.name}</td></tr>
</c:forEach>
</table>
</div>
</br>
<div class="well">
<h4>ADDITIONAL REQUIREMENTS</h4>
<table class="table">
<thead>
    <tr><th>Requirement Name</th><th>Type</th><th>Optional or Reruired</th></tr>
    </thead>
<c:forEach items="${departmentDetail.additionalReqList}" var="req">
<tr><td>${req.name}</td><td>${req.type}</td><td>${req.requiredOrOptional}</td></tr>
</c:forEach>
</table>
</div>
</div>

</body>
</html>