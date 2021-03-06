<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>addUniversityDergree</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
</head>
<body>
<center><h2>GAPP Application</h2></center>
		<hr />
<div class="container">
<div align="right"><a href="/gapp" class=" btn btn-danger"> LOGOUT</a></div>
		
		<a href="student.html?id=${studId}">Home</a>>Edit Application>Add University Degree

		
		<form:form modelAttribute="gappUniversityDegree">
			
			<div class="well">
			<center><h3>Add New University Degree</h3></center>
			
			<table>
			<tr>
			
				<td> University Name:</td><td>   <form:input path="universityName" /> *</td>
			</tr>
			
			<tr>
				<td> Dergree Earned</td><td> <form:input  path="dergreeEarned"  /> *</td>
			</tr>
				
				<tr>
				<td>Major:</td> <td> <form:input path="major"  /> *</td>
		</tr>
		
		<tr>
				<td> GPA : </td><td>  <form:input path="GPA"  /> #</td>
		</tr>		
		
		<tr>
				 <td>Duration : </td><td>  <form:input path="timePeriod"  /> #</td>
			
			</tr>
			
		<%-- 	<tr>
		<td>		
		 Recent :</td><td><form:radiobutton path="isRecentDegree" value="true"/>Yes  
				  <form:radiobutton path="isRecentDegree" value="false" />No</td>  
	
	</tr> --%>
	</table>
	<br>
	
						<div class="well">
						<b>Note: </b>
						<b>*</b>  Mandatory fields 
						
						<b>,  #</b>  Require numeric value and mandatory 
						</div>
			
			
			<input type="hidden" name="appId" value="${appId}">
						<input type="hidden" name="studId" value="${studId}">
			
			<input type="submit" value="Add" class="btn btn-success" name="register"/>
			</div>
		</form:form>	
		
		</div>
		
</body>
</html>