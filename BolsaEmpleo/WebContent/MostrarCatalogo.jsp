<%@page import="administracion.ControladorAdm"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Catalogos</title>
</head>
<body>
	<h1>Catalogos</h1>
	<%
		ArrayList catalogos = ControladorAdm.listarCatalogos();
	%>
	<form name="formaCatalogo" action="MostrarServicios.jsp" method="post">

		<div class="row">
			<div class="col-sm-9">
				<label for="parroquia"> Escoja una catalogo</label> <select
					name="catalogo" id="catalogo">
					<option value="0">Escoja una Opción</option>
					<%
						for (int i = 0; i < catalogos.size(); i++) {
							Vector catalogo = (Vector) catalogos.get(i);
							String idCatalogo = catalogo.get(0).toString().trim();
							String Nombrecatalogo = catalogo.get(1).toString().trim();
					%>
					<option value="<%=idCatalogo%>"><%=Nombrecatalogo%>
					</option>

					<%
						}
					%>
				</select>
			</div>
		</div>

		<div>
			<input type="submit" value="Enviar">
		</div>
	</form>

	<table>
		<%
			for (int i = 0; i < catalogos.size(); i++) {
				Vector catalogo = (Vector) catalogos.get(i);
				String idCatalogo = catalogo.get(0).toString().trim();
				String Nombrecatalogo = catalogo.get(1).toString().trim();
				//String idCanton = catalogo.get(2).toString().trim();
		%>
		<tr>
			<th><%=idCatalogo%></th>

			<th><%=Nombrecatalogo%></th>
		</tr>
		<%
			}
		%>
	</table>


</body>
</html>