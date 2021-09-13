<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Datos Empresa</title>
</head>
<body>


<form action = "ServletActualizacionDatosEmpresa" method = "post" id="miformulario" enctype="multipart/form-data">
		   
		   <div class="con">
		   
		   <div class="head-form">
		    <br>
		       <h2>Regístrate </h2>
		      <!--     Bienvenida -->
		      <br>
		      <label for="mensaje_registo_empresa" class="mensaje_registo_empresa">Ingresa tus datos y se parte de esta gran familia.</label>
		      <br>
		      <br>
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
		   
		
		
		        <input type="hidden" name="id" value="${empresa.getIdEmpresa() }">
		
		
		
		        										<!--   nombre empresa Input-->
		        
		         <label for="Nombre_empresa" class="Nombre_empresa">Nombre empresa</label>
		         <br>
		         <input class="input_Nombre_empresa" id="txt-input" type="text" id="user" name="nombreEmpresa" value="${empresa.getNombreEmpresa() }" placeholder="Daticars"  required size="98" pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{4,99}" title="Esté campo debe tener de 4 a 99 caracteres.">     
		        	 <span class="validity"></span>
		         
		      	<br>
		
		
		                                             <!--   Nombre contacto Input-->
		         
		        <label for="Nombre_contacto" class="Nombre_contacto">Nombre contacto</label>
		         <br>                                     
		        <input class="input_Nombre_contacto" id="txt-input" type="text" name="nombreContacto" value="${empresa.getNombreContacto() }" placeholder="Nombre completo" required size="29" pattern= "[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{3,25}" title="El nombre debe tener almenos 3 digitos y no debe tener números.">
		        	 <span class="validity"></span>
		        <br>

		        
													<!--  direccion Input-->
		                                             
		        <label for="Direccion" class="Direccion">Direccion</label>
		        <br>                                     
		        <input class="input_Direccion" id="txt-input" type="text" name="direccion" value="${empresa.getDireccion() }" placeholder="Dirección Empresa" required size="34" pattern= "[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ-1-9]{8,35}" title="La direccion debe tener almenos 8 digitos.">
		        	 <span class="validity"></span>
		        <br>
		       
		       
													<!-- telefono Input-->
													
		        <label for="Telefono" class="Telefono">Telefono</label>
		        <br>                                     
		        <input class="input_Telefono" id="txt-input" type="int" name = "telefono" value="${empresa.getTelefono() }" placeholder="3102280249" required size="34" pattern= "[0-9]{10}" title="El número de telefono debe tener almenos 10 digitos y no contener letras ni caracteres especiales.">
		        	 <span class="validity"></span>
		        <br>
		       
		       
		                                             <!--  horario atencion Input-->
		        
		        <label for="Horario_atencion" class="Horario_atencion">Horario de atencion</label>
		        <br>                                     
		        <input class="input_Horario_atencion" id="txt-input" type="text" name="horarioAtencion" value="${empresa.getHorarioAtencion() }" placeholder="ej: Domingo - sabado" required size="34" pattern= "[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ-1-9\s]{8,35}" title="El horario debe tener almenos 8 digitos.">
		        	 <span class="validity"></span>
		        <br>
		       
		                                             <!--  tipo de empresa Input-->
		        <label for="Tipo_empresa" class="Tipo_empresa">Tipo de empresa</label>
		        <br>                                      
		        <input class="input_Tipo_empresa" id="txt-input" type="text" name="producto" value="${empresa.getProducto() }" placeholder="ej: Estacion de servicio" required size="34" pattern= "[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ-1-9\s]{8,35}" title="El tipo de empresa debe tener almenos 8 digitos.">
		        	 <span class="validity"></span>
		        <br>
		       
		       
		        								<!--   Email Input-->
		        		         
		      <label for="Email" class="Email">Email</label>
		      <br>   		         
		      <input class="input_Email" id="txt-input" type="email" name="email" value="${empresa.getEmail() }" placeholder="E-mail" required size="29" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Digite su dirección de correo electrónico.">
		        	 <span class="validity"></span>
		      <br>
		

		                                      
		
		
		                                      		<!--  foto empresa Input-->
		        
		       <label for="Foto_empresa" class="Foto_empresa">Foto empresa</label>
		       <br>                                    
		       <input class="input_Foto_empresa" id="txt-input" type="file" name="fotolocal" />	    
		       <br>
		        
		        									<!-- camara de comercio Input-->
		        
		        
		        <label for="Camara_comercio" class="Camara_comercio">Cámara de Comercio</label>
		        <br>      
		     	<input class="input_Camara_comercio" id="txt-input" type="file" name="camaradeComercio" />	
		        	
		        <br> 	
		
		
		       										
		      
		    
		
		<!--        buttons -->
		<!--      button Registro -->
		     
		      <td colspan="2"><button class="boton_guardar" type="submit" class="log-in" >Guardar</button></td>
          </div>
		  </div>
		  
		 
		  
		  
		  
		</form>





</body>
</html>