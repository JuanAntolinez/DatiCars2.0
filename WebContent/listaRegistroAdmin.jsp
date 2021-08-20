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
    <link rel="stylesheet" href="css/listaRegistroAdmin.css">
    
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
          <a href="inicioAdmin.jsp" >INICIO</a>
          <a href="listaUsuarios.jsp" >USUARIOS</a>
          <a href="listaAdmins.jsp">ADMINISTRADORES</a>
          <a href="listaEmpresas.jsp">EMPRESAS</a>
          <a href="listaRegistroAdmin.jsp">REGISTRAR ADMINISTRADOR</a>
          <a href="index.jsp">CERRAR SESIÓN</a>
       
        </nav>
      </div>

      <!-- Versión escritorio -->
      <div class="menu-bar-pc">

        <a href="#" class="logo">
          <img src="img/logotipo.png" alt="Logo Daticars - DatiCars">
        </a>

        <nav class="menu-principal">
       <a href="inicioAdmin.jsp" >INICIO</a>
          <a href="listaUsuarios.jsp" >USUARIOS</a>
          <a href="listaAdmins.jsp">ADMINISTRADORES</a>
          <a href="listaEmpresas.jsp">EMPRESAS</a>
          <a href="listaRegistroAdmin.jsp">REGISTRAR ADMINISTRADOR</a>
          <a href="index.jsp">CERRAR SESIÓN</a>
       
        </nav>

    

        <div class="top-redes">
          <a href="home.jsp" class="scroll-suave">Bienvenido A DatiCars </a><!-- &nbsp; ${usuario.getUsuario() } -->
        </div>

      </div>
    </header>




<br>


<!-- Registro-->

<div class="container_registro_empresa">

		<form action = "ServletRegistroAdministrador" method = "post" id="miformulario">
		   
		   <div class="con">
		   
		   <div class="head-form">
		    <br>
		       <h2>Regístrar Administrador</h2>
		      <!--     Bienvenida -->
		      <label for="mensaje_registo_empresa" class="mensaje_registo_empresa">Ingresa los datos del nuevo Administrador.</label>
		      <br>
		      
		      
		   
		      <%
		      	if (request.getAttribute("mensajeAdministrador")!=null){
		      		out.println(request.getAttribute("mensajeAdministrador"));
		      	    
		      	}
		      %>
		      <br>
		      
		
		      
		      <br>
		   </div>
		
		   <br>
		   <div class="field-set">
		   
		
		
		
		        										<!--   nombre empresa Input-->
		        
		         <label for="Nombre_empresa" class="Nombre_empresa">Usuario</label>
		         <br>
		         <input class="input_Nombre_empresa" id="txt-input" type="text"  name="adminUsuario" placeholder="@pepito03" required size="11" pattern="[@]+[-a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{4,12}" title="Esté campo es obligatorio iniciando con una @, y debe tener de 4 a 12 caracteres.">     
        	 <span class="validity"></span>
		         
		      	<br>
		
		
		                                             <!--   Nombre contacto Input-->
		         
		        <label for="Nombre_contacto" class="Nombre_contacto">Nombre</label>
		         <br>                                     
		        <input class="input_Nombre_contacto" id="txt-input" type="text" name = "adminNombre" placeholder="Nombre" required size="29" pattern= "[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{3,25}" title="El nombre debe tener almenos 3 digitos y no debe tener números.">
		        	 <span class="validity"></span>
		        <br>

		        
													<!--  direccion Input-->
		                                             
		        <label for="Direccion" class="Direccion">Apellido</label>
		        <br>                                     
		        <input class="input_Direccion" id="txt-input" type="text" name = "adminApellido" placeholder="Apellido" required size="29" pattern= "[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{3,25}" title="El nombre debe tener almenos 3 digitos y no debe tener números.">
		        	 <span class="validity"></span>
		        <br>
		       

							<!--   Email Input-->
		        		         
		      <label for="Email" class="Email">Email</label>
		      <br>   		         
		      <input class="input_Email" id="txt-input" type="email" name = "adminEmail" placeholder="E-mail" required size="29" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Digite su dirección de correo electrónico.">
		        	 <span class="validity"></span>
		      <br>
		

		                                       <!--  confirmar Email Input-->
		                                       
		      <label for="Confirmar_Email" class="Confirmar_Email">Confirmar Email</label>
		      <br>
		      <input class="input_Confirmar_Email" id="txt-input" type="email" name = "confirmar_email " placeholder="Confirmar E-mail" required size="29" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Digite su dirección de correo electrónico.">
		        	 <span class="validity"></span>
		       <br>
		       
		       
		       										<!-- telefono Input-->
													
		        <label for="Telefono" class="Telefono">Contraseña</label>
		        <br>                                     
				<input class="form-input-Registro" id="pwd" type="password" name="adminContraseña" required placeholder="Contraseña"  size="15" pattern="(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$" title="La contraseña debe tener entre 8 y 16 caracteres, al menos un dígito, al menos una minúscula y al menos una mayúscula.">
        	 <span class="validity"></span>
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