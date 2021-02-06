<%@tag import="MODEL.*"%>
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
	
	<center><hr/><h1>Dimension Rios</h1><hr/></center>
	<center>
	<%
		dim_rios criterio = new dim_rios();
		String tabla = criterio.verRios();
		out.print(tabla);
	%>
	<br>
	<a href="resources/graficas/r_dim_rios_g.jsp">GRAFICAS</a>
	</center>
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