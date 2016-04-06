# Gapp-Application


GAPP(Graduate Application Portal) Project Description

Background

To apply for a graduate program at CSULA, a student needs to complete an online application at CSUMentor (known as the university application), submit a set of official transcripts, and pay the application fees. Some departments also require some additional application materials (known as supplemental application or department application), which may include personal statement, recommendation letters, and so on. The staff at the university admission office are responsible for importing the applications from CSUMentor to GET, and updating application status on GET to indicate whether the transcripts and application fees have been received. The university staff are also responsible for translating (using an external agency) and scanning transcripts, and uploading them to a document hosting service OnBase. The supplemental applications are sent directly to each department and are handled by department staff.

There are two problems in this process that make reviewing applications quite difficult. First, the application materials are scattered in several places (i.e. GET, OnBase, and the file cabinets in department offices) in different forms (i.e. electronic and paper). Second, the user interfaces of GET and OnBase are rather terrible and there's nothing we can do about it.

So in this project you are going to develop a web-based system we call Graduate Program Applications, or GAPP, which will host all the application materials. Specifically:

Students will use CSUMentor to submit a university application and use GAPP to submit a department application - we assume that a department application will be required by all departments.
University admission staff will upload scanned transcripts to GAPP.
Department staff will upload additional application materials (e.g. personal statement, recommendation letters) to GAPP.
Department admission committee will use GAPP to review the applications.
Users

There are three types of users in the system: administrators, staff, and students. For each user the system keeps the user's last name, first name, email (which is also used as username for login purpose), and password.

Administrators are responsible for managing departments and users.

Staff, which include university and department staff as well as the members of department admission committee, can review and update all applications.

Students can apply for programs.

Applications

To submit an application on GAPP, a student should provide the following information:

The program to apply. A department may offer several graduate programs. Each application is for one program, though a student may submit multiple applications.
The term the student applies for, e.g. Fall 2016.
Basic information of the student, including last name, first name, CIN (if available), phone number, email, gender, date of birth, and citizenship.
Educational background, which includes a list of college/university degrees. For each degree, the student should provide the name of the college/university, the time period attended, the degree earned, and the major/field of the degree.
Academic records, including TOEFL score (for international students), GRE score (if required by department), GPA, and transcript.
Each department may require additional information in an application, so the system should allow staff to customize the applications of a department by adding additional fields - you can think of this as each department having their own application form, and these application forms share some common fields but each department may also have some additional fields of their own.

Each additional field has three properties:

Name of the field.
Type of the field value, which can be Text, Number, or File.
Whether the field is required or optional.
For example, suppose the Accounting Department requires GMAT score and a Statement of Purpose, the applications for the Accounting MS program will have two additional fields: (GMAT, number, required) and (State of Purpose, File, Required).

Application Status

The status of an application can be the following:

New - the application is submitted by the student.
Pending Review - after all the application materials have been received and the application fees paid, a staff can change the status from New to Pending Review to indicate that the application is ready to be reviewed.
Denied - the application is denied.
Recommend Admit - the department recommends the admission of the student.
Recommend Admit w/ Condition - the department recommends the admission of the students but with some conditions.
Whenever the status of an application changes, the system should record the time of the change and allows the user who makes the change to enter some comments.
