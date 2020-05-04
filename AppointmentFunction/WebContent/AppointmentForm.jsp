<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Views/css/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/main.js"></script>

<title>Appointment Form</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-8">

				<div class="container">
					<br>
					<center>
						<h1>Appointments Management</h1>
					</center>
					<br>
				</div>
				<hr>

				<br>

				<!-- FORM -->

				<form id="appointmentform">

					Appointment ID:<input type="text" id="appointmentid" name="appointmentid" class="form-control"> <br>

					Patient Name:<input name="patientname" id="patientname" type="text" class="form-control" placeholder="Enter Patient Name"> <br>
					
					Doctor Name:<input name="doctorname" id="doctorname" type="text" class="form-control" placeholder="Enter Doctor Name"> <br>
					
					Hospital Name:<input name="hospitalname" id="hospitalname" type="text" class="form-control" placeholder="Enter Hospital Name"> <br>

					<br> 
					
					Appointment Number: <input name="appointmentno" id="appointmentno" type="text" class="form-control" placeholder="Enter Appointment Number"> 
						
					<br>

					Date: <input name="date" type="text" id="date" class="form-control" placeholder="Enter Date"> 
						
					<br> 
					
					Time: <input name="time" type="text" id="time" class="form-control" placeholder="Enter Time"> 
					
					<br>

					<!-- ALERT -->

					<div id="alertSuccess" class="alert alert-success"></div>
					<div id="alertError" class="alert alert-danger"></div>

					<br> <input type="button"  value="Save"
						id="savebtn" class="btn btn-success">

				</form>

				<br>

				
			</div>
		</div>


		<!-- CARDS TO DISPLAY -->

		<div class="row">
			<div class="col-12" id="colPatients"></div>

		</div>

	</div>




</body>
</html>