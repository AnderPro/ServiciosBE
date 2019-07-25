<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="administracion.ControladorAdm"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Registrar Servicios 2</title>
</head>
<body>

	<%
		String catalogo = request.getParameter("catalogo") != null ? request.getParameter("catalogo") : "0";
		String nombreCatalogo = ControladorAdm.verCatalogo(catalogo);
		ArrayList servicios = ControladorAdm.listarServicios(catalogo);
	%>


	<%
		if (catalogo.equals("0")) {
	%>
	No ha seleccionado nada
	<%
		} else {
	%>
	<%=nombreCatalogo%>
	<%
		}
	%>



	<form name="MostrarServicios" onsubmit="checkBoxValidation()"
		action="PersonaServicio.jsp" method="post">

		<label for="servicio"> Escoja los Servicios</label>

		<div class="row">

			<%
				for (int i = 0; i < servicios.size(); i++) {
					Vector servicio = (Vector) servicios.get(i);
					String idServicio = servicio.get(0).toString().trim();
					String nombreServicio = servicio.get(1).toString().trim();
			%>
			<p>
			<div class="col-sm-4">
				<input type="checkbox" id="cbox1" name="servicio"
					value="<%=idServicio%>" style="margin-left: 1rem"><%=nombreServicio%></p>
			</div>
			<%
				}
			%>
		</div>
		<div>
			<input class="btn btn-primary" type="submit" value="Guardar">
		</div>

	</form>

</body>
</html>