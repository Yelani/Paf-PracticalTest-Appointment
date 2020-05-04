<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="Views/css/bootstrap.css">

<script src="Views/js/jquery-3.5.0.min.js" type="text/javascript"></script>
<script src="Views/css/bootstrap.min.css" type="text/javascript"></script>

<title>Appointment Form</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col">

				<div class="container-fluid">
					<br>
					<center>
						<h1>Appointments Management</h1>
					</center>
					<br>
				</div>
				<hr>

				<br>

				<!-- FORM -->

				<form method="post" action="items.jsp">
					Appointment ID: <input name="appointmentid" type="text"
						class="form-control"><br> Patient Name:<input
						name="itemName" type="text" class="form-control"><br>
					Doctor Name: <input name="itemPrice" type="text"
						class="form-control"><br> Hospital Name: <input
						name="itemDesc" type="text" class="form-control"><br>
					Appointment Number: <input name="itemDesc" type="text"
						class="form-control"><br> Date: <input
						name="itemDesc" type="text" class="form-control"><br>
					Time: <input name="itemDesc" type="text" class="form-control"><br>
					<input name="btnSubmit" type="submit" value="Save"
						class="btn btn-success">

				</form>

				<br>

				<!-- TABLE -->

				<div class="container">
					<h2>Appointments</h2>
					<table class="table">
						<thead>
							<tr>
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