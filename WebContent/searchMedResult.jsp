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
<title>MedXplore: Search Medicine Result</title>
<link rel="stylesheet" type="text/css" media="screen" href="assets\Stylesheet\bootstrap.min.css" />
</head>
<body>
	<h1>Search Medicine Result</h1>
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
			<%=medAltDTO.getPrice() %>
			</li>
		</ul>
	<%
		} %>
		
	<%
		session.setAttribute("fromSearchMed", "false");
	%>		
	<a href="http://localhost:8080/MedXplore/searchMed.jsp" class="btn btn-success btn-lg active" role="button" aria-pressed="true">Go to Search Medicine</a>
	<a href="http://localhost:8080/MedXplore/Dashboard.jsp" class="btn btn-success btn-lg active" role="button" aria-pressed="true">Go to Dashboard</a>
	
</body>
</html>