<%@page import="com.medxplore.app.dto.RightDTO"%>
<%@page import="com.medxplore.app.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="searchMedError.jsp" isErrorPage="false" import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MedXplore: Search Medicine</title>
<!-- Bootstrap core CSS -->
    <link href="assets/Stylesheet/Bootstrap.css" rel="stylesheet">

    

    <!-- Custom styles for this template -->
    <link href="assets/Stylesheet/dashboard.css" rel="stylesheet"></head>
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
          <!-- Search Bar  -->
		<h1>Search Medicine</h1>
		<!-- <form action="http://localhost:8080/MedXplore/search" method="post">
		<table>
			<tr>
				<td>
					<input name="medicineName" placeholder="Enter Medicine Name" type="text"/>
				</td>
				<td>
					<input type="submit" value="Search"/>
				</td>
			</tr>
		</table>
		</form> -->
		<form class="form-inline my-2 my-lg-0" action="http://localhost:8080/MedXplore/search" method="post">
	  		<select class="form-control" id="exampleFormControlSelect1" name="categoryName" >
			<option selected="selected" disabled="disabled">Choose Category..</option>
     		<option>Diabetes</option>
      		<option>Fever</option>
      		<option>Pain</option>
      		<option>Bacterial Infection</option>
      		</select>
      		<input class="form-control mr-sm-2" type="search" placeholder="Enter Medicine Name" aria-label="Search" name="medicineName">
      		<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    	</form>
        
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
</body>
</html>