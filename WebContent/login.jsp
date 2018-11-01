<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8" autoFlush="true" buffer="18kb" errorPage="loginError.jsp"
    isErrorPage="false" trimDirectiveWhitespaces="true"
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" media="screen" href="assets\Stylesheet\bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="assets\Stylesheet\login.css" />
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
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
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

    <!-- login form -->

    <div class="container" style="width:50%; border: 1px solid rgb(243, 245, 245); border-radius:2%; margin-top:5%">
        <form action="http://localhost:8080/MedXplore/login" method="POST">
            <div class="form-group">
                <label for="exampleInputUserId">User ID</label>
                <input type="text" class="form-control" id="exampleInputUserId" placeholder="Enter User ID" name="userid" required>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="pwd" required>
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
            <button type="reset" class="btn">Reset</button>
        </form>
    </div>


    <script src="assets\javascript\bootstrap.min.js"></script>
</body>

</html>