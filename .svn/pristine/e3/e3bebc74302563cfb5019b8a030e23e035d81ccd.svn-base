<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
</head>
<body>
<center><h2>GAPP Application</h2></center>
<hr />
<div class="container">
	<div align="right"> <a href="/gapp" class=" btn btn-danger"> LOGOUT</a></div>

<center><h3>Application Details</h3></center>
<a href="student.html?id=${application.user.id}">Home</a>>View Application Detail

<div class="well">
<h4>Student Information:</h4>
<div class="row">
  <div class="col-sm-2"><b>First Name:</b> </div>
  <div class="col-sm-8"> ${application.fname}</div>
</div>
<div class="row">
  <div class="col-sm-2"><b>Last Name:</b> </div>
  <div class="col-sm-8"> ${application.lname }</div>
</div>
<div class="row">
  <div class="col-sm-2"><b>CIN :</b> </div>
  <div class="col-sm-8"> ${application.CIN }</div>
</div>
<div class="row">
  <div class="col-sm-2"><b>Email :</b> </div>
  <div class="col-sm-8"> ${application.email }</div>
</div>
<div class="row">
  <div class="col-sm-2"><b>Gender :</b> </div>
  <div class="col-sm-8"> ${ application.gender} </div>
</div>
<div class="row">
  <div class="col-sm-2"><b>DOB :</b></div>
  <div class="col-sm-8"> ${ application.DOB}</div>
</div>
<div class="row">
  <div class="col-sm-2"><b>Citizenship :</b></div>
  <div class="col-sm-8"> ${ application.citizenship}</div>
</div>



</div>

<div class="well">

<div class="row">
  <div class="col-sm-3"><b>Department Applied for :</b></div>
  <div class="col-sm-4"> ${application.program.department.name }</div>
</div>
<div class="row">
  <div class="col-sm-3"><b>Program Applied for :</b></div>
  <div class="col-sm-4">  ${ application.program.name}</div>
</div>
<br>

</div>




<div class="well">
<h4>Educational Background</h4>
<table class="table table-condensed">
			<thead>
				<tr>
					<th>Name Of University</th>
					<th>Degree Earned</th>
					<th>Majors</th>
					<th>Duration</th>
					<th>GPA</th>
					<!-- <th>Most Recent</th> -->
					
					
				</tr>
			</thead>
			<c:forEach items="${ application.educationalBackground}" var="degree">
				<tr>
					<td> ${degree.universityName }</td>

					<td>${degree.dergreeEarned }</td>

					<td>${degree.major }</td>
					
					<td> ${degree.timePeriod }</td>
					
					<td> ${degree.GPA }</td>
					
					<%-- <td>
						<c:if test="${degree.isRecentDegree}">
						Recent
						</c:if> 
					</td> --%>
					
					
					
				<tr>
			</c:forEach>
		</table>

</div>



<c:if test="${application.transcript.name ne null}">
<div class="well">

<b>Transcript Name:</b>${application.transcript.originalName} <br>
<b>Download Link :</b> <a  href="download.html?filename=${application.transcript.name}">Download Transcript</a>
</div>
</c:if>


<div class="well">
<h4>Academics records and Additional Requirement:</h4>

 <b>TOEFL Score:</b>
  ${ application.TOFFEL}
<br>

<table class="table table-condensed">
			<thead>
				<tr>
					<th>Requirement Name</th>
					<th>Type</th>
					<th>Value</th>
					
					
				</tr>
			</thead>
			<c:forEach items="${application.additionalReqDetails}" var="reqDetails">
				<tr>
					<td> ${reqDetails.additionalReq.name }</td>

					<td>${reqDetails.additionalReq.type }</td>

					<td>
					
					
					<c:if test="${reqDetails.additionalReq.type eq 'number'}">
					${reqDetails.requiredNumber}
				</c:if>
				<c:if test="${reqDetails.additionalReq.type eq 'file'}">
				<b>Name:</b>${reqDetails.requiredFile.originalName}<br>
				<b>Link :</b> <a href="download.html?filename=${reqDetails.requiredFile.name}">Download File</a>
				</c:if>
					<c:if test="${reqDetails.additionalReq.type eq 'text'}">
					${reqDetails.requiredText}
				</c:if>
					
					
					</td>
					
					
					
				<tr>
			</c:forEach>
		</table>

</div>


</div>
</body>
</html>