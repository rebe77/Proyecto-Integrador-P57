<%@page import="MODEL.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:verCriteriosUpdate title="Criterios update">
	<jsp:attribute name="content1">
		<form action="r_dim_criterios.jsp" method="post">
			<input type="submit" value="Atras">
		</form>
	</jsp:attribute>
</mt:verCriteriosUpdate>