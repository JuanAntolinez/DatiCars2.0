<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta lang = "esp">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>Login por ROLES</title>
 <link rel="icon" href="img/logoicon.png" type="image/png" />
  <link rel="stylesheet" href="css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://www.example.com/style.css?ts=<?=time()?>" />
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
    
    <link rel="stylesheet" href="css/LoginAdmin.css">
</head>
<body>


    

    <div class="container">
        
        <div class="imagen">	
		<a title="Inicio" href="index.jsp"><img src="img/logotipo.png" alt="Logo Daticars - DatiCars">
		</a></div>
		<h2 class="Titulo">Bienvenidos a DatiCars</h2><br>
		
		<form action="ServletLoginRol" method="post">
			
       <%
      	if (request.getAttribute("mensajelogin")!=null){
      		out.println(request.getAttribute("mensajelogin"));
      	    
      	}
        %>
		
			
			 	 
			 	 
			 	<label for="Email" class="Email">Email</label>
		        <br>
			 	<input class="input_Email" id="txt-input" type="text" name="email" placeholder="E-mail" required size="29" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Digite su dirección de correo electrónico.">
        	    <span class="validity"></span>    
        
        		<label class="Contrasena" >Contraseña</label>		        
        		<div class="input-group">
      			<input ID="txtPassword" type="Password" Class="input_Contrasena" placeholder="password" id="pwd"  name="contrasena" required >
      			<div class="input_boton_Contrasena">
           		<button id="show_password" class="btn btn-dark" type="button" onclick="mostrarPassword()"> <span class="fa fa-eye-slash icon"></span> </button>
          		</div>
   			    </div>
   			    
    
               
     

			 	<td colspan="2"><button class="boton_actualizar" type="submit" class="log-in" onclick="myFunction()" >iniciar sesión</button></td>
			 	
			 	
			 
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
	
	<script type="text/javascript">
function mostrarPassword(){
		var cambio = document.getElementById("txtPassword");
		if(cambio.type == "password"){
			cambio.type = "text";
			$('.icon').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
		}else{
			cambio.type = "password";
			$('.icon').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
		}
	} 
	
	$(document).ready(function () {
	//CheckBox mostrar contraseña
	$('#ShowPassword').click(function () {
		$('#Password').attr('type', $(this).is(':checked') ? 'text' : 'password');
	});
});
</script>
	
</body>
</html>