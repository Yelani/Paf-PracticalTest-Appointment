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
<script src="Components/appointment.js"></script>

</head>
<body>

<div class="container">
<div class="row">
<div class="col-6">

	<h1>Appointments</h1>
	
	<br>
	
	<form id="formApp" name="formApp">
	
		<p> Place your appointments securely with us..</p>
		
		<br> 
		
		Patient Name:
		<input id="patientName" name="patientName" type="text" class="form-control form-control-sm">
		
		<br>
		
		Doctor Name:
		<input id="doctorName" name="doctorName" type="text" class="form-control form-control-sm">
		
		<br>
		
		HospitalName:
		<input id="hospitalName" name="hospitalName" type="text" class="form-control form-control-sm">
		
		<br>
		
		Appointment No:
		<input id="appointmentNo" name="appointmentNo" type="text" class="form-control form-control-sm">
		
		<br>
		
		Date:
		<input id="date" name="date" type="text" class="form-control form-control-sm">
		
		<br>
		
		Time:
		<input id="time" name="time" type="text" class="form-control form-control-sm">
	
		<br>
		
		<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary"> 
		
		<input type="hidden" id="hidAppointmentIDSave" name="hidAppointmentIDSave" value="">
		
		<br>
		<br>
		
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