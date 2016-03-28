<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>department</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
</head>
<body>
<div class="container">
<br>
<h3>Manage Department</h3>
<br>
<div align="right"><a href="login.html" class=" btn btn-danger"> LOGOUT</a></div>

<a href="admin.html?id=1">Home</a>>Manage Department

<br>
<div class="well">
<a href="addDepartment.html">Add Department</a>
<br>
 <table class="table table-condensed">
    <thead>
    <tr><th>Department Name</th><th># of Program</th>  <th>Veiw Dept</th><th>Edit Dept Name</th><th>Add/Remove Prog & Req</th></tr>
    </thead>
<c:forEach items="${departmentList}" var="department">
<c:if test="${department.id ne 3 }">
<tr><td>${department.name}</td>

<td>${fn:length(department.programList)}</td>

<td><a href="DepartmentDetail.html?id=${department.id}">view</a></td>
<td><a href="editDept.html?id=${department.id}">Edit</a></td>
<td><a href="manageDepartment.html?id=${department.id}">Manage</a></td>

</c:if>
</c:forEach>
</table>
</div>
</div>
</body>
</html>