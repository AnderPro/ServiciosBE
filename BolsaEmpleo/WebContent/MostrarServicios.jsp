<%@page import="administracion.ControladorAdm"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 

// AQUI me falta crear el  etodo verCatalogo
String catalogo = request.getParameter("catalogo") !=null ? request.getParameter("catalogo") :"0";
String nombreCatalogo= ControladorAdm.verCatalogo(catalogo);
%>

<h1> Hola Aqui voy a mostrar los servicios dado un catalogo</h1>

<%if(catalogo.equals("0")){ %>
		No ha seleccionado nada
	<%}else{ %>
		<%= nombreCatalogo %>
		
		
	<%}%>

</body>
</html>