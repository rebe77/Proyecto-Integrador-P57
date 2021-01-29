<%@tag import="MODEL.Usuario"%>
<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="title" required="true" rtexprvalue="true"%>
<%@ attribute name="content" fragment="true"%>
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
</head>
<body>
	<header>
		<center><hr/><img src="resources/images/bg.png" alt="Workplace" usemap="#head"><hr/>
		<map name="head">
            <area shape="rect" coords="1,1,386,90" alt="Header" href="index.jsp"/>
        </map>
		</center>
	</header>

	<hr/><h2>Cambio de Clave</h2><hr/>
	<form action="cambio_claves.jsp" method="post">
		<table id="table-1">
			<tr>
				<td>
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
						%>
						<h3>Usuario: <% out.println(usuario); %> </h3>
						<%
					}
					%>
				</td>
			</tr>
		</table>
		<table>
				<tr>
					<td>Ingrese Nueva Contraseña:</td>
					<td><input type="text" name="txt_nueva_c" /></td>
				</tr>
				<tr>
					<td>Repetir Contraseña:</td>
					<td><input type="text" name="txt_r_nueva_c" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Aceptar" /></td>
				</tr>
			</table>
		</form> 
	<br>
	
	<jsp:invoke fragment="content"></jsp:invoke>
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
					<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quas eaque, voluptate incidunt a debitis iure, dolorem amet porro doloremque, saepe assumenda omnis fugit aliquid dolor inventore reprehenderit in cupiditate esse!</p>
				</div>
				<div class="footer-columna">
					<img src="resources/images/bg.png" width="400" height="100">
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