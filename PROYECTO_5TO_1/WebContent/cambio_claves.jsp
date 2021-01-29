<%@page import="MODEL.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head><meta charset="ISO-8859-1">
</head>
<body>
	<%
		HttpSession sesion = request.getSession();
		if (sesion.getAttribute("usuario") == null) {
	%>
	<jsp:forward page="login.jsp">
		<jsp:param name="error" value="Debe registrarse en el sistema."/>
	</jsp:forward>
	<%
		}else{
		String usuario = (String)sesion.getAttribute("usuario");
		int perfil = (Integer)sesion.getAttribute("perfil");
		}
	%>
		<%
		String nombre = (String)sesion.getAttribute("usuario");
		String nueva_c = request.getParameter("txt_nueva_c");
		String repetir_c = request.getParameter("txt_r_nueva_c");
		
		System.out.println(nombre+" "+nueva_c+" "+repetir_c);
		if(nueva_c.equals(repetir_c)){
			System.out.println("contraseña correcta");
			Usuario usuario = new Usuario();
			boolean modify = usuario.ModificarContraseña(nombre, nueva_c);
			if(modify == true)
				 response.sendRedirect("index.jsp");
			else
				out.print("Error!!!");
		}else
			System.out.println("error");
	%>
</body>
</html>