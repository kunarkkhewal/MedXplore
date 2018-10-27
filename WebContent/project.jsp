<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8" autoFlush="true" buffer="18kb"
    isErrorPage="false" trimDirectiveWhitespaces="true"
%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Project</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
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

    <div class="jumbotron">
        <h1 class="display-4">MedXplore</h1>
        <p class="lead">The importance of medicines has increased a lot because it has enhanced the life
expectancy of human beings. For last many years,medicines have been a very
important part of human as well as animal lives.They have paved a way to reliable
methods of curing and protecting human lives. But these days, doctors are
commercializing this area for their benefit only. They particularly recommend
medicines of brands which can earn them profit.
By implementation of this project, we aim to change the scenario by allowing user to
choose the brand according to its price as per the user’s pocket allow in his/her own local area.</p>
        <hr class="my-4">
        <!-- <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
        <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a> -->
    </div>
    <script src="assets\javascript\bootstrap.min.js"></script>
</body>
</html>