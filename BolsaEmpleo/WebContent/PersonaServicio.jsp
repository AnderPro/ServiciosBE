<%@page import="administracion.ControladorAdm"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="administracion.Adm"%>

<!DOCTYPE html>
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="bootstrap/css/estilo.css" rel="stylesheet" type="text/css">



<meta charset="ISO-8859-1">
<title>Servicios Registrados</title>
</head>
<body>
	<%
		String codigPersona = "1";
	%>
	<header class="menu">
		<a href="RegistroServicios.jsp"> <img src="images/logo2.png">
		</a> Regresar a Seleccionar Servicios
	</header>

	<h1>Persona:</h1>
	<p>Usted ha seleccionado los siguientes servicios:</p>

	<%
		String services[] = request.getParameterValues("servicio");
		if (services != null) {
	%>

	<h4>Servicios Registrados:</h4>
	<ul>
		<%
			for (int i = 0; i < services.length; i++) {
		%>
		<%
			String nombreServicio = "servicio: " + ControladorAdm.verServicio(services[i].toString().trim());
		%>

		<!-- ><li><%=services[i]%></li> -->
		<li><%=nombreServicio%></li>


		<%
			//Adm.registrarServicioArtesano(services[i].toString().trim(),codigPersona, "1");
		%>
		<%
			}
		%>

		<%
			
		%>
	</ul>
	<%
		} else {
	%>
	no has seleccionado nada
	<%
		}
	%>
</body>
</html>