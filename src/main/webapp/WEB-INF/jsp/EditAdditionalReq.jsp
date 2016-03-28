<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>additional Req</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
</head>
<body>
<center><h2>GAPP Application</h2></center>
	
		
		<div class="container">
			<div align="right"><a href="/gapp" class=" btn btn-danger"> LOGOUT</a></div>
		<div class="well">
		
		<center>	Continue Application
		<small><b>Step 2 of 2</b></small>
		</center>
	<b>Following are the requirement By
	${gappApplication.program.department.name} Department </b>
	
	
	
	<%-- <br>
	<c:out value="${ReqAlreadyEists}" />
		<c:out value="${errMsg}" />
		<c:out value="${err}" />
		${errMsg}
		${ReqAlreadyEists}
		${AppID }
	<br> --%>
	<table border="1" class="table table-striped">
		<tr>
			<th>Name</th>
			<th>Type</th>
			<th>Required</th>
			<!-- <th>Value</th> -->
			<th>Add</th>
		</tr>
		<c:forEach items="${gappApplication.program.department.additionalReqList}" var="req">
			<tr>
				<td>${req.name}</td>
				<td>${req.type}</td>
				<td>${req.requiredOrOptional}</td>
				<td><a href="${req.type}.html?sid=${sid}&deptID=${deptID}&AppID=${AppID}&rid=${req.id}">Add</a></td>
				
			</tr>
		</c:forEach>
	</table>
	<br />

	<b>Following are the Requirement Submitted:</b>
	<table border="1" class="table table-striped">
	<tr>
			
			<th>Name</th>
			<th>Type</th>
			<th>Required or Optional</th>
			<th>Value</th>
		</tr>
		<c:forEach items="${gappApplication.additionalReqDetails }" var="req">
			<tr>

				
				<td>${req.additionalReq.name}</td>
				<td>${req.additionalReq.type}</td>
				<td>${req.additionalReq.requiredOrOptional}</td>
				<td>
				
				
				<c:if test="${req.additionalReq.type eq 'number'}">
				${req.requiredNumber}
				</c:if>
				
				<c:if test="${req.additionalReq.type eq 'text'}">
				${req.requiredText}
				</c:if>
				
				<c:if test="${req.additionalReq.type eq 'file'}">
				<b>File Name:</b>${req.requiredFile.originalName}
				<b>Download Link :</b> <a  href="download.html?filename=${req.requiredFile.name}">Download File</a>
				</c:if>
				</td>
			</tr>
		</c:forEach>

	</table>
	
			<form action="additionalReq.html" method="post">

		
	<input type="hidden" name="sid" value="${sid}">
		<input type="hidden" name="deptID" value="${deptID}">
		<input type="hidden" name="AppID" value="${AppID}">
	
				<br>
				<center><b>Save and proceed to step 2</b>
				<input type="submit" value="Save & Continue" class="btn btn-primary" name="save" /> 
				<!-- 	<input type="submit" value="Submit Application" class="btn btn-primary" name="submit" />  -->
				</center>
				</form>
	
		<%-- <table border="1">
		<c:forEach items="${gappApplication }" var="req">
			<tr>


		
				<td>${req.program.department.additionalReqList.id}</td>
				<td>${req.additionalReq.name}</td>
				<td>${req.additionalReq.type}</td>
				<td>${req.additionalReq.requiredOrOptional}</td>
				<td>
				<c:if test="${req.flag eq false }">
				<a href="${req.additionalReq.type}.html?sid=${sid}&deptID=${deptID}&AppID=${AppID}&rid=${req.additionalReq.id}">Add</a>
				</c:if>
				</td>				
				<td><c:if test="${req.additionalReq.type eq 'number'}">
				${req.requiredNumber}
				</c:if>
				<c:if test="${req.additionalReq.type eq 'file'}">
				Name:${req.requiredFile.originalName}
				Link : <a  href="download.html?filename=${req.requiredFile.name}">Download File</a>
				</c:if>
				</td>
			</tr>
		</c:forEach>

	</table> --%>

</div>
</div>
</body>
</html>