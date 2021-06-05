<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>DatiCars</title>
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700" rel="stylesheet">
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
                <li><a><span class="input-item-Registro"><i class="fa fa-user-circle"></i></span></a>
                  <ul>
                    <li><a href="perfil.jsp">PERFIL</a></li>
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
            <img src="img/slide1.jpg" alt="Slide">
          </div>
          <div class="slide">
            <img src="img/slide2.jpg" alt="Slide">
          </div>
          <div class="slide">
            <img src="img/slide3.jpg" alt="Slide">
          </div>
          <div class="slide">
            <img src="img/slide4.jpg" alt="Slide">
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
			    <a href="#CDA">Centro de disagnostico automotriz(CDA) </a></<br>
	     
	        
	        
	        <!-- Estaciones de servicio -->
            
             <h2 id ="EDS"></h2><br>
             
             
             
            <div class="proyecto">
              <br><img src="img/petrobras-avesperanza.png" alt="Proyecto">
              <p><br>Nombre: EDS Petrobras<br>Dirección: calle 24a # 59-59 Bogotá D.C.<br>Horario de atención: 24 horas<br></p>
            </div>

            <div class="proyecto">
              <br><img src="img/petrobras-ak50.png" alt="Proyecto">
              <p><br>Nombre: EDS Petrobras<br>Dirección: ak 50 #42 - 19 Bogotá D.C.<br>Horario de atención: 24 horas<br></p>
            </div>

            <div class="proyecto">
              <br><img src="img/terpel-ak30.png" alt="Proyecto">
              <p><br>Nombre: EDS terpel<br>Dirección: calle 71 #29B - 30 Bogotá D.C.<br>Horario de atención: 24 horas<br></p>
            </div>

            <div class="proyecto">
              <img src="img/esso.jpg" alt="Proyecto">
              <p><br>Nombre: ESSO Los Andes<br>Dirección: avenida calle 68 # 38b-18 Bogotá D.C.<br>Horario de atención: 24 horas<br>Telefono: 3798000<br></p>
            </div>

            <div class="proyecto">
              <img src="img/biomaxalqueria.jpg" alt="Proyecto">
              <p><br>Nombre: Biomax alquería<br>Dirección: carrera 80 # 58l-15 sur Bogotá D.C.<br>Horario de atención: 24 horas<br>Telefono: 7823344<br></p>
            </div>

            <div class="proyecto">
              <img src="img/biomaxargelia.jpg" alt="Proyecto">
              <p><br>Nombre: Biomax argelia<br>Dirección: carrera 72f # 39-07 sur Bogotá D.C.<br>Horario de atención: 24 horas<br>Telefono: 3798000<br></p>
            </div>

             <div class="proyecto">
              <img src="img/biomaxruncar.jpg" alt="Proyecto">
              <p><br>Nombre: Biomax runcar<br>Dirección: transversal 78h bis # 42g-13 Bogotá D.C.<br>Horario de atención: 24 horas<br>Telefono: 3798000<br></p>
            </div>

            <div class="proyecto">
              <img src="img/biomax primerademayo.jpg" alt="Proyecto">
              <p><br>Nombre: Biomax primera de mayo con 68<br>Dirección: avenida primero de mayo # 68h-55 Bogotá D.C.<br>Horario de atención: 24 horas<br></p>
            </div>

            <div class="proyecto">
              <img src="img/texacoeldarien.jpg" alt="Proyecto">
              <p><br>Nombre: texaco el darién<br>Dirección: carrera 69b # 26-35 sur Bogotá D.C.<br>Horario de atención: 24 horas<br>Telefono: 6394444<br></p>
            </div>
            
            


            <!-- Restaurante -->
            
  
             
             
            <div class="proyecto">
              <img src="img/safari.jpg" alt="Proyecto">
              <p><br>Nombre: Restaurante Safari<br>Dirección: Cra 69P # 64D - 92 Bogotá D.C.<br>Horario de atención:<br> lunes - Viernes 4:00 pm – 09:30 pm<br>Sabado - Domingo 01:00 pm – 09:30 pm<br></p>
            </div>

            <div class="proyecto">
              <img src="img/puertafalsa.jpg" alt="Proyecto">
              <p><br>Nombre: Restaurante Puerta Falsa<br>Dirección: calle 11 # 06 - 50 Bogotá D.C.<br>Horario de atención:<br> lunes - Domingo 06:00 am – 09:00 pm<br></p>
            </div>

            <div class="proyecto">
              <img src="img/rock.jpg" alt="Proyecto">
              <p><br>Nombre: Rock & Roll Circus Colombia<br>Dirección: Carrera 6 # 119 - 17 Bogotá D.C.<br>Horario de atención:<br> lunes 03:00 pm – 09:00 pm<br> Martes 03:00 pm – 01:00 am<br> miercoles Cerrado <br> Jueves 03:00 pm – 01:00 am<br> viernes 03:00 pm – 02:30 am<br> Sabado 02:00 pm – 02:30 am <br> Domingo 12:00 pm – 09:00 pm</p>
            </div>
            
            
            <h2 id ="RES"></h2><br>


            <div class="proyecto">
              <img src="img/laplayita.png" alt="Proyecto">
              <p><br>Nombre: Restaurante La Playita<br>Dirección:  ak. 70 # 71a - 03 Bogotá D.C.<br>Horario de atención:<br> lunes – jueves    7:00 am – 4:00 pm <br>
              viernes – domingo   abierto 24 horas<br>Telefono: 301 7612315<br></p>
            </div>

             <div class="proyecto">
              <img src="img/casalis.jpg" alt="Proyecto">
              <p><br>Nombre: Restaurante Casa lis<br>Dirección:  direccion: cra. 7 #17-10 Bogotá D.C.<br>Horario de atención:<br> lunes – miércoles  8:00 am – 17:30 pm <br>jueves   8:00 am – 19:30 pm<br>viernes   7:30 am – 21:00 pm<br>sábado  8:00 am – 16:30 pm<br>domingo   9:00 am– 17:00 pm<br>
              viernes – domingo   abierto 24 horas<br>Telefono: 301 7612315<br></p>
            </div>

            <div class="proyecto">
              <img src="img/tanpinchado.jpg" alt="Proyecto">
              <p><br>Nombre: Restaurante Tan pinchado el gordo <br>Dirección: : ak. 19 #148 - 52 Bogotá D.C.<br>Horario de atención:<br> lunes – domingo  8:00 am – 17:00 pm <br>Telefono: 0316148369<br></p>
            </div>


            <!-- Centro de diagnostico automotriz -->



            <div class="proyecto">
              <img src="img/CDAsantalibrada.jpg" alt="Proyecto">
              <p><br>Nombre:CDA Santa Librada <br>Dirección: cra 11 # 69G - 25sur Bogotá D.C.<br>Horario de atención:<br> lunes - Sabado 07:00 am – 06:00 pm<br>domingo 08:00 am – 01:00 pm<br></p>
            </div>


            <div class="proyecto">
              <img src="img/CDABogota.jpg" alt="Proyecto">
              <p><br>Nombre: CDA Movilidad Bogotá <br>Dirección: cra 73A # 77a - 32 Bogotá D.C.<br>Horario de atención:<br> lunes - Sabado 06:00 am – 11:59 pm<br>domingo 07:00 am – 05:00 pm<br></p>
            </div>


            <div class="proyecto">
              <img src="img/cda80.jpg" alt="Proyecto">
              <p><br>Nombre: CDA Diagnostiya 80 <br>Dirección: cra 73A # 77A-62 Bogotá D.C.<br>Horario de atención:<br> Abierto las 24 horas<br></p>
            </div>
            
            
            <h2 id ="CDA"></h2>
            

             <div class="proyecto">
              <img src="img/CDArevicars.jpg" alt="Proyecto">
              <p><br>Nombre: CDA revicars <br>Dirección: carrera 24 # 73-38 Bogotá D.C.<br>Horario de atención:<br> lunes – sábado  7:00 am – 19:00 pm<br>Domingo Cerrado<br>Telefono: 0313904452</p>
            </div>

            <div class="proyecto">
              <img src="img/CDAmegaservice.jpg" alt="Proyecto">
              <p><br>Nombre: CDA Megaservice car <br>Dirección: calle 68 # 20-41 Bogotá D.C.<br>Horario de atención:<br> lunes – viernes  7:00 am– 18:00 pm<br>Sabado - Domingo Cerrado<br>Telefono: 0316060007</p>
            </div>

            <div class="proyecto">
              <img src="img/CDAdiagnostiauto.jpg" alt="Proyecto">
              <p><br>Nombre: CDA Diagnostiautos <br>Dirección: carrera 63 # 68-37 Bogotá D.C.<br>Horario de atención:<br> lunes – viernes   8:30 am – 18:30 pm<br>Sabado - Domingo Cerrado<br>Telefono: 0312505045</p>
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
