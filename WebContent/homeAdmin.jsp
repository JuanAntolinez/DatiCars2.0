<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
  	<meta lang = "esp">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>DatiCars</title>
    <link rel="icon" href="img/logoicon.png" type="image/png" />
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://www.example.com/style.css?ts=<?=time()?>" />
    <link rel="stylesheet" href="css/homeadmi.css">
    

  </head>
  <body>
  
  

    <!-- Boton "Volver Arriba" -->
    <div class="btn-volver-arriba" id="btnVolverArriba">
      <a href="#" class="volver-arriba">
        <i class="fa fa-arrow-up" aria-hidden="true"></i>
      </a>
    </div>

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
          <a href="#" class="volver-arriba">INICIO</a>
          <a href="#acercaDe" class="scroll-acercaDe">NUESTROS SERVICIOS</a>
          <a href="#acercaDe" class="scroll-acercaDe">ACERCA DE</a>
          <a href="#equipo" class="scroll-equipo">NUESTRO EQUIPO</a>
          <a href="#extra" class="scroll-equipo">QUIENES SOMOS</a>
          <a href="#contacto" class="scroll-suave">CONTACTO</a>
        </nav>
      </div>

      <!-- Versi�n escritorio -->
      <div class="menu-bar-pc">

        <a href="#" class="logo">
          <img src="img/logotipo.png" alt="Logo Daticars - DatiCars">
        </a>

        <nav class="menu-principal">
          <a href="#" class="volver-arriba">INICIO</a>
          <a href="#proyectos" class="scroll-suave">NUESTROS SERVICIOS</a>
          <a href="#acercaDe" class="scroll-acercaDe">ACERCA DE</a>
          <a href="#equipo" class="scroll-equipo">NUESTRO EQUIPO</a>
          <a href="#extra" class="scroll-equipo">QUIENES SOMOS</a>
          <a href="#contacto" class="scroll-suave">CONTACTO</a>
        </nav>

        <div class="top-redes">
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

      </div>
    </header>

    <div class="fixed-header" id="fixedHeader">
      <a href="#"  class="logo">
        <img src="img/logotipo.png" alt="logotipoDaticars - Daticars">
      </a>
      <nav class="menu-principal">
        <a href="#" class="volver-arriba">INICIO</a>
        <a href="#proyectos" class="scroll-suave">NUESTROS SERVICIOS</a>
        <a href="#acercaDe" class="scroll-acercaDe">ACERCA DE</a>
        <a href="#equipo" class="scroll-equipo">NUESTRO EQUIPO</a>
        <a href="#extra" class="scroll-equipo">QUIENES SOMOS</a>
        <a href="#contacto" class="scroll-suave">CONTACTO</a>
      </nav>
      <div class="top-redes">
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
    </div>

    <!-- Main -->
    <section class="main">

     <!--  <div class="contenedor-visitas">
     <a href="https://www.contadorvisitasgratis.com" title="contadores de visitas"><img src="https://counter6.stat.ovh/private/contadorvisitasgratis.php?c=317s1qk3qr64afk2tjpe6ca5clm9wwpj" border="0" title="contadores de visitas" alt="contadores de visitas"></a>
     
     </div>-->
      <!-- Banner Principal MODAL LOGIN-->

      <section class="banner-principal">
        <div class="banner" id="banner"></div>
        <div class="texto-banner">
          <h2>�Todo para ti y tu veh�culo!</h2>
          <h1>DatiCars</h1>
          <button onclick="location.href='#openModal'">INICIO DE SESI�N</button>
          <button onclick="location.href='#openModalRegistro'">REGISTRARSE</button>
       

<!-- MODAL LOGIN-->

<div id="openModal" class="modalDialog">
  <div>
    <a href="#close" title="Close" class="close">X</a>
    
    <!-- login -->
    
    <div class="login-box">
    
    
		<form action="usuario" method="post">
		
		<div class="con">

   <div class="head-form">
    <br>
      <h2>Iniciar Sesi�n</h2>
      <!--     bienvenida  -->
      <p>Inicie sesi�n aqu� con su email y contrase�a</p>
      <br>
   </div>
   
   
       <%
      	if (request.getAttribute("mensaje")!=null){
      		out.println(request.getAttribute("mensaje"));
      	    
      	}
        %>
   
   <br>
   <div class="field-set">
     
     
      <!--   email -->
         <span class="input-item">
           <i class="fa fa-user-circle"></i>
         </span>
        <!--   email Input-->
         
         <input class="form-input" id="txt-input" type="text" name="email" placeholder="E-mail" required size="29" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Digite su direcci�n de correo electr�nico.">
        	 <span class="validity"></span>     
      
      
      <br>
         
      
           <!--   contrase�a -->
           
     
      <span class="input-item">
        <i class="fa fa-key"></i>
       </span>
      <!--   contrase�a Input-->
      
       <input class="form-input" type="password" placeholder="password" id="pwd"  name="contrase�a" required >
        	 
     
     
<!--      Show/hide contrase�a ver  -->
     <span>
        <i class="fa fa-eye" aria-hidden="true"  type="button" id="eye"></i>
     </span>
      <br>
      
      
      
<!--        buttons -->
<!--      button iniciar sesi�n -->

		<td colspan="2"><button class="log-in">iniciar sesi�n</button></td>


  				 </div>
 
       		 </div>
			
		</form>
		
		
	</div>
	
	
	                               <!--     olvide mi contrase�a  -->
      
        <a href="olvidemiContrase�a.jsp">�Olvidaste tu contrase�a?</a> 
        
        
        
  </div>
  <div>
  
  </div>
  
  
</div>

                                        <!-- cierre login -->

                                     <!-- CIERRE MODAL LOGIN-->


                                       <!-- MODAL REGISTRO-->
                                       
                                       
        <div id="openModalRegistro" class="modalDialogRegistro">
            <div>
              <a href="#close" title="Close" class="close">X</a>
              <div class="overlay">

<!-- Registro-->

<form action = "ServletRegistroUsuario" method = "post" id="miformulario">
   
   <div class="con">
   
   <div class="head-form">
    <br>
      <h2>Reg�strate </h2>
      <!--     Bienvenida -->
      <p>Ingresa tus datos y se parte de esta gran familia.</p>
      <br>
      <br>
      
     <div id="MensajeRegistro"> 
      
      <%
      	if (request.getAttribute("mensaje")!=null){
      		out.println(request.getAttribute("mensaje"));
      	    
      	}
      %>
     </div>
      

      
      <br>
   </div>

   <br>
   <div class="field-set">
   



      <!--   usuario -->
         <span class="input-item-Registro">
           <i class="fa fa-user-circle"></i>
         </span>
        <!--   usuario Input-->
        
         
         <input class="form-input-Registro" id="txt-input" type="text" id="user" name="user" placeholder="@pepito03" required size="11" pattern="[@]+[-a-zA-Z��������������]{4,12}" title="Est� campo es obligatorio iniciando con una @, y debe tener de 4 a 12 caracteres.">     
        	 <span class="validity"></span>
         
      <br>


                                              <!--   Nombre -->
      
         <span class="input-item-Registro">
           <i class="fa fa-user-circle"></i>
         </span>
          
                                             <!--   Nombre Input-->
                                             
        <input class="form-input-Registro" id="txt-input" type="text" name = "nombre" placeholder="Nombre" required size="29" pattern= "[a-zA-Z��������������]{3,25}" title="El nombre debe tener almenos 3 digitos y no debe tener n�meros.">
        	 <span class="validity"></span>
        <br>
      
      
      
                                              <!--   Apellido -->
       
         <span class="input-item-Registro">
           <i class="fa fa-user-circle"></i>
         </span>
         
        <!--   Apellido Input-->
        
        
         
     	<input class="form-input-Registro" id="txt-input" type="text" name = "apellido" placeholder="Apellido" required size="29" pattern= "[a-zA-Z��������������]{3,25}" title="El apellido debe tener almenos 3 digitos y no debe tener n�meros.">
        	 <span class="validity"></span>
        <br>

                                                 <!--   Email -->
                                                   
         <span class="input-item-Registro">
           <i class="fa fa-fas fa-envelope"></i>
         </span>
        <!--   Email Input-->
        
        
         
      <input class="form-input-Registro" id="txt-input" type="email" name = "email" placeholder="E-mail" required size="29" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Digite su direcci�n de correo electr�nico.">
        	 <span class="validity"></span>
      <br>


                                         <!--  Confirmar  Email -->
             
             
         <span class="input-item-Registro">
           <i class="fa fa-fas fa-envelope"></i>
         </span>
         
         
                                       <!--  confirmar Email Input-->
                                       
                                       
         
        
        
        <input class="form-input-Registro" id="txt-input" type="email" name = "confirmar_email " placeholder="Confirmar E-mail" required size="29" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Digite su direcci�n de correo electr�nico.">
        	 <span class="validity"></span>
         <br>

           <!--   Contras�ea -->
     
        <span class="input-item-Registro">
        <i class="fa fa-key"></i>
        </span>
       
       
                                               <!--   Contrase�a Input-->
 		
      	 <input class="form-input-Registro" id="pwd" type="password" name="contrase�a" required placeholder="Contrase�a"  size="15" pattern="(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$" title="La contrase�a debe tener entre 8 y 16 caracteres, al menos un d�gito, al menos una min�scula y al menos una may�scula.">
        	 <span class="validity"></span>
         		
      
      
           									 <!--      Show/hide Contrase�a  -->
            
     <span>
        <i class="fa fa-eye" aria-hidden="true"  type="button" id="eyeRegistro"></i>
     </span>
      <br>

       										<!--  Confirmar Contras�ea -->
     
      <span class="input-item-Registro">
        <i class="fa fa-key"></i>
       </span>
       
       
     									 <!--  Confirmar Contrase�a Input-->
      
      
       <input class="form-input-Registro" id="pwd" type="password"  name="confirmar_contrase�a" required placeholder="Confirmar contrase�a"  size="15" pattern="(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$" title="La contrase�a debe tener entre 8 y 16 caracteres, al menos un d�gito, al menos una min�scula y al menos una may�scula.">
        	 <span class="validity"></span>
         		
         		
  
<!--      Show/hide Confirmar Contrase�a  -->
     <span>
        <i class="fa fa-eye" aria-hidden="true"  type="button" id="eyeRegistro"></i>
     </span>
      <br>
      
    <!-- permisos Para usuarioConductor -->
    
         <input class="form-input-Registro"  id="txt-permisos" type="hidden" id="permisoUsuario"  value="1" name="permisos" required size="3" pattern="[0-9]{1,4}" title="rol 1 usuarios y rol 2 administrador">     
         <span class="validity"></span>	
        	  
        	 
    <!-- cierre permisos-->
    
    
    
<br>
    <input style="opacity:1;" type="checkbox" data-required="1"  name="terminos" required pattern="true"><p style="color:black;padding-left:20px;">Aceptar los <a style="color:blue;"  href="TerminosyCondiciones.jsp">T�rminos y Condiciones</a></p>  
    
   


<!--        buttons -->
<!--      button Registro -->
     
      <td colspan="2"><button type="submit" class="log-in" >Reg�strate</button></td>
   </div>
  </div>
  
 
  
  
  
</form>
</div>
         
            </div>
          </div>

    </div>
  </section>

<!--CIERRE MODAL REGISTRO-->



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
	
	
	
	<!-- validaci�n contrase�as -->
	

	
	

  </body>
</html> 