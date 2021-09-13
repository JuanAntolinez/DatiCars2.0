<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta lang = "esp">
<meta charset="ISO-8859-1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<title>Actualizar Contraseña</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 <link rel="icon" href="img/logoicon.png" type="image/png" />
	 <link rel="stylesheet" href="css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://www.example.com/style.css?ts=<?=time()?>" />
    <link rel="stylesheet" href="css/actualizar-contraseña.css">

	</head>

	<body>

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
          <a href="ServletCerrarSesion">CERRAR SESIÓN</a>
        </nav>
      </div>

      <!-- Versión escritorio -->
      <div class="menu-bar-pc">

        <a href="#" class="logo">
          <img src="img/logotipo.png" alt="Logo Daticars - DatiCars">
        </a>

        <nav class="menu-principal">
          <a href="home.jsp">INICIO</a>
          <a href="ServletCerrarSesion">CERRAR SESIÓN</a>
        </nav>

    

      </div>
    </header>

    <div class="fixed-header" id="fixedHeader">
      <a href="#"  class="logo">
        <img src="img/logotipo.png" alt="logotipoDaticars - Daticars">
      </a>
      <nav class="menu-principal">
        <a href="home.jsp">INICIO</a>
        <a href="ServletCerrarSesion">CERRAR SESIÓN</a>
      </nav>
  
    </div>


    					<!-- Actualizacion perfil -->
    					
				<br><br><h3 style="text-align:center">ACTUALIZAR CONTRASEÑA</h3>
				
				
				  <div id="openModalMensaje" class="modalMensajeJava">
      
			      <%
			      	if (request.getAttribute("mensaje")!=null){
			      		out.println(request.getAttribute("mensaje"));
			      	    
			      	}
			      %>
		     </div>
        
    <div class="container_actualizar_contraseña">
    
    	<form action = "ActualizarContraseña" method = "post" id="miformulario">
    	
    	 <input type="hidden" name="id" value="<% out.print(request.getParameter("id")); %>">
    		
    		<div class="container-input">
    		
    		
    			<label for="password" class="password_actual">Contraseña Actual</label>
    				<div class="input_password_actual">
    				 	<input type="password" class="input_password_actual" id="password1" name="password" placeholder="Contraseña Actual"  required>
    				 	 <div class="col2">
							  <button class="btn btn-dark" type="button" onclick="mostrarContrasena1()">ver</button>
							</div>	
    				</div>
    				 
    				
				
				<label for="Password" class="password_nueva">Nueva Contraseña</label>
				          <div class="input_password_nueva">
				           	 <input type="password" class="input_password_nueva" id="password2" name="contrasena" placeholder="Nueva contraseña" required size="15" pattern="(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$" title="La contraseña debe tener entre 8 y 16 caracteres, al menos un dígito, al menos una minúscula y al menos una mayúscula.">
				        	 <div class="col1">
							  <button class="btn btn-dark" type="button" onclick="mostrarContrasena2()">ver</button>
							</div>
				         
				         </div>
				          
				<label for="Confirmar password" class="confirmarpassword">Confirmar nueva contraseña</label>
          			<div class="input_confirmar_password">
           				 <input type="password" class="input_confirmar_password" id="password" name="contrasena" placeholder="Confirmar la nueva contraseña" required size="15" pattern="(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$" title="La contraseña debe tener entre 8 y 16 caracteres, al menos un dígito, al menos una minúscula y al menos una mayúscula.">
        	 			 <div class="col">
							  <button class="btn btn-dark" type="button" onclick="mostrarContrasena()">ver</button>
							</div>
          		    </div>
          		    
		    </div>          
			 
		          <button class="boton_actualizar" type="submit">Actualizar</button>
		</form>

    		
         
             	 		
            
           
	</div>	
     
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
     				
	<script type="text/javascript">
	$document.querySelector('.campo span').addEventListener('click', e => {
    const passwordInput = document.querySelector('#password');
    if (e.target.classList.contains('show')) {
        e.target.classList.remove('show');
        e.target.textContent = 'Ocultar';
        passwordInput.type = 'text';
    } 
    
    else {
        e.target.classList.add('show');
        e.target.textContent = 'Mostrar';
        passwordInput.type = 'password';
       }
    });
	
	</script>
	
	<script>
		  function mostrarContrasena(){
		      var tipo = document.getElementById("password1");
		      if(tipo.type == "password"){
		          tipo.type = "text";
		      }else{
		          tipo.type = "password";
		      }
		  }
	</script>
	
	<script>
		  function mostrarContrasena1(){
		      var tipo = document.getElementById("password2");
		      if(tipo.type == "password"){
		          tipo.type = "text";
		      }else{
		          tipo.type = "password";
		      }
		  }
	</script>
	
	<script>
		  function mostrarContrasena2(){
		      var tipo = document.getElementById("password");
		      if(tipo.type == "password"){
		          tipo.type = "text";
		      }else{
		          tipo.type = "password";
		      }
		  }
	</script>
	
		
	
</body>

</html>

<!-- 
<div class="input_password_actual">
    				 	<input type="password" class="input_password_actual" id="password" name="password" placeholder="Contraseña Actual"  required>
    				 </div> -->
		