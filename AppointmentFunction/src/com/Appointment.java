package com;

import java.sql.*;

public class Appointment {
	
	//CONNECTION
		private Connection connect()
		{
			Connection con = null;
			
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				
				con = DriverManager.getConnection("Jdbc:mysql://localhost:3306/app", "root", "");  
			}
			catch(Exception e)
			{
				e.printStackTrace(); 
			}
			
			return con; 
		}
		
		//READ
		public String readAppointments()
		{
			String output = ""; 
			
			try
			{
				
				Connection con = connect(); 
				
				if (con == null)
				{
					
					return "Error while connecting to the database for retrieving appointments.";
					
				}
				
				// Prepare the html table to be displayed
				output = "<table class=\"table table-bordered\"><tr><th>Patient Name</th><th>Doctor Name</th><th>HospitalName</th><th>Appointment No</th><th>Date</th>\""
						+ "<th>Time</th><th>Update</th><th>Remove</th></tr>";  
				
				//SQL statements
				String query = "select * from appointments";
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(query); 
				
				// iterate through the rows in the result set
				while (rs.next()) 
				{
					
					String aid = Integer.toString(rs.getInt("aid")); 
					String patientName = rs.getString("patientName"); 
					String doctorName = rs.getString("doctorName");
					String hospitalName =rs.getString("hospitalName"); 
					String appointmentNo = rs.getString("appointmentNo"); 
					String date = rs.getString("date");
					String time = rs.getString("time");
					
					// Add into the html table 
					output += "<tr><td><input id='hidAppointmentIdUpdate' name='hidAppointmentIdUpdate' type='hidden' value='" + aid + "'>" + patientName + "</td>";
					output += "<td>" + doctorName + "</td>"; 
					output += "<td>" + hospitalName + "</td>"; 
					output += "<td>" + appointmentNo + "</td>"; 
					output += "<td>" + date + "</td>"; 
					output += "<td>" + time + "</td>"; 
					
					
					// buttons 
					output += "<td><input name='btnUpdate' type='button' value='Update' class='btnUpdate btn btn-secondary'></td>"
								+ "<td><input name='btnRemove' type='button' value='Remove' class='btnRemove btn btn-danger' data-itemid='" + aid + "'>" + "</td></tr>";    
					
					
				}
				
				con.close();
				
				// Complete the html table
				output += "</table>";
				
			}
			catch(Exception e)
			{
				output = "Error while retrieving the appointments."; 
				System.err.println(e.getMessage()); 
			}
			
			return output; 
		}
		
		//INSERT
		public String insertAppointment(String patientName, String doctorName, String hospitalName, String appointmentNo, String date, String time) 
		{
		
			String output = ""; 
			
			try
			{
			
				Connection con = connect(); 
				
				if (con == null)
				{
					
					return "Error while connecting to the database for Inserting appointments.";
				
				}
				
				
				//Insert Query
				String query = "INSERT INTO `appointments`(`aid`, `patientName`, `doctorName`, `hospitalName`, `appointmentNo`, `date`, `time`) VALUES (?,?,?,?,?,?,?)";   
				
				// create a prepared statement
				PreparedStatement preparedStmt = con.prepareStatement(query); 
				
				// binding values 
				preparedStmt.setInt(1, 0); 
				preparedStmt.setString(2, patientName); 
				preparedStmt.setString(3, doctorName); 
				preparedStmt.setString(4, hospitalName);
				preparedStmt.setString(5, appointmentNo); 
				preparedStmt.setString(6, date);
				preparedStmt.setString(7, time); 
				
				// execute the statement
				preparedStmt.execute(); 
				con.close();
				
				String newAppointments = readAppointments(); 
				output = "{\"status\":\"success\", \"data\": \"" + newAppointments + "\"}";
				
				
			}
			catch(Exception e)
			{

				output = "{\"status\":\"error\",\"data\":\"Error while inserting the appointment.\"}";
				System.err.println(e.getMessage()); 
				
			}
		
			return output; 
			
		}
		
		
		//UPDATE
		public String updateItem(String aid, String patientName, String doctorName, String hospitalName, String appointmentNo, String date, String time)
		{
			
			String output = ""; 
			
			try
			{
				Connection con = connect(); 
				
				if (con == null) 
				{
					
					return "Error while connecting to the database for updating appointments.";  
					
				}
				
				//Update query
				String query =  "UPDATE `appointments` SET `patientName`=?,`doctorName`=?,`hospitalName`=?,`appointmentNo`=?,`date`=?,`time`=? WHERE `aid`=?";
				
				// create a prepared statement 
				PreparedStatement preparedStmt = con.prepareStatement(query); 
			
				// binding values
				preparedStmt.setString(1, patientName); 
				preparedStmt.setString(2, doctorName); 
				preparedStmt.setString(3, hospitalName); 
				preparedStmt.setString(4, appointmentNo); 
				preparedStmt.setString(5, date);
				preparedStmt.setString(4, time); 
				preparedStmt.setInt(5, Integer.parseInt(aid)); 
				
				// execute the statement 
				preparedStmt.execute();
				con.close(); 
				
				String newAppointments = readAppointments(); 
				output = "{\"status\":\"success\", \"data\": \"" + newAppointments + "\"}";
							
			}
			catch(Exception e)
			{
				
				output = "{\"status\":\"error\", \"data\": \"Error while updating the item.\"}";
				System.err.println(e.getMessage());
				
			}
			
			return output; 
			
		}
		
		
		//DELETE
		public String deleteItem(String aid) 
		{
			
			String output = ""; 
			
			try
			{
				Connection con = connect(); 
				
				if (con == null) 
				{
					
					return "Error while connecting to the database for deleting an appointment.";  
					
				}
				
				//Delete query
				String query = "DELETE FROM `appointments` WHERE `aid`=?"; 
				
				// create a prepared statement 
				PreparedStatement preparedStmt = con.prepareStatement(query); 
				
				// binding values
				preparedStmt.setInt(1, Integer.parseInt(aid)); 
				
				// execute the statement 
				preparedStmt.execute(); 
				con.close(); 
				
				String newAppointments = readAppointments(); 
				output = "{\"status\":\"success\", \"data\": \"" + newAppointments + "\"}";
				
				
			}
			catch(Exception e)
			{
				
				output = "{\"status\":\"error\", \"data\": \"Error while deleting an appointment.\"}";
				System.err.println(e.getMessage()); 
				
				
			}
			
			return output;
		}
		
	
	

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
}//end
