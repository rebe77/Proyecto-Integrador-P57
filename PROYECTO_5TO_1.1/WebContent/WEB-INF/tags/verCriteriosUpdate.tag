<%@tag import="MODEL.dim_criterios_calidad"%>
<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="title" required="true" rtexprvalue="true"%>
<%@ attribute name="content1" fragment="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>${tittle }</title>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0,
	 maximum-scale=1.0, minimum-scale=1.0">
	<title>Home</title>
	<link rel="stylesheet" href="resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="resources/css/estilos.css">
	<script type="text/javascript" src="../../resources/js/file.js"></script>
</head>
<body>
	<header>
		<center><hr/><img src="resources/images/bg.png" alt="Workplace" usemap="#head"><hr/>
		<map name="head">
            <area shape="rect" coords="1,1,386,90" alt="Header" href="menu.jsp"/>
        </map>
		</center>
	</header>
	
	<%
		int cod = Integer.parseInt(request.getParameter("cod"));
		dim_criterios_calidad mp = new dim_criterios_calidad();
	%>
	<form action="verCriteriosUpdates.jsp" method="post" action="/action_page.php">
		<table>
			<tr>
				<td><label for="txtid">sk_criterios_calidad:</label></td>
				<td><input type="text" name="sk_criterios_calidad" value="<%=mp.getSk_criterios_calidad()%>" id="txtid" required/></td>
			</tr>
			<tr>
				<td><label for="txtid">criterio:</label></td>
				<td><input type="text" name="criterio" value="<%=mp.getCriterio()%>" id="txtid" required/></td>
			</tr>
			<tr>
				<td><label for="txtid">descripcion:</label></td>
				<td><input type="text" name="descripcion" value="<%=mp.getDescripcion()%>" id="txtid" required/></td>
			</tr>
			<tr>
				<td><label for="txtid">valor_inicial:</label></td>
				<td><input type="text" name="valor_inicial" value="<%=mp.getValor_inicial()%>" id="txtid" required/></td>
			</tr>
			<tr>
				<td><label for="txtid">valor_final:</label></td>
				<td><input type="text" name="valor_final" value="<%=mp.getValor_final()%>" id="txtid" required/></td>
			</tr>
			<tr>
				<td><label for="txtid">version:</label></td>
				<td><input type="text" name="version" value="<%=mp.getVersion()%>" id="txtid" required/></td>
			</tr>
			<tr>
				<td><input type="submit" name="Actualizar" value="Actualizar"/></td>
			</tr>
		</table>
	</form>
	
	<jsp:invoke fragment="content1"></jsp:invoke>
	<br>
	<footer>
		<div class="footer-container">
			<div class="footer-main">
				<div class="footer-columna">
					<h3>Direcci&oacute;n</h3>
					<span class="fa fa-map-marker"><p>Rumichaca y Moran Valverde s/n</p></span>
					<span class="fa fa-phone"><p>(+593) 2 3962900 3962800</p></span>
					<span class="fa fa-envelope"><p>rfreireu@ups.edu.ec</p></span>
				</div>
				<div class="footer-columna">
					<h3>Sobre Nosotros</h3>
					<p>Lorem</p>
				</div>
				<div class="footer-columna">
					
				</div>
			</div>
		</div>

		<div class="footer-copy-redes">
			<div class="main-copy-redes">
				<div class="footer-copy">
					&copy; 2020 Derechos Reservados | Proyecto Integrador P56 | <a target="_blank" href="https://www.ups.edu.ec/">Universidad Polit&eacute;cnica Salesiana</a> 
				</div>
				<div class="footer-redes">
					<a target="_blank" href="https://www.facebook.com/rebeka.schizophrenia" class="fa fa-facebook"></a>
					<a target="_blank" href="about.jsp" class="fa fa-user"></a>
					<a target="_blank" href="https://www.instagram.com/rebeurrst/" class="fa fa-instagram"></a>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>