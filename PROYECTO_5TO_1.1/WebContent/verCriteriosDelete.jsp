<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:simpletemplate title="Home Page">
	<jsp:attribute name="content">
		<h1>ERROR! No se puede eliminar este dato</h1>
		<p>Este campo pertenece a una clave primaria!</p>
		<center><img src="resources/images/error.jpg" tittle="error"></center>
		<form action="r_dim_criterios.jsp" method="post">
			<input type="submit" value="Atras">
		</form>
	</jsp:attribute>
</mt:simpletemplate>