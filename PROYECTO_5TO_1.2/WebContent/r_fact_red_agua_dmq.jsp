<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:simpletemplate title="Home Page">
	<jsp:attribute name="content">
		<center><hr/><h1>Red De Agua DMQ</h1><hr/></center>
		<table border=2>
			<tr>
				<td>sk_rios</td>
				<td>sk_criterios_calidad</td>
				<td>sk_parametros_medicion</td>
				<td>sk_tiempo</td>
				<td>parametros</td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><a href="#">Modificar</a></td>
				<td><a href="#">Eliminar</a></td>
			</tr>
		</table>
		<form action="menu.jsp" method="post">
			<input type="submit" value="Atras">
		</form>
	</jsp:attribute>
</mt:simpletemplate>