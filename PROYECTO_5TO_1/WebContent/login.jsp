<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:simpletemplate title="Login Page">
	<jsp:attribute name="content">
			<center><hr/><h1>Iniciar Sesión</h1><hr/></center>
			<center><img alt="logo" src="resources/images/logo.jpg"></center>
			<center><form action="logins.jsp" method="post">
				<table>
			  		<tr>
						<td>Correo:</td>
						<td><input type="text" name="usuario" width="160" height="200"></td>
					</tr>
					<tr>
						<td>Contraseña:</td>
						<td><input type="password" name="clave"></td>
					</tr>
					<tr>
						<td><input type="submit" value="Aceptar"></td>
						<td><input type="reset" value="Restablecer"></td>
					</tr>
				</table>
			</form>
			<form action="index.jsp" method="post">
				<input type="submit" value="Atras">
			</form></center>
	</jsp:attribute>
</mt:simpletemplate>