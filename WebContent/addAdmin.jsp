<%@ page import="com.medxplore.app.dto.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Add Admin</title>
    <!-- Bootstrap core CSS -->
    <link href="assets/Stylesheet/Bootstrap.css" rel="stylesheet">



    <!-- Custom styles for this template -->
    <link href="assets/Stylesheet/dashboard.css" rel="stylesheet">
</head>

<body>
    <%
		// THIS IS FOR VALIDATING THE SESSION DURING DIRECT URL ACCESS...
		if(session.getAttribute("userid")==null){
			response.sendRedirect("home.jsp");
		}
		
	%>

    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="home.jsp">MedXplore</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="logout">Log Out</a></li>
                </ul>
                <!--           <form class="navbar-form navbar-right"> -->
                <!--             <input type="text" class="form-control" placeholder="Search..."> -->
                <!--           </form> -->
            </div>
        </div>
    </nav>
    <%      	
          UserDTO userDTO = (UserDTO)session.getAttribute("userdata");
    		if(userDTO==null){
    			response.sendRedirect("home.jsp");
    		}
          boolean isActive = true;
          %>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3 col-md-2 sidebar">
                <ul class="nav nav-sidebar">
                    <li class=""><a href="Dashboard.jsp">My Dashboard</a></li>
                    <% 
          if(userDTO!=null && userDTO.getRights()!=null && userDTO.getRights().size()>0){
          for(RightDTO rightDTO : userDTO.getRights()) { %>
                    <li class=""><a href="<%=rightDTO.getScreenName()%>">
                            <%=rightDTO.getRightName() %></a></li>
                    <%
          isActive = false;
          }
          }
          %>
                    <!--  <li class="active"><a href="#">Overview <span class="sr-only">(current)</span></a></li>
            <li><a href="#">Reports</a></li>
            <li><a href="#">Analytics</a></li>
            <li><a href="#">Export</a></li> -->
                </ul>


            </div>
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <h1 style="text-align: center;">Admin Registration</h1>
                <div class="container" style="width:70%; border: 1px solid rgb(243, 245, 245); border-radius:2%; margin-bottom: 2%; padding: 1%;">
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
                            <input type="email" class="form-control" id="exampleInputEmail1" pattern="([a-z|0-9])\w+[@]\w+[.]\w{2,3}" aria-describedby="emailHelp"
                                name="emailid" placeholder="Enter email">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password: </label>
                            <input type="password" class="form-control" id="exampleInputPassword1" name="pwd"
                                placeholder="Password">
                        </div>
                        <div class="form-group" style="display: none;">
                            <label for="exampleInputPassword1">Confirm Password: </label>
                            <input type="password" class="form-control" id="exampleInputPassword1" name="cpwd"
                                placeholder="Password">
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <label for="firstname">First Name: </label>
                                <input name="firstname" type="text" class="form-control" pattern="([a-z|A-Z])\w+" placeholder="First name">
                            </div>
                            <div class="col">
                                <label for="lastname">Last Name: </label>
                                <input name="lastname" type="text" class="form-control" pattern="([a-z|A-Z])\w+" placeholder="Last name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputAddress">Address: </label>
                            <input type="text" class="form-control" id="inputAddress" pattern="([a-z|A-Z])\w+" name="address" placeholder="Address">
                        </div>
                        <div class="form-group">
                            <label for="inputAddress">Contact: </label>
                            <input type="text" class="form-control" id="inputAddress" name="contactno" pattern="([0-9]){10}" placeholder="Contact No">
                        </div>
                        <button type="reset" class="btn">Reset</button>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>


            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="jquery-slim.min.js"><\/script>')</script>
    <script src="assets/javascript/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="holder.min.js"></script>

    <script src="assets\javascript\bootstrap.min.js"></script>

</body>

</html>