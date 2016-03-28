<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<title>Insert title here</title>
</head>
<body>
<center><h2>GAPP Application</h2></center>
		<hr />

<div class="container">
<div align="right"><a href="/gapp" class=" btn btn-danger"> LOGOUT</a></div>
		
		<a href="student.html?id=${sid}">Home</a>>Add Additional Requirement



<form:form modelAttribute="additionalReqDetails">
<div class="well">
<center><h3>Add Requirement</h3></center>
Name : ${gappAdditionalReq.name }<br>
Type : ${gappAdditionalReq.type }<br>
	Enter Value:	<form:input path="requiredText" required="true"/>
	<input type="hidden" name="sid" value="${sid}">
	<input type="hidden" name="deptID" value="${deptID}">
	<input type="hidden" name="AppID" value="${AppID}">
	<input type="hidden" name="rid" value="${rid}">
	<br><input type="submit"   value="Add">
	</div>
</form:form>
</div>
</body>
</html>