<%@page import="com.medxplore.app.dto.SearchDTO" %>
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
	%>
	
	<h3>Medicine: <%=searchDTO.getMedname()%>	(<%=searchDTO.getPackSize()%>)</h3>
	<h3>Salt: <%=searchDTO.getSalt()%>	</h3>
	<h3>Price: <%=searchDTO.getPrice() %>	</h3>

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
	
</body>
</html>