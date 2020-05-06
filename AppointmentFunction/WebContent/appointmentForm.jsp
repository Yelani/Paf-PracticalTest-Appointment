<%@page import="com.Appointment" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment Management</title>

<link rel="stylesheet" href="Views/css/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/appointments.js"></script>
<style>

body
{
	background-image:url("background Image.jpg");
	background-size: cover;
}

</style>

</head>
<body>

<div class="container">
<div class="row">
<div class="col-6">

	<br>
	<br>
	<br>
	
		<h1><b>Appointments Management</b></h1>
	
	
	
	<br>
	
	<form id="formApp" name="formApp">
	
		<p> Place your appointments securely with us..</p>
		
		<br> 
		<br>
		
		Patient Name:
		<input id="patientName" name="patientName" type="text" class="form-control form-control-sm" placeholder="Enter Patient Name">
		
		<br>
		
		Doctor Name:
		<input id="doctorName" name="doctorName" type="text" class="form-control form-control-sm" placeholder="Enter Doctor Name">
		
		<br>
		
		HospitalName:
		<input id="hospitalName" name="hospitalName" type="text" class="form-control form-control-sm" placeholder="Enter Hospital Name">
		
		<br>
		
		Appointment No:
		<input id="appointmentNo" name="appointmentNo" type="text" class="form-control form-control-sm" placeholder="Enter Appointment Number">
		
		<br>
		
		Date:
		<input id="date" name="date" type="text" class="form-control form-control-sm" placeholder="02/02/2020">
		
		<br>
		
		Time:
		<input id="time" name="time" type="text" class="form-control form-control-sm" placeholder="08:55 AM">
	
		<br>
		
		<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-success">
			
			<input type="hidden" id="hidAppointmentIDSave" name="hidAppointmentIDSave" value="">
			
			<!-- ALERTS -->
			<div id="alertSuccess" class="alert alert-success"></div> 
			<div id="alertError" class="alert alert-danger"></div> 
		
	</form> 
	
	<br>
	<br>
	
	<div id="divItemsGrid">
			<% 
				Appointment appObj = new Appointment();
				out.print(appObj.readAppointments()); 
			%>
	</div>
			





</div>
</div>
</div>



</body>
</html>