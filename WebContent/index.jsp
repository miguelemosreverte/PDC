<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>PDC</title>

	<link rel="stylesheet" type="text/css" href="./css/style.css"/>
	<script type="text/javascript" src="./js/jquery.js"></script>
	<script type="text/javascript" src="./js/ajax.js"></script>
	
	
	<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
</head>
<body>
	<tags:hello exampleAttribute="Hello from custom tag!"/>
	<%
	int i = 0;
	
	List<List<String>> equipos = new ArrayList<List<String>>();
					   equipos.add(Arrays.asList("EQUIPO A", "EQUIPO B"));
					   equipos.add(Arrays.asList("EQUIPO C", "EQUIPO D"));
					   equipos.add(Arrays.asList("EQUIPO E", "EQUIPO F"));
					   equipos.add(Arrays.asList("EQUIPO G", "EQUIPO H"));
				  	   equipos.add(Arrays.asList("EQUIPO I", "EQUIPO J"));
					   equipos.add(Arrays.asList("EQUIPO K", "EQUIPO L"));
					   equipos.add(Arrays.asList("EQUIPO M", "EQUIPO N"));
					   equipos.add(Arrays.asList("EQUIPO O", "EQUIPO P"));
					   equipos.add(Arrays.asList("EQUIPO Q", "EQUIPO R"));
					   equipos.add(Arrays.asList("EQUIPO S", "EQUIPO T"));
	%>
	<jsp:include page="jsp/examples/formGet.jsp" />
</body>
</html>