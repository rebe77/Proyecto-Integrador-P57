<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {	
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
</style>
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
<center><hr/><h1>Graficas De la Dimension de Criterios de Calidad</h1><hr/></center>

<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 4</div>
  <img src="https://economipedia.com/wp-content/uploads/estadistica.jpg" style="width:100%">
  <div class="text">Caption One</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 4</div>
  <img src="https://www.omiworld.org/wp-content/uploads/statistics-for-teachers-professional-development-137460-large.jpg" style="width:100%">
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 4</div>
  <img src="https://lh3.googleusercontent.com/proxy/fqtJ7vX364OnrA2BD0vUyL0ZEFlXlWG7F259bA83Jk1So7Fh4_YfCXrIIUx6aeplcSsp84fKr5NpSLpBSIlwesclnlA_G1atyAMAJiRUVqYE_v_AG35l5FnMxI9Mxym0" style="width:100%">
  <div class="text">Caption Three</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">4 / 4</div>
  <img src="https://economipedia.com/wp-content/uploads/estadistica.jpg" style="width:100%">
  <div class="text">Caption Four</div>
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
  <span class="dot" onclick="currentSlide(4)"></span> 
</div>

<form action="../../r_dim_criterios.jsp" method="post">
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

<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>

</body>
</html> 