<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" session="true"%>

<!DOCTYPE html>
<html>
<head><meta charset="ISO-8859-1">
</head>
<body>
	<%@ page session="true" %>
	<%
		HttpSession sesionOk = request.getSession();
		sesionOk.invalidate();
	%>
	<%
		HttpSession sesion=request.getSession();
		long longDuracion = sesion.getLastAccessedTime();
		Date duracion=new Date(longDuracion);
		out.println("Duracion:"+duracion.getMinutes()+"min."+duracion.getSeconds()+"seg");
		System.out.println("Duracion:"+duracion.getMinutes()+"min."+duracion.getSeconds()+"seg");
	%>
	<jsp:forward page="login.jsp"/>
</body>
</html>