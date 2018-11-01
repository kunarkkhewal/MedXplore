<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8" autoFlush="true" buffer="18kb"
    isErrorPage="false" trimDirectiveWhitespaces="true"
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mentor</title>
    <link rel="stylesheet" type="text/css" media="screen" href="assets\Stylesheet\main.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="assets\Stylesheet\bootstrap.min.css" />
    <script src="main.js"></script>
</head>

<body>

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

    <div class="card text-center container" style="max-width:50%; margin-top: 1%">
        <div class="card-header">
            <h3>Mentor</h3>
        </div>
        <img class="card-img-top" src="assets/images/Mentor_Snap.jpg" alt="Card image cap" style="width:40%; align-self: center; margin-top:2%;" >
        <div class="card-body">
            <h5 class="card-title">Mr. C.M. Sharma</h5><br>
            <p class="card-text">
                <h5>Assistant Professor,</h5>
                <h5>Department of Information Technology, </h5>
                <h5>BPIT, Delhi</h5><br>
            </p>
        </div>
    </div>

    <script src="assets\javascript\bootstrap.min.js"></script>
</body>

</html>