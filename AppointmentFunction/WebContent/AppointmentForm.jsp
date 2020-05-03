<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Views/css/bootstrap.css" ">
<meta charset="ISO-8859-1">
<title>Appointment Form</title>
</head>
<body>

<div class="container">
	<div class="row">
		<div class="col">
       
			<h1>Items Management</h1>
			<form method="post" action="items.jsp" >
				Appointment ID: <input name="appointmentid" type="text" class="form-control"><br> 
				Patient Name:<input name="itemName" type="text" class="form-control"><br> 
				Doctor Name: <input name="itemPrice" type="text" class="form-control"><br> 
				Hospital Name: <input name="itemDesc" type="text" class="form-control"><br>
				Appointment Number: <input name="itemDesc" type="text" class="form-control"><br>
				Date: <input name="itemDesc" type="text" class="form-control"><br>
				Time: <input name="itemDesc" type="text" class="form-control"><br> 
			<input name="btnSubmit" type="submit" value="Save" class="btn btn-primary">
			
			</form>

<br>

			<table border="1">
				<tr>
					<th>Appointment ID</th>
					<th>Patient Name</th>
					<th>Doctor Name</th>
					<th>Hospital Name</th>
					<th>Appointment Number]</th>
					<th>Date</th>
					<th>Time</th>
				</tr>
		
			</table>
		</div>   
	</div>  
</div> 

	


</body>
</html>