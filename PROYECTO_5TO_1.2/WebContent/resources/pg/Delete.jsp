<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../css/estilos.css">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	<script type="text/javascript" src="../js/file.js"></script>
</head>
<body>
	<header>
		<center><hr/><img src="../images/bg.png" alt="Workplace" usemap="#head"><hr/>
		<map name="head">
            <area shape="rect" coords="1,1,386,90" alt="Header" href="../../menu.jsp"/>
        </map>
		</center>
	</header>
	
	<h1>ERROR! No se puede eliminar este dato</h1>
		<p>Este campo pertenece a una clave primaria!</p>
		<center><img src="../images/error.jpg" tittle="error"></center>
	<form action="../../menu.jsp" method="post">
		<input type="submit" value="Atras">
	</form>

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