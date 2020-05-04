//Hide the divisions used to show the alert messages

$(document).ready(function() {
	$("#alertSuccess").hide();
	$("#alertError").hide();
});

//Save==============================
$(document).on("click", "#savebtn", function(event) {

	// Clear status msges-------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();
	
	// Form validation-------------------
	var status = validateAppointmentForm(); 

	//If not valid 
	if (status != true) {  
		$("#alertError").text(status); 
		$("#alertError").show();  
		return; 
	} 
	
	//if valid
	var appointment = getAppointment($("#appointmentid").val().trim(),
									 $("#patientname").val().trim(),
									 $("#doctorname").val().trim(),
									 $("#hospitalname").val().trim(),
									 $("#appointmentno").val().trim(),
									 $("#date").val().trim(),
									 $("#time").val().trim());
	
	$("#colPatients").append(appointment);
	
	$("#alertSuccess").text("Saved successfully.");
	$("#alertSuccess").show();
	
	$("#appointmentform")[0].reset();

});


//=========================================================================
//ValidateForm

function validateAppointmentForm() 
{  
	//Validations 
	
	// APPOINTMENT ID
	if ($("#appointmentid").val().trim() == "") 
	{  
		return "Insert Appointment ID"; 
		
	}
	
	// PATIENT NAMEE
	if ($("#patientname").val().trim() == "") 
	{  
		return "Insert Patient Name"; 
		
	}
	
	// Doctor Name
	if ($("#doctorname").val().trim() == "0") 
	{  
		return "Select a Doctor"; 
		
	}
	
	// Hospital Name
	if ($("#hospitalname").val().trim() == "0") 
	{  
		return "Select a Hospital"; 
		
	}
	
	// APPOINTMENT NUMBER
	if ($("#appointmentno").val().trim() == "") 
	{  
		return "Insert Appointment Number"; 
		
	}
	
	// Date
	if ($("#date").val().trim() == "") 
	{  
		return "Insert Date"; 
		
	}
	
	// TIME
	if ($("#time").val().trim() == "") 
	{  
		return "Insert a Time"; 
		
	}
	 
	 return true; 
} 


//getAppointment======================================
//function getAppointmentCard(appointmentid, patientname, doctorname, hospitalname, date, time) 
//{  
//	var appointmentid = ""; 
//	
//	var patientname = "";
//	
//	var doctorname= "";
//	
//	var hospitalname="";
//	
//	var appointmentno="";
//	
//	var date="";
//	
//	vartime="";
//	
//	//Generate card 
//	
//	appointment += "<div class=\"appointment card bg-light m-2\" style=\"max-width: 10rem; float: left;\">";
//	appointment += "<div class=\"card-body\">";
//	appointment += appointmentid + ",";
//	appointment += "</div>";
//	appointment += "<input type=\"button\" value=\"Remove\"     class=\"btn btn-danger remove\">";
//	appointment += "</div>";
//	
//
//	return appointment; 
//	
//} 































