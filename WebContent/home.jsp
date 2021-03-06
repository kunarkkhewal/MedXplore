<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8" autoFlush="true" buffer="18kb"
    isErrorPage="false" trimDirectiveWhitespaces="true"
%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="assets\Stylesheet\main.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="assets\Stylesheet\bootstrap.min.css" />
    <script src="main.js"></script>
    <style>
        
        .jumbotron {
            margin-bottom: 0px;
            background-image: url(assets/images/wood.jpg);
            background-position: 0% 25%;
            background-size: cover;
            background-repeat: no-repeat;
            color: white;
            text-shadow: black 0.3em 0.3em 0.3em;
        }
    </style>
</head>

<body>

    <!-- main navigation bar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand text-success" href="home.jsp">MedXplore</a>
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
    <nav class="nav nav-pills nav-fill navbar-light ">
        <a class="nav-item nav-link" href="home.jsp">Home</a>
        <a class="nav-item nav-link" href="mentor.jsp">Mentor</a>
        <a class="nav-item nav-link" href="developers.jsp">Developers</a>
        <a class="nav-item nav-link" href="project.jsp">Project</a>
        <a class="nav-item nav-link" href="contact.jsp">Contact Us</a>
    </nav>

    <!-- home page where project related info is presented -->
    <div class="jumbotron">
        <h1 class="display-1 text-center text-danger h1"><b>Welcome!</b></h1>
        <h1 class="display-4 text-center"><b>MedXplore</b></h1>
        <p class="lead text-center">Prototype for B.Tech Minor Project</p>
        <hr class="my-4">
        <!--         <p>It uses utility classes for typography and spacing to space content out within the larger container.</p> -->
        <!-- <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a> -->
    </div>

    <script src="assets\javascript\bootstrap.min.js"></script>
</body>

</html>