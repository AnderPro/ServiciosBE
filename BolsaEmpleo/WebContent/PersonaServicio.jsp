<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="administracion.Adm" %>
	
<!DOCTYPE html>


<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="bootstrap/css/estilo.css" rel="stylesheet" type="text/css">

<meta charset="ISO-8859-1">
<title>Persona Servicio</title>
</head>
<body>

<header class="menu">
			<a href="RegistroServicios.jsp"> <img src="images/logo2.png">
			</a>
			Regresar a Seleccionar Servicios
</header>

	<h1>Persona: Abejita </h1>
	<p>Usted ha seleccionado los siguientes servicios:</p>
	
	<%String services[]= request.getParameterValues("servicio");
	if(services != null){%>
	
	<h4>Servicios seleccionados:</h4>
	<ul>
		<%for(int i=0; i<services.length; i++){%>
		<li><%=services[i]%></li>
		<%}%>
		<p>AQUI DEBO ENVIAR TODOS LOS SERVICIOS ,
		O LLAMAR A UN METODO ME TRAIGA EL CODIGO PERSONA ETC ETC</p>
		<% %>  
	</ul>
	<%}else{%>
		no has seleccionado nada
	<%} %>
	


</body>
</html>