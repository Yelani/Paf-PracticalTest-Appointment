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
	var status = validateItemForm();
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
			onItemSaveComplete(response.responseText, status); 
		}
		
	});
	
});	


function onItemSaveComplete(response, status)
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

