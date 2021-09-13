<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import= "java.util.ArrayList"%> 
<%@ page import= "java.util.List"%> 
<%@ page import= "beans.Administrador"%> 




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
    <link rel="stylesheet" href="css/listaAdministrador.css">
    
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
          
          <a href="ServletListarUsuarios" >USUARIOS</a>
          <a href="ServletListarAdministradores">ADMINISTRADORES</a>
          <a href="ServletListarEmpresas">EMPRESAS</a>
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
       
          <a href="ServletListarUsuarios" >USUARIOS</a>
          <a href="ServletListarAdministradores">ADMINISTRADORES</a>
          <a href="ServletListarEmpresas">EMPRESAS</a>
           <a href="listaRegistroAdmin.jsp">REGISTRAR ADMINISTRADOR</a>
          <a href="ServletCerrarSesion">CERRAR SESIÓN</a>
       
        </nav>

    

        <div class="top-redes">
          <a href="home.jsp" class="scroll-suave">Bienvenido A DatiCars &nbsp; ${administrador.getUsuarioAdmin() }</a>
        </div>

      </div>
    </header>


<table>
	<thead>
		<tr>
                    <th class="color_texto"> Id</th>
                    <th class="color_texto">adminUsuario</th>
                    <th class="color_texto">adminNombre</th>
                    <th class="color_texto">adminApellido</th>
                    <th class="color_texto">adminEmail</th>
                    <th class="color_texto">rol</th>
                </tr>
	</thead>
	<tbody>
 
 			<%
            	 List<Administrador> listaAdministrador = (List<Administrador>)request.getAttribute("listaAdministrador");
            	  for (int i=0;i<listaAdministrador.size();i++) {%> 
	            
	           		
	           		
	           		<tr>
	           			<td> <% out.println(listaAdministrador.get(i).getIdUsuarioAdmin());%> </td>
	           			<td> <% out.println(listaAdministrador.get(i).getUsuarioAdmin());%> </td>
	                    <td> <% out.println(listaAdministrador.get(i).getNombreAdmin());%> </td>
	                    <td> <% out.println(listaAdministrador.get(i).getApellidoAdmin());%> </td>
	                    <td> <% out.println(listaAdministrador.get(i).getadminEmail());%> </td>
	                       <td> <% out.println(listaAdministrador.get(i).getRol());%> </td>
	                    <td>
                        <a href="ServletActualizacionDatosAdministrador?id=<% out.println(listaAdministrador.get(i).getIdUsuarioAdmin());%>" >Editar</a>
                        <a href="ServletEliminarAdministrador?id=<% out.println(listaAdministrador.get(i).getIdUsuarioAdmin());%>" >Eliminar</a>
                      </td>
                  	</tr> 
	         	<% } %> 
	
	          
	    
            	   
  </tbody>
                     
</table> 










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