$(document).ready(function() {
	$("#alertSuccess").hide();
	$("#alertError").hide();
});

//SAVE================================
$(document).on("click", "#btnSave", function(event) 
{   
	// Clear alerts---------------------
	$("#alertSuccess").text(""); 
	$("#alertSuccess").hide(); 
	$("#alertError").text("");
	$("#alertError").hide(); 
	
	// Form validation-------------------
	var status = validateAppointmentForm();
	if (status != true)
	{
		
		$("#alertError").text(status);
		$("#alertError").show();
		return;
		
	}
	
	// If valid------------------------
	var type = ($("#hidAppointmentIDSave").val() == "") ? "POST" : "PUT"; 
	
	$.ajax( 
	{
		
		url : "appointmentAPI",
		type : type,
		data : $("#formApp").serialize(),
		dataType : "text",
		complete : function(response, status)
		{
			onAppointmentSaveComplete(response.responseText, status); 
		}
		
	});
	
});	


function onAppointmentSaveComplete(response, status)
{
	
	if (status == "success")
	{
		
		var resultSet = JSON.parse(response); 
		
		if (resultSet.status.trim() == "success")
		{
			
			$("#alertSuccess").text("Appointment Successfully saved."); 
			$("#alertSuccess").show(); 
			
		} else if (resultSet.status.trim() == "error")
		{
			
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
			
		}
		
		
	} else if (status == "error")
	{
		
		$("#alertError").text("Error while saving appointment.");
		$("#alertError").show(); 
	}else
	{
		$("#alertError").text("Unknown error while saving appointment..")
		$("#alertError").show();
		
	}
	
	$("#hidItemIDSave").val(""); 
	$("#formItem")[0].reset();
	
	
}

//REMOVE
$(document).on("click", ".btnRemove", function(event)
{
	$.ajax(
	{
		url : "appointmentAPI",
		type : "DELETE", 
		data : "aid=" + $(this).data("aid"), 
		dataType : "text", 
		complete : function(response, status)
		{
			onAppointmentDeleteComplete(response.responseText, status); 
		}
		
	});
				
});


function onAppointmentDeleteComplete(response, status)
{
	if (status == "success")
	{
		var resultSet = JSON.parse(response); 
		
		if (resultSet.status.trim() == "success") 
		{
			
			$("#alertSuccess").text(" Appointment Successfully deleted."); 
			$("#alertSuccess").show(); 
			
			$("#divItemsGrid").html(resultSet.data); 
			
		}else if (resultSet.status.trim() == "error") 
		{
			
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
			
		}
	} else if (status == "error") 
	{
		
		$("#alertError").text("Error while deleting appointment.");
		$("#alertError").show();
		
	}else
	{
		
		$("#alertError").text("Unknown error while deleting..");
		$("#alertError").show();
	}

}


//CLIENT MODEL
function validateAppointmentForm()
{
	//Patient Name
	if ($("#patientName").val().trim() == "")
	{
		return "Insert Patient Name."
	}
	
	//Doctor Name
	if ($("#doctorName").val().trim() == "")
	{
		return "Insert Doctor Name."
	}
	
	//Hospital Name
	if ($("#hospitalName").val().trim() == "")
	{
		return "Insert Hospital Name."
	}
	
	//Appointment Number
	if ($("#appointmentNo").val().trim() == "")
	{
		return "Insert Appointment Number."
	}
	
	//Date
	if ($("#date").val().trim() == "")
	{
		return "Insert Date."
	}
	
	//Time
	if ($("#patientName").val().trim() == "")
	{
		return "Insert Time."
	}
	
	
	
	
	

}


































