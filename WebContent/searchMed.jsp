<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="searchMedError.jsp" isErrorPage="false" import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MedXplore: Search Medicine</title>
</head>
<body>
	<%
		// THIS IS FOR VALIDATING THE SESSION DURING DIRECT URL ACCESS...
		if(session.getAttribute("userid")==null){
			response.sendRedirect("home.jsp");
		}
		
	%>
	
	<h1>Search Medicine</h1>
	<form action="http://localhost:8080/MedXplore/search" method="post">
		<table>
			<tr>
				<td>
					<input name="medicineName" placeholder="Enter Medicine Name" type="text"/>
				</td>
				<td>
					<input type="submit" value="Search"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>