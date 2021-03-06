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

<title>Edit Application</title>
</head>
<body>
<center><h2>GAPP Application</h2></center>
<hr />
<div align="right"><a href="/gapp" class=" btn btn-danger"> LOGOUT</a></div>
<b><a href="student.html?id=${gappUsers.id}">Home</a>>Edit Application</b>

		<br/>
<form:form modelAttribute="gappApplication" enctype="multipart/form-data">
		
		
		<div class="contaier">
	
			<div class="well">
					<center>	<h3>Edit Application</h3>
		<small><b>Step 1 of 2</b></small>
		</center>
			
			<table class="table">
			<tr>
			<td> Email </td>
			<td>	
				<form:input path="email" /> *
			</td>
			</tr>
			
			<tr>
			<td> First Name </td>
			<td>	
				<form:input path="fname" /> *
			</td>
			</tr>
			
			
			<tr>
			<td> Last Name </td>
			<td>	
				<form:input path="lname" />
			</td>
			</tr>
			
			
			<tr>
			<td> CIN </td>
			<td>	
				<form:input path="CIN" />
			</td>
			</tr>
			
			
			<tr>
			<td> Phone No </td>
			<td>	
				<form:input path="phoneNO" />
			</td>
			</tr>
			
			
				
			<tr>
			<td> Gender</td>
			<td>	
				<form:select path="gender">
					  <form:option value="NONE" label="--- Select ---" />
					  <form:option item="male" label="male" value="male"/>
					   <form:option item="female" label="female" value="female"/>
				  </form:select>
			</td>
			</tr>
			
			<tr>
			<td> DOB </td>
			<td>	
				<form:input path="DOB" /> *(format:MM/dd/yyyy)
			</td>
			</tr>
			
			
			
			<tr>
			<td> Citizenship </td>
			<td>	
				<form:input path="citizenship" /> *
			</td>
			</tr>
				
			
			
			<tr>
			<td> TOEFL </td>
			<td>	
				<form:input path="TOFFEL" /> (*) for Internatioal Students
			</td>
			</tr>
			
		
			<tr>
			<td> Select  Department </td>
			<td>	
				<select id="dept" name="dept" disabled="disabled">
				<option value="${gappApplication.program.department.id}">${gappApplication.program.department.name}</option>
				</select>
			</td>
			</tr>
			
			
			<tr>
			<td> Select Program </td>
			<td>	
				<select id="prog" name="prog" >
			<c:forEach items="${progList}" var="prog1">			
			<option value="${prog1.id}" ${prog1.id == gappApplication.program.id ? 'selected':''}>${prog1.name}</option>
			</c:forEach>
			</select> *
			</td>
			</tr>
		
			<tr>
			<td> Select Course Term  </td>
			<td>	
			<select id="courseTerm" name="courseTerm">
				<option value="Spring 2017" ${gappApplication.term ==  'Spring 2017'? 'selected':''}>Spring 2017</option>
				<option value="Fall 2017"  ${gappApplication.term ==  'Fall 2017'? 'selected':''}>Fall 2017</option>
			</select> *
			</td>
			</tr>
			
			
			
			<tr>
			<td> Transcript  </td>
			<td>	
			<c:if test="${gappApplication.transcript.name ne null}">
				Transcript Name:${gappApplication.transcript.originalName} <br>
				Link : <a  href="download.html?filename=${gappApplication.transcript.name}">Download Transcript</a>
				<br>
			</c:if>
			Upload Another Transcript: <input type="file" name="t" />
			</td>
			</tr>
			
			
		</table>

				
		
		
		<h3><small>Educational Background:</small></h3>
		<a href="addUniversityDegree.html?appId=${gappApplication.id}&studId=${gappApplication.user.id}">Click to Add Educational Details</a>
		<c:if test="${fn:length(gappApplication.educationalBackground)>0}">
		<table border="1" class="table table-striped" >
		<thead>
				<tr>
					<th>Name Of University</th>
					<th>Degree Earned</th>
					<th>Majors</th>
					<th>Duration</th>
					<th>GPA</th>
					<!-- <th>Most Recent</th> -->
					<th>delect</th>	
				</tr>
		</thead>
		<c:forEach items="${gappApplication.educationalBackground}" var="degree">
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
					<td><a href="deleteUniDegree.html?appId=${degree.gappApplication.id}&degreeId=${degree.id}">delete</a></td>
				</tr>
			</c:forEach>
		</table>
		</c:if>
		
		<br>
		<br>
				<br>
				<center><b>Save and proceed to step 2</b>
			<input type="submit" value="Save & Continue" class="btn btn-success" name="save"/>
			<!-- <input type="submit" value="submit" class="btn btn-success" name="submit"/> -->
			</center>
			<input type="hidden" name="studId" value="${gappApplication.user.id}">
			</div>
			</div>
		</form:form>	
</body>
</html>