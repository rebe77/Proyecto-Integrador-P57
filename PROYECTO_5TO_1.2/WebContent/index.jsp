 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:simpletemplate title="Home Page">
	<jsp:attribute name="content">
		<table>
			<tr>
				<td>
					<a href="login.jsp" class="fa fa-user"></a>
					<a>Iniciar Sesión</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="registroCliente.jsp" class="fa fa-address-card"></a>
					<a> Registrarse</a>
				</td>
			</tr>
		</table>
		<img alt="lol" src="resources/images/espace.png" width="200" height="400">
	</jsp:attribute>
</mt:simpletemplate>