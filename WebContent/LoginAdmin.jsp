<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta lang = "esp">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>DatiCars - LoginAdmin</title>
 <link rel="icon" href="img/logoicon.png" type="image/png" />
  <link rel="stylesheet" href="css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://www.example.com/style.css?ts=<?=time()?>" />
    <link rel="stylesheet" href="css/LoginAdmin.css">
</head>
<body>

<header>



    <!-- Encabezado -->
    <header>
      <!-- Versión móvil -->
      <div class="menu-mobile">
        <div class="barra">
          <a href="#" class="logo">
            <img src="img/logotipo.png" alt="Logo Daticars - DatiCars">
          </a>
          <a href="#" id="btnMenu">
            <i class="fa fa-bars" aria-hidden="true"></i>
          </a>
        </div>
        <nav class="menu-principal">
          <a href="home.jsp">INICIO</a>
          <a href="index.jsp">CERRAR SESIÓN</a>
        </nav>
      </div>

      <!-- Versión escritorio -->
      <div class="menu-bar-pc">

        <a href="#" class="logo">
          <img src="img/logotipo.png" alt="Logo Daticars - DatiCars">
        </a>

        <nav class="menu-principal">
          <a href="home.jsp">INICIO</a>
          <a href="index.jsp">CERRAR SESIÓN</a>
        </nav>

    

      </div>
    </header>

    <div class="fixed-header" id="fixedHeader">
      <a href="#"  class="logo">
        <img src="img/logotipo.png" alt="logotipoDaticars - Daticars">
      </a>
      <nav class="menu-principal">
        <a href="home.jsp">INICIO</a>
        <a href="index.jsp">CERRAR SESIÓN</a>
      </nav>
  
    </div>

  <!-- fin espacio perfil usuario-->
        
     
    </header>
    <!-- FIn encabezado -->
    

    <div class="container">
        
        <div class="imagen">	
		<a title="Inicio" href="index.jsp"><img src="img/logotipo.png" alt="Logo Daticars - DatiCars">
		</a></div>
		<h2 class="Titulo">Bienvenido Administrador</h2><br>
		
		<form action="administrador" method="post">
			
       <%
      	if (request.getAttribute("mensajeAdmin")!=null){
      		out.println(request.getAttribute("mensajeAdmin"));
      	    
      	}
        %>
		
			
			 	 <div class="container-input-texto">
			 	<input class="form-input" id="txt-input" type="text" name="adminEmail" placeholder="E-mail" required size="29" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Digite su dirección de correo electrónico.">
        	 <span class="validity"></span>     
			 
		       <input class="form-input" type="password" placeholder="password" id="pwd"  name="adminContraseña" required >
           
     

			 	
			 	<button class="log-i" onclick="myFunction()">iniciar sesión</button>
			 	
			 	
			 </div>
		</form>
	</div>	
    
  









<!-- Pie de página -->
    <footer>
      <div class="mensaje">
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
  
<script src="js/jquery.min.js"></script>
    <!-- <script src="js/banner.js"></script> -->
    <script src="js/stickyHeader.js"></script>
    <script src="js/scrollSuave.js"></script>
    <script src="js/modal.js"></script>
    <script src="js/slider.js"></script>
    <!-- <script src="js/bgParallax.js"></script> -->
    <script src="js/validacion.js"></script>
    <script src="js/menuMobile.js"></script>


    <script src="js/parallax.min.js"></script>
    <!-- Buscar:
    t(e).on("ready.px.parallax.data-api",function(){t('[data-parallax="scroll"]').parallax()})}

    Reemplazar por:
    t(function(){t('[data-parallax="scroll"]').parallax()})} -->
    <script src="js/prefixfree.min.js"></script>
        <script type="text/javascript">
			$(document).ready(function () {
			    //Disable full page
			    $('body').bind('cut copy paste', function (e) {
			        e.preventDefault();
			    });
			    
			    //Disable part of page
			    $('#id').bind('cut copy paste', function (e) {
			        e.preventDefault();
			    });
			    
			   <% if (request.getAttribute("mensaje")!=null){ %>
			   
			   $('#openModal').modal('show');
		      	    
		      <%	} %>
			});
	
	</script>
	
</body>
</html>