<%@ page language="java" contentType="text/html; charset=UTF-8"
   isErrorPage="true" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MedXplore: Search Medicine Error</title>
<link rel="stylesheet" type="text/css" media="screen" href="assets\Stylesheet\bootstrap.min.css" />
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
	<a href="http://localhost:8080/MedXplore/searchMed.jsp" class="btn btn-success btn-lg active" role="button" aria-pressed="true">Go to Search Medicine</a>
	<a href="http://localhost:8080/MedXplore/Dashboard.jsp" class="btn btn-success btn-lg active" role="button" aria-pressed="true">Go to Dashboard</a>
</body>
</html>