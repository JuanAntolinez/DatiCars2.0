<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta lang = "esp">
<meta charset="ISO-8859-1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<title>EDS Terpel 71</title>
	 <link rel="icon" href="img/logoicon.png" type="image/png" />
	 <link rel="stylesheet" href="css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="css/eds-terpel-calle71.css">



</head>
<body>

<header>



    <!-- Encabezado -->
    <header>
      <!-- Versi�n m�vil -->
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
          <a href="index.jsp">CERRAR SESI�N</a>
        </nav>
      </div>

      <!-- Versi�n escritorio -->
      <div class="menu-bar-pc">

        <a href="#" class="logo">
          <img src="img/logotipo.png" alt="Logo Daticars - DatiCars">
        </a>

        <nav class="menu-principal">
          <a href="home.jsp">INICIO</a>
          <a href="index.jsp">CERRAR SESI�N</a>
        </nav>

    

      </div>
    </header>

    <div class="fixed-header" id="fixedHeader">
      <a href="#"  class="logo">
        <img src="img/logotipo.png" alt="logotipoDaticars - Daticars">
      </a>
      <nav class="menu-principal">
        <a href="home.jsp">INICIO</a>
        <a href="index.jsp">CERRAR SESI�N</a>
      </nav>
  
    </div>

  <!-- fin espacio perfil usuario-->
        
     
    </header>
    <!-- FIn encabezado -->
    
    <section class="proyectos" id="proyectos">
       
   
    
    <div class="contenedor">
     
     <h2><label  class="name">EDS Terpel 71</label></h2>
		 <label  class="horario">Horario: 24 Horas</label>
		 <label  class="web-terpel-71">Pag�na web:<a style="text-decoration:none" href="https://www.terpel.com/"> terpel.com</a></label>
     
    <div class="mapa">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1988.2983950893145!2d-74.07545817641754!3d4.665755043841769!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3f9a5576b2c821%3A0xf38d2c006c2be777!2sEstaci%C3%B3n%20de%20Servicio%20Terpel!5e0!3m2!1ses-419!2sco!4v1623542090681!5m2!1ses-419!2sco"
     width="495" height="400"  style="border:1;" allowfullscreen="" loading="lazy"></iframe> 
    </div>
    </div>    
             
    
       
    </section>

						<!-- Fin actualizacion perfil -->
						
		<!-- Pie de p�gina -->
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