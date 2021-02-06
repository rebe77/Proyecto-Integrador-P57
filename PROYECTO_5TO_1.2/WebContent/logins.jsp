<%@page import="MODEL.Usuario"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" session="true"%>
<!DOCTYPE html>
<html>
<head>	<meta charset="ISO-8859-1">
</head>
<body>
	<%
		Usuario usuario = new Usuario();
		String nlogin = request.getParameter("usuario");
		String nclave = request.getParameter("clave");
		HttpSession sesion = request.getSession();
			out.println("IdSesion: "+sesion.getId());
		boolean respuesta = usuario.verificarUsuario(nlogin,nclave);
		if (respuesta){
			sesion.setAttribute("usuario", usuario.getNombres()); 
			sesion.setAttribute("perfil", usuario.getId_tipo());
			response.sendRedirect("menu.jsp");
		}else{
		%>
		<jsp:forward page="login.jsp">
			<jsp:param name="error" value="Datos incorrectos.<br>Vuelva a intentarlo."/>
		</jsp:forward>
		<%
	}
	%>
</body>
</html>