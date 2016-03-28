<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Home</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

</head>
<body><center><h2>GAPP Application</h2></center>
<hr />
		<div align="right">
		<a href="NewApplication.html?studID=${user.id}" class=" btn btn-danger"> New Application</a>
		<a href="/gapp" class=" btn btn-danger"> LOGOUT</a>
		</div>
	
	
	
		
	
	

	<br /> 


	<div class="well">
	<h4>Welcome ,${user.fname}</h4>
		
		<center><h3>List of Application</h3></center>
		<table class="table table-condensed">
			<thead>
				<tr>
					<th>Date</th>
					<th>Department</th>
					<th>Porgram</th>
					<th>Term</th>
					<th>Current Status</th>
					<th>View</th>
					<th>Edit</th>

				</tr>
			</thead>
			<c:forEach items="${application}" var="application">
				<tr>
				<c:set var="appno"  value="${application.id}"/>
				
					<td> 
					  <c:forEach items="${application.applicationStatus}" var="status">
							<c:if test="${status.isLatestStatus=='true'}">
							
							<fmt:formatDate pattern="yyyy-MM-dd" value="${status.timeOfChange }" />
							</c:if>
							
						</c:forEach>
				    </td>

					<td>${application.program.department.name}</td>

					<td>${application.program.name}</td>
					<td>${application.term}</td>

					<td>
					<c:forEach items="${application.applicationStatus}"
							var="status">
							<c:if test="${status.isLatestStatus=='true'}">
							${status.status }
							 </c:if>
						</c:forEach>
					</td>
					
					<td>
					<a href="ViewAppDetail.html?appID=${application.id}">View Application</a>
					</td>
					<td>
					<c:forEach items="${application.applicationStatus}"
							var="status">
							<c:if test="${status.status eq 'Not Submitted'}">
							<c:if test="${status.isLatestStatus=='true'}">
							<a href="editApplication.html?appID=${application.id}">Edit Application</a>
							 </c:if>
							 </c:if>
							 
						</c:forEach>
					</td>
				<tr>
			</c:forEach>
		</table>
	</div>
	<hr />

</body>
</html>