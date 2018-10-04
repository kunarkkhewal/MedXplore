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
    <title>Developers</title>
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
                <li class="nav-item active">
                    <a class="nav-link" href="login.jsp">Login <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="registration.jsp">Registration</a>
                </li>
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



    <h1>Developers</h1>
    <div class="card-deck" style="width: 50%;">
        <div class="card" style="width: 25%;">
            <img class="card-img-top" src="assets/images/Dev_1.jpeg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Akshita Aggarwal</h5>
                <p class="card-text">
                    Content & Design Developer <br>
                    IT-7th Sem <br>
                    00220803115 <br>
                </p>
            </div>
        </div>
        <div class="card" style="width: 25%;">
            <img class="card-img-top" src="assets/images/Dev_2.jpg" alt="Card image cap" style="size: 120px 120px" >
            <div class="card-body">
                <h5 class="card-title">Kunark Khewal</h5>
                <p class="card-text">
                    Front-End Developer <br>
                    IT-7th Sem <br>
                    01520803115 <br>
                </p>
            </div>
        </div>
        <div class="card" style="width: 25%;">
            <img class="card-img-top" src="assets/images/Dev_3.jpg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Rohit Meghwal</h5>
                <p class="card-text">
                    Back-End Developer <br>
                    IT-7th Sem <br>
                    02720803115 <br>
                </p>
            </div>
        </div>
    </div>
    <script src="assets\javascript\bootstrap.min.js"></script>
</body>

</html>