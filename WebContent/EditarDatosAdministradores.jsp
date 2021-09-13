<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar datos administradores</title>
</head>
<body>


<form action = "ServletActualizacionDatosAdministrador" method = "post" id="miformulario">
		   
		   <div class="con">
		   
		   <div class="head-form">
		    <br>
		       <h2>Regístrar Administrador</h2>
		      <!--     Bienvenida -->
		      <label for="mensaje_registo_empresa" class="mensaje_registo_empresa">Actualiza los datos del Administrador.</label>
		      <br>
		      
		      
		   
		      <%
		      	if (request.getAttribute("mensajeActualizoDatos")!=null){
		      		out.println(request.getAttribute("mensajeActualizoDatos"));
		      	    
		      	}
		      %>
		      <br>
		      
		
		      
		      <br>
		   </div>
		
		   <br>
		   <div class="field-set">
		   
		  
		   <input type="hidden" name="id" value="${administrador.getIdUsuarioAdmin() }">
		
		
		
		
		
		        									<!--   Usuario Input-->
		        
		         <label for="Usuario" class="Usuario">Usuario</label>
		         <br>
		         <input class="input_Usuario" id="txt-input" type="text"  name="adminUsuario" value="${administrador.getUsuarioAdmin() }" placeholder="@pepito03" required size="11" pattern="[@]+[-a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{4,12}" title="Esté campo es obligatorio iniciando con una @, y debe tener de 4 a 12 caracteres.">     
        	 	 <span class="validity"></span>
		         
		      	<br>
		
		
		                                            <!--   Nombre Input-->
		         
		        <label for="Nombre_contacto" class="Nombre_contacto">Nombre</label>
		         <br>                                     
		        <input class="input_Nombre_contacto" id="txt-input" type="text" name = "adminNombre" value="${administrador.getNombreAdmin() }" placeholder="Nombre" required size="29" pattern= "[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{3,25}" title="El nombre debe tener almenos 3 digitos y no debe tener números.">
		        	 <span class="validity"></span>
		        <br>

		        
												<!--  Apellido Input-->
		                                             
		        <label for="Direccion" class="Apellido">Apellido</label>
		        <br>                                     
		        <input class="input_Apellido" id="txt-input" type="text" name = "adminApellido"  value="${administrador.getApellidoAdmin() }" placeholder="Apellido" required size="29" pattern= "[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{3,25}" title="El nombre debe tener almenos 3 digitos y no debe tener números.">
		        	 <span class="validity"></span>
		        <br>
		       

												<!--   Email Input-->
		        		         
		      <label for="Email" class="Email">Confirmar Email</label>
		      <br>   		         
		      <input class="input_Email" id="txt-input" type="email" name = "adminEmail" value="${administrador.getEmailAdmin() }" placeholder="E-mail" required size="29" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Digite su dirección de correo electrónico.">
		        	 <span class="validity"></span>
		      <br>
		

		                                     
		
		<!--        buttons -->
		<!--      button Registro -->
		     
		      <td colspan="2"><button class="boton_guardar" type="submit" class="log-in" >Actualizar</button></td>
          </div>
		  </div>
		  
		 
		  
		  
		  
		</form>








</body>
</html>