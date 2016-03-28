<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">





<title>New Application</title>

<script src="js/jquery-1.11.1.js" type="text/javascript"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-latest.js"></script>

<script>
	$(document).ready(function() {

		$('#dept').change(function(event) {
			var dept = $("select#dept").val();
			$('input[name="deptID"]').val(dept);
			/* alert($('input[name="deptID"]').val()); */
			$.get("/gapp/getProgram.html", {
				deptName : dept
			}, function(jsonResponse) {

				var select = $('#program1');
				select.find('option').remove();
				$.each(jsonResponse, function(index, value) {
					$('<option>').val(value).text(value).appendTo(select);
				});
			});
		});

	});
</script>

<script>
	/* alert("hi"); */
	function getinput() {
		var university = " <br>University : <input type='text' name='university' >  <b>*</b>";
		var degree = " Degree : <input type='text' name='degree' > <b>*</b>";
		var major = " Major : <input type='text' name='major' >  <b>*</b>";
		var timePeriod = " Duration : <input type='text' name='timePeriod' size='5%' > <b>#</b>";
		var gpa = " GPA : <input type='text' name='gpa'  size='5%'> <b>#</b><br>";

		$("#inputs").append(university, degree, major, timePeriod, gpa);
		"<br>"
	}
</script>
</head>
<body>

<center><h2>GAPP Application</h2></center>
<hr />
		<div align="right"><a href="/gapp" class=" btn btn-danger"> LOGOUT</a></div>
		&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="student.html?id=${studID}">Home</a>>New Application

<br>
	<form:form modelAttribute="gappApplication" enctype="multipart/form-data" action="/gapp/NewApplication.html" method="post">
	<div class="container">
		<div class="well">
	<center>	<h3>New Application  </h3>	 
		<small><b>Step 1 of 2</b></small>
		</center>
		<table class="table">
				<tr>
						<td>	Email <td>	
						<td>	<form:input path="email" /> <b>*</b></td>
				</tr>
				
				
				<tr>
						<td>	First Name <td>	
						<td>	<form:input path="fname" /> <b>*</b></td>
				</tr>



					<tr>
						<td>	 Last Name  <td>	
						<td>	<form:input path="lname" /> </td>
				</tr>


				<tr>
						<td>	 CIN  <td>	
						<td>	<form:input path="CIN" /> </td>
				</tr>

				<tr>
						<td>	 Phone No<td>	
						<td>	<form:input path="phoneNO" /> </td>
				</tr>
							
				
				
				<tr>
						<td>	 Gender<td>	
						<td>	
							<select id="gender" name="gender">
								<option value="male">male</option>
								<option value="female">female</option>

							</select>	
						 </td>
				</tr>
						
						
					<tr>
						<td>	 DOB<td>	
						<td><form:input path="DOB" /> <b>*</b> (format:MM/dd/yyyy)</td>
					</tr>						
						

					<tr>
						<td>	Citizenship<td>	
						<td><form:input path="citizenship" /> <b>*</b></td>
					</tr>
					
					<tr>
						<td>	TOEFL<td>	
						<td><form:input path="TOFFEL" /> <b>(*) for International Student</b></td>
					</tr>

		
					<tr>
						<td>	 Select Department<td>	
						<td>	
							 <select name="dept" id="dept">
							<option value="3">Select Department</option>
							<c:forEach items="${department}" var="dept">
								<c:if test="${dept.id ne 3}">
									<option value="${dept.id}">${dept.name}</option>
								</c:if>
							</c:forEach>
						</select><b>*</b>	
						 </td>
				</tr>		
					


				<tr>
						<td>Select Program:	 <td>	
						<td>	
							 <select id="program1" name="program1">
							<option value="program not selected">Select Programs</option>
						</select> <b>*</b>
						 </td>
				</tr>		
					

		<tr>
						<td>Select Course Term	 <td>	
						<td>	
							
						 <select id="courseTerm" name="courseTerm">
							<option value="Spring 2017">Spring 2017</option>
							<option value="Fall 2017">Fall 2017</option>
						</select> <b>*</b>
						 </td>
				</tr>		
					
						
					
					<tr>
						<td>	Upload Transcript<td>	
						<td> <input type="file" name="t" /></td>
					</tr>


				</table>
				


			<div class="well">
				Educational Background:
						<div id="inputs">
						<a href="#" class="btn btn-info" onclick="getinput()">Add
								More</a><br><br>
							University : <input type='text' name='university' > <b>*</b>
							Degree: <input type='text' name='degree'> <b>*</b> 
							Major : <input type="text" name='major'> <b>*</b>
							Duration : <input type="text" name='timePeriod' size="5%"> <b>#</b> 
							GPA : <input type="text" name='gpa'  size="5%"> <b>#</b>
							<br>
							
						</div>
						
						<br>
						<div class="well">
						<b>*</b> : Mandatory fields 
						<br>
						<b>#</b> : Require numeric value and mandatory 
						</div>
					
</div>

<br>

	<center>	<b>Save and proceed to step 2</b>
							<input type="submit" class="btn btn-primary" value="Save & Continue" name="save" />
							
					</center>		 
					<!-- <input type="submit" value="save" name="save" /> 
					<input type="submit" value="submit" name="submit" /> -->
						<input type="hidden" name="studID" value="${studID}">
							<input type="hidden" name="deptID"/>

				
	</div>
			
</div>
			</form:form>
	

</body>
</html>