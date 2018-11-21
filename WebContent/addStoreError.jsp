<%@ page language="java" contentType="text/html; charset=UTF-8"
   isErrorPage="true" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MedXplore: Add Store Error</title>
<link rel="stylesheet" type="text/css" media="screen" href="assets\Stylesheet\bootstrap.min.css" />
</head>
<body>
	<%
	if(session.getAttribute("userID")==null){
		response.sendRedirect("addStore.jsp");
	}
	%>
	<div class="alert alert-danger" role="alert">
		<h1>Error in Adding Store! Please try again...</h1>
	</div>
	<a href="http://localhost:8080/MedXplore/addStore.jsp" class="btn btn-success btn-lg active" role="button" aria-pressed="true">Return to Add Store</a>

</body>
</html>