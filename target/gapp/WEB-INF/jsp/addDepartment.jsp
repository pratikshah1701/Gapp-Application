<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Applicant Registration</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<title>AddDepartment</title>
</head>
<body>
<div class="container">

	<center><h3>Add Department</h3></center>


<div align="right"><a href="logout.html" class=" btn btn-danger"> LOGOUT</a></div>

<a href="admin.html?id=1">Home</a>><a href="department.html">Manage Department</a>
		<br/>
	<form:form modelAttribute="gappDepartment">
		<div class="well">
		<h3>Enter Department Name:</font></h3>
			<h4>
				<small> Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </small>
				<form:input path="name" required="required"/>
			</h4>
			<%--  <h4>
				<small> Current Job Institution &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </small>
				<form:input path="currentJobInstitution" required="true"/>
			</h4>
			<h4>
				<small> Current Job start Year &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </small>
				<form:input path="currentJobYear" required="true" type="number"/>
			</h4> 
			<h3>Enter Programs :</h3>
			<div id="inputs1">
				Program name : <input type='text' name='progname' required> 
				<a href="#1" class="btn btn-info" onclick="getinput1()">Add More</a><br>
			</div>
			
			<h3>Enter Additional Requirements :</h3>
			<div id="inputs2">
				Requirement name : <input type='text' name='reqname' required> 
				<a href="#2" class="btn btn-info" onclick="getinput2()">Add More</a><br>
			</div>
	
	
	</div>
 --%>	<input type="submit" class="btn btn-info"  value="add">
	
	</form:form>

	<!-- <script type="text/javascript" src="//code.jquery.com/jquery-latest.js"></script>

	<script>
	function getinput1()
	{
	var progname="<br> Program name :  <input type='text' name='progname' required>";
	$("#inputs1").append(progname);
	"<br>"
	}
	
	function getinput2()
	{
	var reqname="<br> Requirement name : <input type='text' name='reqname' required>";
	$("#inputs2").append(reqname);
	"<br>"
	}
	</script> -->

</body>
</html>