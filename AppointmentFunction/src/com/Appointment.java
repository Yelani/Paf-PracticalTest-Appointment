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
		
	
	

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
}//end
