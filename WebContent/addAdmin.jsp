<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" media="screen" href="assets\Stylesheet\bootstrap.min.css" />
</head>
<body>
	<%
		// THIS IS FOR VALIDATING THE SESSION DURING DIRECT URL ACCESS...
		if(session.getAttribute("userid")==null){
			response.sendRedirect("home.jsp");
		}
		
	%>

	<h1>Admin Registration</h1>
    <form action="http://localhost:8080/MedXplore/register" method="POST">
    	<div class="form-group">
            <label for="exampleRoleName">Role: </label>
            <input type="text" readonly class="form-control" id="exampleRoleName" name="roleName" value="Admin">
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">User ID: </label>
            <input type="text" class="form-control" id="exampleInputEmail1" name="userid" placeholder="Enter User ID">
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Email address: </label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="emailid" placeholder="Enter email">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password: </label>
            <input type="password" class="form-control" id="exampleInputPassword1" name="pwd" placeholder="Password">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Confirm Password: </label>
            <input type="password" class="form-control" id="exampleInputPassword1" name="cpwd" placeholder="Password">
        </div>
        <div class="form-row">
            <div class="col">
            	<label for="firstname">First Name: </label>
                <input name="firstname" type="text" class="form-control" placeholder="First name">
            </div>
            <div class="col">
            	<label for="lastname">Last Name: </label>
                <input name="lastname" type="text" class="form-control" placeholder="Last name">
            </div>
        </div>      
        <div class="form-group">
            <label for="inputAddress">Address: </label>
            <input type="text" class="form-control" id="inputAddress" name="address" placeholder="Address">
        </div>
        <div class="form-group">
            <label for="inputAddress">Contact: </label>
            <input type="text" class="form-control" id="inputAddress" name="contactno" placeholder="Contact No">
        </div>
        <button type="reset" class="btn">Reset</button>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>

</body>
</html>