<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MedXplore: Registration Success</title>
<link rel="stylesheet" type="text/css" media="screen" href="assets\Stylesheet\bootstrap.min.css" />
</head>
<body>

	<%
	if(session.getAttribute("userID")==null){
		response.sendRedirect("home.jsp");
	}
	%>

	<div class="alert alert-success" role="alert">
		<h1>Hi <%=session.getAttribute("userID")%>, you are successfully registered!</h1>
	</div>
	<a href="http://localhost:8080/MedXplore/login.jsp" class="btn btn-success btn-lg active" role="button" aria-pressed="true">Proceed to Login</a>
	<%
		session.invalidate();
	%>
</body>
</html>