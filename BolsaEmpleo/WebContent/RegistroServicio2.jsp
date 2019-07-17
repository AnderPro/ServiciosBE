<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@page import="administracion.ControladorAdm"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrar Servicios 2</title>
</head>
<body>

	<%
		ArrayList servicios = ControladorAdm.listarServicios();
	%>
	
	
	<form name="MostrarServicios" onsubmit="checkBoxValidation()" action="PersonaServicio.jsp"
		 method="post">

		<label for="servicio"> Escoja los Servicios</label>

		<%
			for (int i = 0; i < servicios.size(); i++) {
				Vector servicio = (Vector) servicios.get(i);
				String idServicio = servicio.get(0).toString().trim();
				String nombreServicio = servicio.get(1).toString().trim();
		%>
		<p>
			<input type="checkbox" id="cbox1" name="servicio"
				value="<%=nombreServicio%>"><%=nombreServicio%></p>
		<%}%>

		<div>
			<input class="btn btn-primary" type="submit" value="Guardar">
		</div>

	</form>

</body>
</html>