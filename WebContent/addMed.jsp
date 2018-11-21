<%@page import="com.medxplore.app.dto.RightDTO"%>
<%@page import="com.medxplore.app.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8" autoFlush="true" buffer="18kb"
    isErrorPage="false" errorPage="addMedError.jsp" trimDirectiveWhitespaces="true"
%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Add Medicine</title>
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
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
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
          <li class=""><a href="<%=rightDTO.getScreenName()%>"><%=rightDTO.getRightName() %></a></li>
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
          
         <h1 style="text-align: center;">Add Medicine</h1>
            <div class="container" style="width:70%; border: 1px solid rgb(243, 245, 245); border-radius:2%; margin-bottom: 2%;">
			<form action="http://localhost:8080/MedXplore/addMedicine" method="POST">
            <!-- Name and Manufacturer of medicine -->
            
            <div class="row">
                <div class="col">
                    <label for="medicine">Name of Medicine</label>
                    <input name="medicineName" type="text" class="form-control" placeholder="Name of Medicine">
                </div>
                <br>
                <div class="col">
                	<label for="mfg">Brand</label>
                	<select class="form-control" id="exampleFormControlSelect1" name="brand" >
						<option selected="selected" disabled="disabled">Choose Brand..</option>
     					<option value="1">Abbott Healthcare Pvt Ltd</option>
      					<option value="2">Cipla Ltd</option>
      					<option value="3">GlaxoSmithKline Pharamaceuticals Ltd</option>
      					<option value="4">Micro Labs Ltd</option>
      					<option value="5">Sanofi India Ltd</option>
      					<option value="6">Sun Pharmaceutical Industries Ltd</option>
      				</select>
                </div>
            </div>
            <br>
			<div class="row">
				<div class="col">
				<label for="category">Category of Medicine</label>
            	<select class="form-control" id="exampleFormControlSelect1" name="category" >
				<option selected="selected" disabled="disabled">Choose Category..</option>
     			<option value="1">Diabetes</option>
      			<option value="2">Fever</option>
      			<option value="3">Pain</option>
      			<option value="4">Bacterial Infection</option>
      			</select>
      			</div>
      		</div>
      		<br>
            <!-- salt 1 and composition -->
            <div class="row">
                <div class="col">
                    <label for="salt1">Salt 1</label>
                    <input name="salt1" type="text" class="form-control" placeholder="Name of Salt">
                </div>
                <div class="col">
                    <label for="conc1">Concentration (in mg)</label>
                    <input name="conc1" type="text" class="form-control" placeholder="in mg">
                </div>
            </div>
            <br>

            <!-- salt 2 and composition -->
            <div class="row">
                <div class="col">
                    <label for="salt2">Salt 2</label>
                    <input name="salt2" type="text" class="form-control" placeholder="Name of Salt">
                </div>
                <div class="col">
                    <label for="conc2">Concentration (in mg)</label>
                    <input name="conc2" type="text" class="form-control" placeholder="in mg">
                </div>
            </div>
            <br>

            <!-- capacity -->
            <div class="row">

                <div class="col">
                    <label for="cap">Price (in ₹)</label>
                    <input name="price" type="text" class="form-control" placeholder="Price of Medicine">
                </div>
                <br>
                <div class="col">
                    <label for="pills">No. of Pills/Pack</label>
                    <input name="packSize" type="text" class="form-control" placeholder="No. of Pills/Pack">
                </div>
            </div>
            <br>


            <button type="submit" class="btn btn-primary">Add Medicine</button>
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