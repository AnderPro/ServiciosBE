<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Persona: Abejita </h1>
	<p>Usted ha seleccionado los siguientes servicios:</p>
	
	<%String services[]= request.getParameterValues("servicio");
	if(services != null){%>
	
	<h4>Servicios seleccionados:</h4>
	<ul>
		<%for(int i=0; i<services.length; i++){%>
		<li><%=services[i]%></li>
		<%}%>
		
	</ul>
	<%}else{%>
		no has seleccionado nada
	<%} %>

</body>
</html>