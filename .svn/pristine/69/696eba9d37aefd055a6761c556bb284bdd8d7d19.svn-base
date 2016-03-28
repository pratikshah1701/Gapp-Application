<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<title>Manage Department</title>
</head>
<body>
<div class="container">

<h2>Department : ${department.name}</h2>

<div align="right"><a href="logout.html" class=" btn btn-danger"> LOGOUT</a></div>

<a href="admin.html?id=1">Home</a>><a href="department.html">Manage Department</a>
<br/>
<br>
<div class="well">
<h4>Programs:</h4>

<a href="addProgram.html?id=${department.id}">Click to Add Program</a>
 <table class="table">
    <thead>
    <tr><th>Program Name</th><th>Operation </th></tr>
    </thead>

<c:forEach items="${department.programList}" var="prog">
<tr><td>${prog.name }</td> <td> <a href="removeProgram.html?pid=${prog.id}&did=${department.id}">remove</a> </td></tr>
</c:forEach>
</table>
<br>
</div>

<br>
<div class="well">
<h4>Additional Requirement:</h4>

<a href="addRequirement.html?id=${department.id}">Click to add Requirement</a>
<table class="table">
<thead><tr><th>Additional Requirement </th><th>Type</th><th>Required or Optional</th><th></th></tr><thead>
<c:forEach items="${department.additionalReqList}" var="req">
<tr><td>${req.name }</td> <td>${req.type }</td> <td>${req.requiredOrOptional }</td><td> <a href="removeRequirement.html?rid=${req.id}&did=${department.id}">remove</a> </td></tr>
</c:forEach>
</table>
</div>
</div>

</body>
</html>