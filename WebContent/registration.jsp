<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8" autoFlush="true" buffer="18kb" errorPage="registrationError.jsp"
    isErrorPage="false" trimDirectiveWhitespaces="true"
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="assets\Stylesheet\bootstrap.min.css" />
    <script src="main.js"></script>
</head>
<body>

	<%if(session.getAttribute("userid")!=null){
			response.sendRedirect("home.jsp");
		}
	 %>
   <!-- main navigation bar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="home.jsp">MedXplore</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
				<%
  					session = request.getSession(false); 
 					if(session.getAttribute("userid")==null){%>
				<li class="nav-item active">
                    <a class="nav-link" href="login.jsp">Login <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="registration.jsp">Registration</a>
                </li>
					<%}
 					else{%>
				<li><a class="nav-link active" href="http://localhost:8080/MedXplore/Dashboard.jsp">Dashboard</a></li>
				<li><a class="nav-link active" href="logout">Log Out</a></li>
					<%}
		 				%>
            	
                
            </ul>
        </div>
    </nav>

    <!-- Secondary Navigation Bar -->
    <nav class="nav nav-pills nav-fill">
        <a class="nav-item nav-link" href="home.jsp">Home</a>
        <a class="nav-item nav-link" href="mentor.jsp">Mentor</a>
        <a class="nav-item nav-link" href="developers.jsp">Developers</a>
        <a class="nav-item nav-link" href="project.jsp">Project</a>
        <a class="nav-item nav-link" href="contact.jsp">Contact Us</a>
    </nav>

    


    <h1>Register</h1>
    <form action="http://localhost:8080/MedXplore/register" method="POST">
    	<div class="form-group">
            <label for="exampleRoleName">Role: </label>
            <input type="text" readonly class="form-control" id="exampleRoleName" name="roleName" value="User">
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">User ID: </label>
            <input type="text" class="form-control" id="exampleInputEmail1" name="userid" placeholder="Enter User ID">
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Email address: </label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="emailid" placeholder="Enter email">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
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

    <script src="assets\javascript\bootstrap.min.js"></script> 

</body>
</html>