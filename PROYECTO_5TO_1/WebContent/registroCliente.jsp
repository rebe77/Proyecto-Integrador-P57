<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:simpletemplate title="Login Page">
	<jsp:attribute name="content">
			<center><hr/><h1>Registro Cliente</h1><hr/></center>
	<form action="registroClientes.jsp" method="post">
		<table>
			<tr>
				<td><label for="txtcedula">Cedula:</label></td>
				<td><input type="number" name="txtcedula" id="txtcedula" required/></td>
			<tr/>
			<tr>
				<td><label for="txtnombre">Nombre:</label></td>
				<td><input type="text" name="txtnombre" id="txtnombre" required/></td>
			<tr/>
			<tr>
				<td><label for="txtapellido">Apellido:</label></td>
				<td><input type="text" name="txtapellido" id="txtapellido" required/></td>
			<tr/>
			<tr>
				<td><label for="txtnumero">Numero de Telefono:</label></td>
				<td><input type="number" name="txtnumero" id="txtnumero" required/></td>
			<tr/>
			<tr>
				<td><label for="txtcorreo">Correo:</label></td>
				<td><input type="text" name="txtcorreo" id="txtcorreo" required/></td>
			<tr/>
			<tr>
				<td><label for="txtcontraseña">Contraseña:</label></td>
				<td><input type="text" name="txtcontraseña" id="txtcontraseña" required/></td>
			<tr/>
			<tr>
				<td><input type="submit" value="REGISTRASE"/></td>
			<tr/>
		</table>
	</form>
	<form action="index.jsp" method="post">
		<input type="submit" value="ATRAS"/>
	</form>
	</jsp:attribute>
</mt:simpletemplate>