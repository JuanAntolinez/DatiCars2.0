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
    <link rel="stylesheet" href="css/mainHome.css">
    
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
          <a href="#" class="volver-arriba">INICIO</a>
          <a href="#acercaDe" class="scroll-acercaDe">NUESTROS SERVICIOS</a>
          <a href="#acercaDe" class="scroll-acercaDe">PREGUNTAS FRECUENTES</a>
          <a href="#equipo" class="scroll-equipo">NUESTRO EQUIPO</a>
          <a href="#extra" class="scroll-equipo">QUIENES SOMOS</a>
          <a href="#contacto" class="scroll-suave">CONTACTO</a>
          <a href="perfil.jsp">PERFIL</a>
        <a href="index.jsp">CERRAR SESIÓN</a>
          
        </nav>
      </div>

      <!-- Versión escritorio -->
      <div class="menu-bar-pc">

        <a href="#" class="logo">
          <img src="img/logotipo.png" alt="Logo Daticars - DatiCars">
        </a>

        <nav class="menu-principal">
          
          <a href="#" class="volver-arriba">INICIO</a>
          <a href="#proyectos" class="scroll-suave">NUESTROS SERVICIOS</a>
          <a href="#acercaDe" class="scroll-acercaDe">PREGUNTAS FRECUENTES</a>
          <a href="#equipo" class="scroll-equipo">NUESTRO EQUIPO</a>
          <a href="#extra" class="scroll-equipo">QUIENES SOMOS</a>
          <a href="#contacto" class="scroll-suave">CONTACTO</a>
          

        </nav>
        
        <!-- espacio perfil uaurio -->

        <div class="top-User">
          <nav class="menu-principal"> 
              <ul class="nav"> 
                <li><a><span class="input-item-Registro"><i class="fa fa-user-circle">&nbsp; ${usuario.getUsuario() }</i></span></a>
                  <ul>
                    <li><a href="perfil.jsp">PERFIL</a></li>
                    <li><a href="actualizar-contraseña.jsp">ACTUALIZAR CONTRASEÑA</a></li>
                    <li><a href="index.jsp">CERRAR SESIÓN</a></li>
                  </ul>
                </li>
              </ul>
          </nav>             
        </div>

        <!-- fin espacio perfil usuario-->
        
      </div>
    </header>

    <div class="fixed-header" id="fixedHeader">
      <a href="#"  class="logo">
        <img src="img/logotipo.png" alt="logotipoDaticars - Daticars">
      </a>
      <nav class="menu-principal">
        <a href="#" class="volver-arriba">INICIO</a>
        <a href="#proyectos" class="scroll-suave">NUESTROS SERVICIOS</a>
        <a href="#acercaDe" class="scroll-acercaDe">PREGUNTAS FRECUENTES</a>
        <a href="#equipo" class="scroll-equipo">NUESTRO EQUIPO</a>
        <a href="#extra" class="scroll-equipo">QUIENES SOMOS</a>
        <a href="#contacto" class="scroll-suave">CONTACTO</a>
        
        
      </nav>
      <!-- espacio para redes -->
      <div class="top-redes">
        </div>
      <!-- fin espacio para redes -->  
    </div>

    <!-- Main -->
    <section class="main">
     

      <!-- Slider -->
      <section class="contenedor-slider">
        <div class="slider" id="slider">
          <div class="slide">
          <a href="Publicidad.jsp">
            <img src="img/slide.jpg" alt="Slide"></a>
          </div>
          <div class="slide">
          <a href="Publicidad.jsp">
            <img src="img/slide1.jpg" alt="Slide"></a>
          </div>
          <div class="slide">
          <a href="Publicidad.jsp">
          	<img src="img/slide2.jpg" alt="Slide" width="100"></a>
          </div>
          <div class="slide">
          <a href="Publicidad.jsp">
            <img src="img/slide3.jpg" alt="Slide" width="100"></a>
          </div>
          <div class="slide">
          <a href="Publicidad.jsp">
            <img src="img/slide4.jpg" alt="Slide" width="100"></a>
          </div>
        </div>
        <div class="btn-anterior" id="btnAnterior">
          <i class="fa fa-arrow-left" aria-hidden="true"></i>
        </div>
        <div class="btn-siguiente" id="btnSiguiente">
          <i class="fa fa-arrow-right" aria-hidden="true"></i>
        </div>
      </section>
      

             <!-- Proyectos -->
      <section class="proyectos" id="proyectos">
        <div class="contenedor">
          <div class="titulo-seccion">
            <h2>Nuestros Servicios</h2>
            <p>Aquí podrás ver tus sitios de interés.</p>
          </div>
          <div class="galeria-proyectos">

          
         
                <p>¡Tan solo a un clic tu sitio de interés!</p><br>
                <a href="#EDS">Estaciones de Servicio </a><br>
				<a href="#RES">Restaurantes </a><br>
			    <a href="#CDA">Centro de disagnostico automotriz(CDA) </a>
	           
	       
	        
	        <!-- Estaciones de servicio -->
            
         
          
             <div class="contenedor-servicios-eds-uno" id="EDS">
             <img src="img/petrobras-avesperanza.png" alt="Proyecto" width="300px" height="200px"><br>
              		
              		<br><div class="nombre-empresa">
              		<h2 class="name" itemprop="name" >EDS Petrobras</h2>
              		</div>
              		<div class="texto">
                    <p>Calle 24a # 59-59 Bogotá D.C.</p>
                    <i class="fal fa-alarm-clock"></i>
                    <p>24 horas</p>
                    </div>
                    <button onclick="location.href='eds-petrobras.jsp'">Ver más</button>
                    
                    <a href="https://www.google.com/maps/dir//Petrobras,+Cl.+24a+%2359-59,+Bogot%C3%A1/@4.644413,-74.101904,14z/data=!4m8!4m7!1m0!1m5!1m1!1s0x8e3f9bea672c03e9:0x854a1346d9d18a58!2m2!1d-74.1019103!2d4.6444227?hl=es" class="btn btn-success">Como llega</a>
            </div>
            
              <div class="contenedor-servicios-eds-dos" id="EDS" >
              <img src="img/terpel-ak30.png" alt="Proyecto" width="300px" height="200px"><br>
             
                    <br><div class="nombre-empresa">
              		<h2 class="name" itemprop="name" >EDS terpel</h2>
                    </div>
                    <div class="texto">
                    <p>Calle 71 #29B - 30 Bogotá D.C.</p>
                    <p>24 horas</p>
                    </div>
                    <button onclick="location.href='eds-terpel-calle71.jsp'">Ver más</button>

               <a href="https://www.google.com/maps/dir//Estaci%C3%B3n+de+Servicio+Terpel,+Cl.+71+%2329B-30,+Barrios+Unidos,+Bogot%C3%A1/@4.66587,-74.074519,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x8e3f9a5576b2c821:0xf38d2c006c2be777!2m2!1d-74.0745194!2d4.66587?hl=es-419" class="btn btn-success">Como llega</a>
            
            </div>
            
             <div class="contenedor-servicios-eds-tres" id="EDS">
             <img src="img/biomaxalqueria.jpg" alt="Proyecto" width="300px" height="200px"><br>
             
                    <br><div class="nombre-empresa">
              		<h2 class="name" itemprop="name" >Biomax San Andresito</h2>
                    </div>
                    <div class="texto">
                    <p>Carrera 38 # 38 - 25 Bogotá D.C.</p>
                    <p>24 horas</p>
                    </div>
                    <button onclick="location.href='eds-biomax-Sanandresito.jsp'" >Ver más</button>

                     <a href="https://www.google.com/maps/dir//BIOMAX+Estaci%C3%B3n+San+Andresito+De+La+38,+Cra.+38+%2338-25,+Puente+Aranda,+Bogot%C3%A1/@4.620158,-74.098946,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x8e3f99670b5e1f39:0xc14c56ff8795cb23!2m2!1d-74.0989471!2d4.6201589?hl=es" class="btn btn-success">Como llega</a>
            
                     
            </div>
            
           									  <!-- CDA -->
            
               <div class="contenedor-servicios-eds-uno" id="CDA">
               <img src="img/cda80.jpg" alt="Proyecto" width="300px" height="200px"><br>
             
                    <br><div class="nombre-empresa">
              		<h2 class="name" itemprop="name" >CDA Diagnostiya 80</h2>
                    </div>
                    <div class="texto">
                    <p>Carrera 73A # 77A-62 Bogotá D.C.</p>
                    <p>24 horas</p>
                    </div>
                    <button onclick="location.href='cda-diagnostiya-80.jsp'" >Ver más</button>
   
              <a href="https://www.google.com/maps/dir//Diagnostiautos+CDA+-+Revisi%C3%B3n+T%C3%A9cnico+Mec%C3%A1nica+Bogot%C3%A1,+Cra.+63+%23%2368-37,+Bogot%C3%A1,+Cundinamarca/@4.673706,-74.082615,13z/data=!4m8!4m7!1m0!1m5!1m1!1s0x8e3f9b047a1b0847:0x3bc6c58adb8a4f2f!2m2!1d-74.0826142!2d4.6737046?hl=es" class="btn btn-success">Como llega</a>
            
              
               </div>
               
               
                <div class="contenedor-servicios-eds-uno" id="CDA">
               <img src="img/CDArevicars.jpg" alt="Proyecto" width="300px" height="200px"><br>
             
                    <br><div class="nombre-empresa">
              		<h2 class="name" itemprop="name" >CDA revicars</h2>
                    </div>
                    <div class="texto">
                    <p>Carrera 24 # 73-38 Bogotá D.C.</p>
                    <p>Lunes – Sábado  7:00 am – 19:00 pm</p>
                    </div>
                    <button onclick="location.href='cda-revicars.jsp'" >Ver más</button>
                    
              <a href="https://www.google.com/maps/dir//CDA+Revicars+Colombia+S.A.S,+Cl.+80+%23%2320-61,+Bogot%C3%A1,+Cundinamarca/@4.665947,-74.061377,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x8e3f9baa49be4c81:0xc2c4ea89b2616b96!2m2!1d-74.0613601!2d4.6659772?hl=es" class="btn btn-success">Como llega</a>
            
              
               </div>
               
               
               <div class="contenedor-servicios-eds-uno" id="CDA">
               <img src="img/CDAmegaservice.jpg" alt="Proyecto" width="300px" height="200px"><br>
             
                    <br><div class="nombre-empresa">
              		<h2 class="name" itemprop="name" >CDA Megaservice car</h2>
                    </div>
                    <div class="texto">
                    <p>Calle 68 # 20-41 Bogotá D.C.</p>
                    <p>Lunes – Viernes  7:00 am– 18:00 pm</p>
                    </div>
                    <button onclick="location.href='cda-megaservice-car.jsp'" >Ver más</button>
  
               <a href="https://www.google.com/maps/dir//megaservice+car,+Cl.+68+%23%23%2320-41,+Bogot%C3%A1/@4.657535,-74.067704,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x8e3f9a502c46e841:0x7a578322631ad0c4!2m2!1d-74.0677202!2d4.6575107?hl=es" class="btn btn-success">Como llega</a>
            
               
               </div>
            
            								<!-- RESTAURANTES -->
            
            <div class="contenedor-servicios-eds-uno" id="RES">
               <img src="img/laplayita.png" alt="Proyecto" width="300px" height="200px"><br>
             
                    <br><div class="nombre-empresa">
              		<h2 class="name" itemprop="name" >Restaurante La Playita</h2>
                    </div>
                    <div class="texto">
                    <p>Carrera 70 # 71a - 03 Bogotá D.C.</p>
                    <p>lunes – jueves    7:00 am – 4:00 pm</p>
                    </div>
                    <button onclick="location.href='restaurante-la-playita.jsp'" >Ver más</button>

               <a href="https://www.google.com/maps/dir//Restaurante+La+Playita,+Ak.+70+%23%2371a-03,+Bogot%C3%A1,+Cundinamarca/@4.683508,-74.091962,15z/data=!4m8!4m7!1m0!1m5!1m1!1s0x8e3f9b16e0cf09a3:0xba3a6f185f2e61de!2m2!1d-74.091962!2d4.683508?hl=es" class="btn btn-success">Como llega</a>
            
               </div>
               
               <div class="contenedor-servicios-eds-uno" id="RES">
               <img src="img/casalis.jpg" alt="Proyecto" width="300px" height="200px"><br>
             
                    <br><div class="nombre-empresa">
              		<h2 class="name" itemprop="name" >Restaurante Casa lis</h2>
                    </div>
                    <div class="texto">
                    <p>carrera 7 #17-10 Bogotá D.C.</p>
                    <p>lunes – miércoles  8:00 am – 17:30 pm</p>
                    </div>
                    <button onclick="location.href='restaurante-casa-lis.jsp'" >Ver más</button>
                    
               <a href="https://www.google.com/maps/dir//CASA+LIS+S.A.S.,+Cra.+7+%2317-10,+Santa+F%C3%A9,+Bogot%C3%A1/@4.603533,-74.072156,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x8e3f99a16c2aece3:0xbdd741bf1ef5e376!2m2!1d-74.0721557!2d4.6035325?hl=es" class="btn btn-success">Como llega</a>
            
               </div>
               
               <div class="contenedor-servicios-eds-uno" id="RES">
               <img src="img/tanpinchado.jpg" alt="Proyecto" width="300px" height="200px"><br>
             
                    <br><div class="nombre-empresa">
              		<h2 class="name" itemprop="name" >Tan pinchado el gordo</h2>
                    </div>
                    <div class="texto">
                    <p>Carrera 19 #148 - 52 Bogotá D.C..</p>
                    <p>lunes – domingo  8:00 am – 17:00 pm</p>
                    </div>
                    <button onclick="location.href='restaurante-tan-pinchado-el-gordo.jsp'" >Ver más</button>
                    
               <a href="https://www.google.com/maps/dir//Tan+Ponchado+El+Gordo,+Av.+Cra+19+%23%23148-52,+Usaqu%C3%A9n,+Bogot%C3%A1/@4.731119,-74.04488,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x8e3f856ed4f87857:0x90f4b8664e01da08!2m2!1d-74.0448805!2d4.7311192?hl=es" class="btn btn-success">Como llegar</a>
            
               </div>
            
            
            
            

          </div>
        </div>
      </section>
      
      
      
      
      
      
      

      <!-- Acerca de -->
      <section class="acerca-de" id="acercaDe">
        <div class="contenedor">
          <div class="titulo-seccion">
            <h2>Preguntas Frecuentes</h2>
            <p>Conoce más sobre nosotros, lo que hacemos y cómo lo hacemos</p>
          </div>
          <div class="texto-acerca-de">
            <p>Somos un grupo de estudiantes del SENA, el cual diseñamos este sistema de informacion, para que todos los conductores de la ciudad puedan encontrar todos sus sitios de interés que permita tener información clara, optima y concisa con todo lo relacionado a su vehiculo con el fin de optimizar tiempos de búsqueda y no afectar su jornada laboral.</p>
          </div>
        </div>
      </section>

      

      <!-- Nuestro equipo -->
      <section class="nuestro-equipo" id="equipo">
        <div class="contenedor">
          <div class="titulo-seccion">
            <h2>Nuestro equipo</h2>
            <p>Estudiantes del SENA apasionados por lo que hacen.</p>
          </div>
          <div class="equipo">
            <div class="persona-equipo">
              <div class="foto">
                <img src="img/foto1.jpg" alt="Persona">
              </div>
              <div class="texto">
                <h3>Over Felipe Orejuela Castro</h3>
                <h4>Analista y desarrollador de sistemas de información</h4>
                <p>Estudiante de quinto trimestre de analisis y desarrollo de sistemas de informacion en el servicio nacional de aprendizaje SENA.</p>
              </div>
            </div>

            <div class="persona-equipo">
              <div class="foto">
                <img src="img/foto2.jpg" alt="Persona">
              </div>
              <div class="texto">
                <h3>Nancy Carolina Flechas</h3>
                <h4>Analista y desarrollador de sistemas de información</h4>
                <p>Estudiante de quinto trimestre de analisis y desarrollo de sistemas de informacion en el servicio nacional de aprendizaje SENA.</p>
              </div>
            </div>

            <div class="persona-equipo">
              <div class="foto">
                <img src="img/foto3.jpg" alt="Persona">
              </div>
              <div class="texto">
                <h3>Juan Gabriel Antolinez Galarza</h3>
                <h4>Analista y desarrollador de sistemas de información</h4>
                <p>Estudiante de quinto trimestre de analisis y desarrollo de sistemas de informacion en el servicio nacional de aprendizaje SENA.</p>
              </div>
            </div>

          </div>
        </div>
      </section>

      <!-- Seccion Información extra -->
      <section class="info-extra" id="extra">
        <div class="contenedor">
          <div class="info">

            <div class="contenido-info">
              
              <div class="texto-info">
                <h4>MISIÓN</h4>
                <p>Mejorar por medio de la tecnología el trabajo diario de los conductores, satisfaciendo sus necesidades, con el fin de mejorar su calidad laboral.</p>
              </div>
            </div>

            <div class="contenido-info">
              
              <div class="texto-info">
                <h4>VISIÓN</h4>
                <p>En el año 2030 seremos reconocidos como una de las mejores compañías de sistema de información para conductores de servicio público.</p>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Contacto -->
      <div class="contacto" id="contacto" data-parallax="scroll" data-image-src="img/bg-contacto.jpg">
        <div class="contenedor">
          <div class="contenedor-formulario">
            <div class="formulario" id="formulario">
              <h2>Contáctate con nosotros</h2>
              <p>Ingresa tus datos personales y cuentanos en que te podemos ayudar.</p>
              <form>
                <div>
                  <input type="text" name="nombre" placeholder="Nombre" id="nombre">
                  <p class="error">Por favor escribe tu nombre</p>
                </div>
                <div>
                  <input type="email" name="email" placeholder="Correo electrónico" id="email">
                  <p class="error">Por favor escribe tu correo</p>
                </div>
                <div>
                  <textarea name="mensaje" placeholder="Cuéntanos tu experiencia" id="mensaje"></textarea>
                  <p class="error">Por favor escribe tu mensaje</p>
                </div>
                <div>
                  <input type="submit" name="enviar" value="Enviar">
                </div>
              </form>
            </div>

            <div class="foto">

            </div>
          </div>
        </div>
      </div>

    </section>

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


    <script src="js/parallax.min.js"></script>
    <!-- Buscar:
    t(e).on("ready.px.parallax.data-api",function(){t('[data-parallax="scroll"]').parallax()})}

    Reemplazar por:
    t(function(){t('[data-parallax="scroll"]').parallax()})} -->
    <script src="js/prefixfree.min.js"></script>

  </body>
</html>
