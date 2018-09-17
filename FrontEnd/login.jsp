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
    <title>Login</title>
    <link rel="stylesheet" type="text/css" media="screen" href="assets\Stylesheet\main.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="assets\Stylesheet\login.css" />
    <script src="main.js"></script>
</head>
<body>

    <header>
        <div class="navigation">
            <div class="nav-up">
                <div id="logo" class="left">
                    <a href="index.jsp"> <img src="assets\images\mx.png" alt=""></a>
                    
                </div>
                <div class="right">
                    <ul>
                        <li><a href="login.jsp">Login</a></li>
                        <li><a href="registration.jsp">Registration</a></li>
                    </ul>
                </div>
            </div> 
        </div>

        <div class="navigation">
            <div class="nav-down">
                <ul>
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="mentor.jsp">Mentor</a></li>
                    <li><a href="developers.jsp">Developers</a></li>
                    <li><a href="project.jsp">Project</a></li>
                    <li><a href="contact.jsp">Contact Us</a></li>
                </ul>
            </div>
        </div>
    </header>

    <form id="login">
        <div>
            <label for="userid">UserID: </label>
            <input id="userid" type="text" name="userid" placeholder="Enter UserID" required>
                
            <br>

            <label for="password"><b>Password: </b></label>
            <input id="password" type="password" name="pwd" placeholder="Enter Password" required pattern=".{5,10}">
        
            <br>

            <button type="submit">Login</button>
            <button type="reset">Reset</button>
          
        </div>
      
    </form>
</body>
</html>