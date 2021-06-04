<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Recuperar contrase�a</title>
	<link rel="stylesheet" href="css/olvidemicontrase�a.css">



</head>

<body>
	<div class="container">
        
        <div class="imagen">	
		<a title="Inicio" href="index.jsp"><img src="img/logotipo.png" alt="Logo Daticars - DatiCars">
		</a></div>
		<h2 class="Titulo">Recuperar contrase�a</h2><br>
		<form>
			 <div class="container-input">
			 	<p class="Titulo">La contrase�a se enviara al correo que registro al inicio de la creaci�n de la cuenta, por favor dig�telo.</p>
			</div>
			 	 <div class="container-input-texto">
			 	<input type="email" name="correo" placeholder="@gmail.com" class="input-100 "><br>
			 	<input type="submit" name="entrar" value="Enviar" class="btn-recuperar">
			 	<input type="submit" name="atras" value="Atr�s" onclick="window.open('index.jsp')" class="btn-atr�s">
			 	
			 </div>
		</form>
	</div>	
	
	 <!-- Pie de p�gina -->
    <footer>
      <div class="copy">
        <p>Todos los derechos reservados</p>
      </div>
      <div class="footer-redes">
        <a href="#">
          <i class="fa fa-facebook" aria-hidden="true"></i>
        </a>
        <a href="#">
          <i class="fa fa-twitter" aria-hidden="true"></i>
        </a>
        <a href="#">
          <i class="fa fa-instagram" aria-hidden="true"></i>
        </a>
      </div>
    </footer>
    
    
	
</body>
</html>