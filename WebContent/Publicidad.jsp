<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta lang = "esp">
<meta charset="ISO-8859-1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<title>CDA revicars</title>
	 <link rel="icon" href="img/logoicon.png" type="image/png" />
	 <link rel="stylesheet" href="css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://www.example.com/style.css?ts=<?=time()?>" />
    <link rel="stylesheet" href="css/publicidad.css">



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
    
    <section class="proyectos" id="proyectos">
       
   
    <center><h1>PROMOCIONES ACTUALES</h1></center>
    
    
    
    
    <div class="contenedor">	
     	
     <div class="publicidad-casalis">	
     	<img src="img/recasalis.png" alt="CDA revicars - DatiCars" width="650" height="350"> 
     </div>	
     
     <div class="codigo-qr">
     
     		<img src="img/codigo-qr-RestauranteCasaLis.png" alt="Restaurante casa lis - DatiCars" width="250" height="250">
      </div>
    </div>
    
    
   
   <div class="contenedor-dos">
      
      <div class="publicidad-terpel">
        <img src="img/terpel-barrios.png" alt="CDA revicars - DatiCars" width="650" height="350"> 
      </div>
      
      
     <div class="codigo-qr-dos">
             <img src="img/codigo-qr-Terpel.png" alt="EDS Terpel- DatiCars" width="250" height="250">     
      </div>
   </div>
   
   
   
   <div class="contenedor-tres">
   
      <div class="publicidad-cda">
            <img src="img/cdarevicarspublicidad.png" alt="CDA revicars - DatiCars" width="650" height="350"> 
            
     </div>
     
     <div class="codigo-qr-tres">
            <img src="img/codigo-qr-CDA-revicars.png" alt="CDA revicars - DatiCars" width="250" height="250">
     	</div>
      
  
        
      
   </div>
   
   <div class="contenedor-cuatro">
      
      <div class="publicidad-res-playita">
            <img src="img/reslaplayita.png" alt="RES la playita - DatiCars" width="650" height="350"> 
            
     </div>
   
      <div class="codigo-qr-cuatro">
        
        <img src="img/codigo-qr-RES-laplayita.png" alt="CDA revicars - DatiCars" width="250" height="250">
      </div>
   </div>
             
    
       
    </section>

						<!-- Fin actualizacion perfil -->
						
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