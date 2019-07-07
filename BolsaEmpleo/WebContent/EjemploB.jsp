<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="administracion.*" %>
<% 
String parroquia = request.getParameter("parroquia") !=null ? request.getParameter("parroquia") :"0";
String nombreParroquia= ControladorAdm.verParroquia(parroquia);
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EjemploB</title>
</head>
<body>
	<h1>
	<%if(parroquia.equals("0")){ %>
		No ha seleccionado nada
	<%}else{ %>
		<%= parroquia %>
		
		
	<%}%>
	</h1>
</body>
</html>