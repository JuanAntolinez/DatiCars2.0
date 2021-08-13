<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>DatiCars</title>
     <link rel="icon" href="img/logoicon.png" type="image/png" />
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://www.example.com/style.css?ts=<?=time()?>" />
    <link rel="stylesheet" href="css/registroEmpresa.css">
    
  </head>
  <body>


<header>
      <!-- Boton "Volver Arriba" -->
    <div class="btn-volver-arriba" id="btnVolverArriba">
      <a href="#" class="volver-arriba">
        <i class="fa fa-arrow-up" aria-hidden="true"></i>
      </a>
    </div>

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
          <a href="home.jsp" >INICIO</a>
          <a href="perfil.jsp">PERFIL</a>
          <a href="index.jsp">CERRAR SESIÓN</a>
       
        </nav>
      </div>

      <!-- Versión escritorio -->
      <div class="menu-bar-pc">

        <a href="#" class="logo">
          <img src="img/logotipo.png" alt="Logo Daticars - DatiCars">
        </a>

        <nav class="menu-principal">
          <a href="home.jsp" >INICIO</a>
          <a href="perfil.jsp">PERFIL</a>
          <a href="index.jsp">CERRAR SESIÓN</a>
       
        </nav>

    

        <div class="top-redes">
          <a href="home.jsp" class="scroll-suave">Bienvenido &nbsp; ${usuario.getUsuario() }</a>
        </div>

      </div>
    </header>




<br>


<!-- Registro-->

<div class="container_registro_empresa">

		<form action = "ServletRegistroEmpresa" method = "post" id="miformulario">
		   
		   <div class="con">
		   
		   <div class="head-form">
		    <br>
		       <h2>Regístrate </h2>
		      <!--     Bienvenida -->
		      <label for="mensaje_registo_empresa" class="mensaje_registo_empresa">Ingresa tus datos y se parte de esta gran familia.</label>
		      <br>
		      
		      
		   
		      <%
		      	if (request.getAttribute("mensajeEmpresa")!=null){
		      		out.println(request.getAttribute("mensajeEmpresa"));
		      	    
		      	}
		      %>
		      <br>
		      
		
		      
		      <br>
		   </div>
		
		   <br>
		   <div class="field-set">
		   
		
		
		
		        										<!--   nombre empresa Input-->
		        
		         <label for="Nombre_empresa" class="Nombre_empresa">Nombre empresa</label>
		         <br>
		         <input class="input_Nombre_empresa" id="txt-input" type="text" id="user" name="nombreEmpresa" placeholder="Daticars"  required size="98" pattern="[-a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{4,99}" title="Esté campo debe tener de 4 a 99 caracteres.">     
		        	 <span class="validity"></span>
		         
		      	<br>
		
		
		                                             <!--   Nombre contacto Input-->
		         
		        <label for="Nombre_contacto" class="Nombre_contacto">Nombre contacto</label>
		         <br>                                     
		        <input class="input_Nombre_contacto" id="txt-input" type="text" name = "nombreContacto" placeholder="Nombre completo" required size="29" pattern= "[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{3,25}" title="El nombre debe tener almenos 3 digitos y no debe tener números.">
		        	 <span class="validity"></span>
		        <br>

		        
													<!--  direccion Input-->
		                                             
		        <label for="Direccion" class="Direccion">Direccion</label>
		        <br>                                     
		        <input class="input_Direccion" id="txt-input" type="text" name = "direccion" placeholder="Dirección Empresa" required size="34" pattern= "[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ-1-9]{8,35}" title="La direccion debe tener almenos 8 digitos.">
		        	 <span class="validity"></span>
		        <br>
		       
		       
													<!-- telefono Input-->
													
		        <label for="Telefono" class="Telefono">Telefono</label>
		        <br>                                     
		        <input class="input_Telefono" id="txt-input" type="int" name = "telefono" placeholder="3102280249" required size="34" pattern= "[0-9]{10}" title="El número de telefono debe tener almenos 10 digitos y no contener letras ni caracteres especiales.">
		        	 <span class="validity"></span>
		        <br>
		       
		       
		                                             <!--  horario atencion Input-->
		        
		        <label for="Horario_atencion" class="Horario_atencion">Horario de atencion</label>
		        <br>                                     
		        <input class="input_Horario_atencion" id="txt-input" type="text" name = "horarioAtencion" placeholder="ej: Domingo - sabado" required size="34" pattern= "[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ-1-9]{8,35}" title="El horario debe tener almenos 8 digitos.">
		        	 <span class="validity"></span>
		        <br>
		       
		                                             <!--  tipo de empresa Input-->
		        <label for="Tipo_empresa" class="Tipo_empresa">Tipo de empresa</label>
		        <br>                                      
		        <input class="input_Tipo_empresa" id="txt-input" type="text" name = "producto" placeholder="ej: Estacion de servicio" required size="34" pattern= "[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ-1-9]{8,35}" title="El tipo de empresa debe tener almenos 8 digitos.">
		        	 <span class="validity"></span>
		        <br>
		       
		       
		        								<!--   Email Input-->
		        		         
		      <label for="Email" class="Email">Email</label>
		      <br>   		         
		      <input class="input_Email" id="txt-input" type="email" name = "email" placeholder="E-mail" required size="29" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Digite su dirección de correo electrónico.">
		        	 <span class="validity"></span>
		      <br>
		

		                                       <!--  confirmar Email Input-->
		                                       
		      <label for="Confirmar_Email" class="Confirmar_Email">Confirmar Email</label>
		      <br>
		      <input class="input_Confirmar_Email" id="txt-input" type="email" name = "confirmar_email " placeholder="Confirmar E-mail" required size="29" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Digite su dirección de correo electrónico.">
		        	 <span class="validity"></span>
		       <br>
		
		
		                                      		<!--  foto empresa Input-->
		        
		       <label for="Foto_empresa" class="Foto_empresa">Foto empresa</label>
		       <br>                                    
		       <input class="input_Foto_empresa" id="txt-input" type="file" name="producto" />	    
		       <br>
		        
		        									<!-- camara de comercio Input-->
		        
		        
		        <label for="Camara_comercio" class="Camara_comercio">Cámara de Comercio</label>
		        <br>      
		     	<input class="input_Camara_comercio" id="txt-input" type="file" name="camaradeComercio" />	
		        	
		        <br> 	
		
		
		       										
		      
		    
		
		<!--        buttons -->
		<!--      button Registro -->
		     
		      <td colspan="2"><button class="boton_guardar" type="submit" class="log-in" >Registrar</button></td>
          </div>
		  </div>
		  
		 
		  
		  
		  
		</form>


</div>

<!-- Pie de página -->
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

    <script src="js/jquery.min.js"></script>
    <!-- <script src="js/banner.js"></script> -->
    <script src="js/stickyHeader.js"></script>
    <script src="js/scrollSuave.js"></script>
    <script src="js/modal.js"></script>
    <script src="js/slider.js"></script>
    <!-- <script src="js/bgParallax.js"></script> -->
    <script src="js/validacion.js"></script>
    <script src="js/menuMobile.js"></script>

    <!--  
      <script type="text/javascript">
    function myFunction(){
    	alert("Error E-mail o contraseña erronea");
    } 
    </script>
    -->
   
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