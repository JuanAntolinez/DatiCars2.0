<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
  	<meta lang = "esp">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>Perfil Usuario</title>
		<link rel="stylesheet" href="css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700" rel="stylesheet">
	    <link rel="stylesheet" href="css/perfil.css">

	</head>
	<body>
		

		<div class="container">
			<div class="row">
				<h3 style="text-align:center">ACTUALIZAR Y MODIFICAR DATOS</h3>
				
			</div>
			
			<form class="form-horizontal" method="POST" action="update.php" autocomplete="off">
				<div class="form-group">
					<label for="nombre" class=" name">Nombre</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre"  required>
					</div>
				</div>
				
					<div class="form-group">
					<label for="Apellido" class="apellido">Apellido</label>
					<div class="col-sm-10">
						<input type="Apellido" class="Apellido" id="Apellido" name="Apellido" placeholder="Apellido"  required>
					</div>
				</div>
				
				<div class="form-group">
					<label for="email" class="email">Email</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
					</div>
				</div>
				
				<div class="form-group">
					<label for="ConfirmarEmail" class="confirmaremail">Confirmar Email</label>
					<div class="col-sm-10">
						<input type="confirmaremail" class="form-control" id="confirmaremail" name="confirmaremail" placeholder="confirmaremail" required>
					</div>
				</div>
				
				<div class="form-group">
					<label for="ConfirmarEmail" class="password">password</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="password" name="´password" placeholder="password" required>
					</div>
				</div>
				
				<div class="form-group">
					<label for="ConfirmarEmail" class="confirmarpassword">Confirmar password</label>
					<div class="col-sm-10">
						<input type="confirmarpassword" class="form-control" id="confirmarpassword" name="´confirmarpassword" placeholder="confirmarpassword" required>
					</div>
				</div>
				
			<section class="banner-principal">
        	<div class="banner" id="banner"></div>
        	<div class="texto-banner">
          	
         	
          	<button onclick="">GUARDAR</button>
          	<button onclick="location.href='home.jsp'">REGRESAR</button>
          </div>
          </section>
          
          
			</form>
		</div>
	</body>
</html>

	
	
	<SCRIPT src = "js/prefixfree.min.js"> </SCRIPT> 

	</body>
	</html>
		
	<header>
