<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="Views/css/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/main.js"></script>

<title>Appointment Form</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col">

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

				<form method="post" action="">
				
					Appointment ID:<input name="appointmentid" type="text" class="form-control"> 
					
					<br> 
					
					Patient Name:<input name="patientname" type="text" class="form-control" placeholder="Enter Patient Name">
					
					<br>
					
					<div>

						Doctor Name:
						
						<br>
						
						<select id="doctorname" name="doctorname" class="form-control">
							<option value="0">--Select a Doctor--</option>
							<option value="1">Dr. Dilum Palliyaguru</option>
							<option value="2">Dr. Geethal Perera</option>
							<option value="3">Dr. Dhammika Perera</option>
							<option value="4">Dr Ruchika D. Lanerole</option>
						</select>

					</div>
					 
					 <br> 
					 
					<div>

						Hospital Name:
						
						<br>
						
						<select id="hospitalname" name="hospitalname" class="form-control">
							<option value="0">--Select a Hospital--</option>
							<option value="1">Hemas Hospital (Thalawatugoda)</option>
							<option value="2">Hemas Hospital (Wattala)</option>
							<option value="3">Nawaloka Hospital</option>
							<option value="4">Asiri Hospital</option>
							<option value="5">Central Hospital</option>
							<option value="6">Browns Hospital</option>
						</select>

					</div>
					 
					 <br> 
					 
					 Appointment Number: <input name="appointmentno" type="text" class="form-control" placeholder="Enter Appointment Number">
					 
					 <br>
					 
					 Date: <input name="date" type="text" class="form-control" placeholder="Enter Date"> 
					 
					 <br>
					 
					 Time: <input name="time" type="text" class="form-control" placeholder="Enter Time">
					 
					 <br> 
					 
					 <!-- ALERT -->

					<div id="alertSuccess" class="alert alert-success"></div>
					<div id="alertError" class="alert alert-danger"></div>
					 
					 <br>
					 
					 <input name="btnSubmit" type="submit" value="Save" class="btn btn-success">

				</form>

				<br>

				<!-- TABLE -->

				<div class="container">
					<h2>Appointments</h2>
					<table class="table table-hover">
						<thead>
							<tr class="table-warning">
								<th>AppointmentID</th>
								<th>Patient Name</th>
								<th>Doctor Name</th>
								<th>Hospital Name</th>
								<th>Appointment No.</th>
								<th>Date</th>
								<th>Time</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Yelani Surige</td>
								<td>Dr. Dilum Palliyaguru</td>
								<td>Hemas Hospital</td>
								<td>1</td>
								<td>05/02/2020</td>
								<td>08:55</td>
							</tr>
						</tbody>
					</table>
				</div>
				<hr>

			</div>
		</div>
	</div>




</body>
</html>