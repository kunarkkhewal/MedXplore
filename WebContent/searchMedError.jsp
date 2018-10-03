<%@ page language="java" contentType="text/html; charset=UTF-8"
   isErrorPage="true" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MedXplore: Search Medicine Error</title>
</head>
<body>
	<%
		// THIS IS FOR VALIDATING THE SESSION DURING DIRECT URL ACCESS...
		if(session.getAttribute("userid")==null){
			response.sendRedirect("home.jsp");
		}
		if(session.getAttribute("fromSearchMed")=="false"){
			response.sendRedirect("Dashboard.jsp");
		}
	%>
	
	<div class="alert alert-danger" role="alert">
		<h1>Error in Searching!</h1>
	  	<p>please try again later...</p>
	</div>
	<%
		session.setAttribute("fromSearchMed", "false");
	%>
</body>
</html>