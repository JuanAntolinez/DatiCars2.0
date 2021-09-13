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
    <link rel="stylesheet" href="css/inicioAdmin.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    
    
    
      <script type="text/javascript">
  window.onload = function () {
    var chart = new CanvasJS.Chart("chartContainer1", {

     
      data: [//array of dataSeries              
        { //dataSeries object

         /*** Change type "column" to "bar", "area", "line" or "pie"***/
         type: "column",
         animationEnabled: true,
         dataPoints:  ${total }
       }]
     }); 
     
    chart.render();
  }

  
    
  </script>
  <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
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
          <a href="ServletCerrarSesion">CERRAR SESIÓN</a>
       
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
          <a href="ServletCerrarSesion">CERRAR SESIÓN</a>
       
        </nav>

    

        <div class="top-redes">
          <a href="home.jsp" class="scroll-suave">Bienvenido A DatiCars </a><!-- &nbsp; ${usuario.getUsuario() } -->
        </div>

      </div>
    </header>







</div>


  
  
  <div class="container">
  		<div class="row">
    		<div class="col" style="align-items:center">
				<div class="card">
 		 			
  					<div class="card-body">
						<h5 class="card-title">Cantidad usuarios</h5>
						<div id="chartContainer1" style="height: 300px; width: 100%;"></div>
 		 			</div>
				</div>
				
				
    	
    		</div>
    		
    		<div class="col" style="align-items:center">
				<div class="card">
 		 			
  					<div class="card-body">
						<h5 class="card-title">% Empresas Registradas</h5>
						<div id="chartContainer2" style="height: 300px; width: 100%;"></div>
 		 			</div>
				</div>
    	
    		</div>
    
  		</div>
		
		<div class="row" style="padding-top: 20px;">
    		<div class="col" style="align-items:center">
				<div class="card">
 		 			
  					<div class="card-body">
						<h5 class="card-title">Empresas aliadas</h5>
						<center><iframe src="https://www.google.com/maps/d/embed?mid=1rBpfAoQ_cfbrvGoSbd4uwGq-Uqz4BXsB" width="800" height="400"></iframe></center>
 		 			</div>
				</div>
    	
    		</div>
   		        
  		</div>
		
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
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