<%@page import="MODEL.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head> <meta charset="ISO-8859-1">
</head>
<body>
	<%
		Usuario obj = new Usuario();
		String cedula = request.getParameter("txtcedula");
		String nombre = request.getParameter("txtnombre");
		String apellido = request.getParameter("txtapellido");
		String numero = request.getParameter("txtnumero");
		String correo = request.getParameter("txtcorreo");
		String contraseña = request.getParameter("txtcontraseña");
		
		out.print(obj.registroCliente(cedula, nombre, apellido, numero, correo, contraseña));
	%>
</body>
</html>