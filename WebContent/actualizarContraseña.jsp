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
	    <link rel="stylesheet" href="css/actualizarContraseña.css">

	</head>

	<body>

	 


    					<!-- Actualizacion perfil -->

				<h3 style="text-align:center">ACTUALIZAR CONTRASEÑA</h3>
				
        
    <div class="container">

    	<form>

       		<div class="container-input">



       			<label for="Password" class="password_anterior">Contraseña actual</label>
		          <div class="input_password_anterior">
		            <input type="password" class="input_password_anterior" id="password" name="´password" placeholder="Contraseña actual" required>
		          </div>

        		<label for="Password" class="password">Nueva Contraseña</label>
		          <div class="input_password">
		            <input type="password" class="input_password" id="password" name="´password" placeholder="Nueva contraseña" required>
		          </div>

           		<label for="Confirmar Email" class="confirmarpassword">Confirmar nueva contraseña</label>
          			<div class="input_confirmar_password">
           				 <input type="confirmarpassword" class="input_confirmar_password" id="confirmarpassword" name="´confirmarpassword" placeholder="Confirmar la nueva contraseña" required>
          			</div>


       		</div>

    	</form>

    		<section class="banner-principal">
              <div class="banner" id="banner"></div>
              <div class="texto-banner">
          
              	<button class="boton_actualizar" onclick="">Actualizar</button>

              </div>

            </section>

  </div>


						<!-- Fin actualizacion contraseña -->
	</body>

</html>