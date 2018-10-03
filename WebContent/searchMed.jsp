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
	
	<!-- Search Bar  -->
	<h1>Search Medicine</h1>
	<!-- <form action="http://localhost:8080/MedXplore/search" method="post">
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
	</form> -->
	<form class="form-inline my-2 my-lg-0" action="http://localhost:8080/MedXplore/search" method="post">
      <input class="form-control mr-sm-2" type="search" placeholder="Enter Medicine Name" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
</body>
</html>