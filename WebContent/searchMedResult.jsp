<%@page import="com.medxplore.app.dto.RightDTO"%>
<%@page import="com.medxplore.app.dto.UserDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.medxplore.app.dto.SearchDTO" %>
<%@page import="com.medxplore.app.dto.MedAltDTO" %>
<%@page import="com.medxplore.app.dto.StoreDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" autoFlush="true" buffer="18kb" 
    errorPage="searchMedError.jsp" isErrorPage="false" trimDirectiveWhitespaces="true" 
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MedXplore: Search Medicine Result</title><!-- Bootstrap core CSS -->
    <link href="assets/Stylesheet/Bootstrap.css" rel="stylesheet">

    

    <!-- Custom styles for this template -->
    <link href="assets/Stylesheet/dashboard.css" rel="stylesheet"></head>
<body>
	
	<%
		// THIS IS FOR VALIDATING THE SESSION DURING DIRECT URL ACCESS...
		if(session.getAttribute("medname")==null){
			response.sendRedirect("searchMed.jsp");
		}
		
		SearchDTO searchDTO = (SearchDTO)session.getAttribute("searchData");
		if(searchDTO==null){
			response.sendRedirect("searchMedError.jsp");
		}
		ArrayList<MedAltDTO> medAltList = (ArrayList<MedAltDTO>)session.getAttribute("altData");
	%>
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
        
        <h1>Search Medicine Result</h1>
        <h3>Medicine: <%=searchDTO.getMedname()%>	(<%=searchDTO.getPackSize()%>'s)</h3>
		<h3>Salts:	<%for(int i = 0 ; i < searchDTO.getSalts().size() ; i++){%>
			<%=searchDTO.getSalts().get(i) + " "%>
			<%} %></h3>
		<h3>Price: ₹ <%=searchDTO.getPrice() %>	</h3>

		<%
		for(StoreDTO storeDTO : searchDTO.getStores()){ %>
		<ul>
			<li><%=storeDTO.getStoreName() %>
			<br/>
			<%=storeDTO.getStoreAddress() %>
			<br/>
			<%=storeDTO.getStoreContactNo() %>
			</li>
		</ul>
		<%
		} %>
		
		<h2>ALTERNATES:-</h2></br>
		
		<%
		for(MedAltDTO medAltDTO : medAltList){ %>
		<ul>
			<li><%=medAltDTO.getMedname() %>
			<br/>
			<%=medAltDTO.getPackSize() %>
			<br/>
			₹ <%=medAltDTO.getPrice() %>
			</li>
		</ul>
		<%
		} %>
		
		<%
		session.setAttribute("fromSearchMed", "false");
		%>		
<!-- 	<a href="http://localhost:8080/MedXplore/searchMed.jsp" class="btn btn-success btn-lg active" role="button" aria-pressed="true">Go to Search Medicine</a> -->
<!-- 	<a href="http://localhost:8080/MedXplore/Dashboard.jsp" class="btn btn-success btn-lg active" role="button" aria-pressed="true">Go to Dashboard</a> -->
        
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

