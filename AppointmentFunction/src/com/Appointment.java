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
	
	

}
