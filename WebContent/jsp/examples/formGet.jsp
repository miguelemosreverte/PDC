<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<form id="form" action="javascript:void(null)">
	<table >
		<tr>
			<td>User</td>
			<td><input name="user" /></td>
		</tr>
		<tr>
			<td>password</td>
			<td><input name="password" /></td>
		</tr>
	</table>
	<input type="submit" id="FormGetExample"/>
</form>



<%!
String url = "";
%>

<script>



$(document).ready(function() {
	
	$("#FormGetExample").click(function() {
		
		$("#prode").hide();
		$("#resultados").html("<p>Procesando...</p>");
				
		const data = {
				user : "admin",
				password : "admin"
		}
		
		
		console.log(data)
		
		
		$.ajax({
			url: "/FormGet",
			type: "get",
			data: data,
			datatype: "html",
			error: function(hr) {
				$("#resultados").empty();
				$("#message").html(hr.responseText);
				$("#prode").show();
			},
			success: function(html) {
				$("#resultados").html(html);
				$("#prode").show();
				$("#bresultados").hide();
				$("#bvolver").show();
			}			
		});	
		
		
	});	

});


</script>