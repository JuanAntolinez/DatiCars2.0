<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import= "java.util.ArrayList"%> 
<%@ page import= "java.util.List"%> 
<%@ page import= "beans.Usuario"%> 
<%@ page import= "beans.Administrador"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>DatiCars</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" 
    rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" 
    crossorigin="anonymous">
     <link rel="icon" href="img/logoicon.png" type="image/png" />
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://www.example.com/style.css?ts=<?=time()?>" />
    <link rel="stylesheet" href="css/listaUsuarios.css">
    
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
          <a href=ServletListarAdministradores>ADMINISTRADORES</a>
          <a href="ServletListarEmpresas">EMPRESAS</a>
           <a href="listaRegistroAdmin.jsp">REGISTRAR ADMINISTRADOR</a>
          <a href="ServletCerrarSesion">CERRAR SESIÓN</a>
       
        </nav>

    

        <div class="top-redes">
          <a href="home.jsp" class="scroll-suave">Bienvenido A DatiCars &nbsp; ${nombreUsuario }</a> 
        </div>

      </div>
    </header>


 <table>
	<thead>
		<tr>
                    <th class="color_texto"> Id</th>
                    <th class="color_texto">Usuario</th>
                    <th class="color_texto">Nombre</th>
                    <th class="color_texto">Apellido</th>
                    <th class="color_texto">Email</th>
                </tr>
	</thead>
	<tbody>
 
 			<%
            	 List<Usuario> listaUsuarios = (List<Usuario>)request.getAttribute("listaUsuarios");
            	  for (int i=0;i<listaUsuarios.size();i++) {%> 
	            
	           		
	           		
	           		<tr>
	           			<td> <% out.println(listaUsuarios.get(i).getId());%> </td>
	           			<td> <% out.println(listaUsuarios.get(i).getUsuario());%> </td>
	                    <td> <% out.println(listaUsuarios.get(i).getNombre());%> </td>
	                    <td> <% out.println(listaUsuarios.get(i).getApellido());%> </td>
	                    <td> <% out.println(listaUsuarios.get(i).getEmail());%> </td>
	                    <td>
                        <a href="ServletEditarUsuarioAdmin?id=<% out.println(listaUsuarios.get(i).getId());%>" >Editar</a>
                        <a href="ServletEliminarUsuario?id=<% out.println(listaUsuarios.get(i).getId());%>" >Eliminar</a>
                      </td>
                  	</tr> 
	         	<% } %> 
	
	          
	    
            	   
  </tbody>
                     
</table> 



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
		      	    
		      <%} %>
			});
	
	</script>
	


</body>
</html>