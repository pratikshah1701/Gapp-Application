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

	<center><h1><font color="white">Apply for Job</font></h1></center>
	<hr />
<div align="right">
<a href="/gapp" class=" btn btn-danger"> LOGOUT</a></div>
		<br/>
	<form:form modelAttribute="gappDepartment">
		<div class="well">
		<h3>Enter Department Details:</font></h3>
			<h4>
				<small> Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </small>
				<form:input path="name" required="true"/>
			</h4>
			<%-- <h4>
				<small> Current Job Institution &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </small>
				<form:input path="currentJobInstitution" required="true"/>
			</h4>
			<h4>
				<small> Current Job start Year &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </small>
				<form:input path="currentJobYear" required="true" type="number"/>
			</h4> --%>
			<h3>Enter Programs :</h3>
			<div id="inputs1">
			<a href="#1" class="btn btn-info" onclick="getinput1()">Add More</a><br>
			<c:forEach items="${ gappDepartment.programList}" varStatus="prog">
							Program name : <form:input path="programList[${prog.index}].name"  required="true"/><br>
			
			</c:forEach>
				<!--  <br/> <input type='text' name='progname'  required> -->
				
			</div>
			
			<h3>Enter Additional Requirements :</h3>
			<div id="inputs2">
			<a href="#2" class="btn btn-info" onclick="getinput2()">Add More</a><br>
			<c:forEach items="${ gappDepartment.additionalReqList}" varStatus="req">
							Requirement name : <form:input path="additionalReqList[${req.index}].name"  required="true"/><br>
			
			</c:forEach>
				<!-- <br/> <input type='text' name='reqname' required>  -->
				
			</div>
	
	
	</div>
	<input type="submit" class="btn btn-info"  value="Apply">
	
	</form:form>

	<script type="text/javascript" src="//code.jquery.com/jquery-latest.js"></script>

	<script>
	function getinput1()
	{
	var progname=" Program name :  <input type='text' name='progname' required> ";
	$("#inputs1").append(progname);
	"<br>"
	}
	
	function getinput2()
	{
	var reqname=" Requirement name : <input type='text'  name='reqname' required>";
	$("#inputs2").append(reqname);
	"<br>"
	}
	
	


	</script>

</body>
</html>