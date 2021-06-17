<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta lang = "esp">
<meta charset="ISO-8859-1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<title>Perfil Usuario</title>
	 <link rel="icon" href="img/logoicon.png" type="image/png" />
	 <link rel="stylesheet" href="css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://www.example.com/style.css?ts=<?=time()?>" />
    <link rel="stylesheet" href="css/perfil.css">



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
    
    <br><br><h3 style="text-align:center">ACTUALIZAR PERFIL</h3>
				
	<br><form action = "ActualizacionDatosUsuario" method = "post" id="miformulario">		
             
             <div id="openModalMensaje" class="modalMensajeJava">
      
			      <%
			      	if (request.getAttribute("mensaje")!=null){
			      		out.println(request.getAttribute("mensaje"));
			      	    
			      	}
			      %>
		     </div>
   
        	       <span class="input-item-Registro"><i class="fa fa-user-circle">&nbsp; ${usuario.getIdUsuario() }</i></span>
					
					<label for="usuario" class="usuario">Usuario</label>
					<br>
					<div class="input_usuario">
						<input  class="input_usuario" id="txt-input" type="text" id="user" name="user" placeholder="${usuario.getUsuario() }" required size="11" pattern="[@]+[-a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{4,12}" title="Esté campo es obligatorio iniciando con una @, y debe tener de 4 a 12 caracteres.">     
        	 <span class="validity"></span>
					    
					</div>
					</br>

					<label for="nombre" class="name">Nombre</label>
					<br>
					<div class="input_nombre">
						<input type="text" class="input_nombre" id="nombre" name="nombre" placeholder="${usuario.getNombre() }"  required size="29" pattern= "[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{3,25}" title="El nombre debe tener almenos 3 digitos y no debe tener números.">
					</div>
					</br>
				
					<label for="Apellido" class="apellido">Apellido</label>
					<br>
					<div class="input_apellido">
						<input class="input_apellido" id="txt-input" type="text" name = "apellido" placeholder="${usuario.getApellido() }" required size="29" pattern= "[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{3,25}" title="El apellido debe tener almenos 3 digitos y no debe tener números.">
        	            <span class="validity"></span>
        	        </div>
					</br>
				
					<label for="email" class="email">Email</label>
					<br>
					<div class="input_email">
						<input type="email" class="input_email" id="email" name="email" placeholder="${usuario.getEmail() }" required size="29" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Digite su dirección de correo electrónico.">
					    <span class="validity"></span>
					</div>
					</br>
				
					<label for="Confirmar Email" class="confirmaremail">Confirmar Email</label>
					<br>
					<div class="input_confirmar_email">
						<input type="confirmaremail" class="input_confirmar_email" id="confirmaremail" name="confirmaremail" placeholder="${usuario.getEmail() }" required size="29" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Digite su dirección de correo electrónico.">
					    <span class="validity"></span>
					</div>
					</br>

				
					

				
			<section class="banner-principal">
        	<div class="banner" id="banner"></div>
        	<div class="texto-banner">
          	
          	
          	<td colspan="2"><button class="boton_guardar" type="submit" class="log-in" >GUARDAR</button>
          </div>
          </section>
          
		

</form>


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