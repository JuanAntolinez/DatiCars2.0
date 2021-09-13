<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Geolocalizacion</title>
</head>
<body>

	   <button onclick="findMe()">Mostrar ubicación</button>
          <div id="map"></div>
          <script> //src="key=AIzaSyAP4WAxriXSl2mI9XBEmmdfRmCw0uH2c2E"
              function findMe(){
            	  var output = document.getElementById('map');
            	  
            	  if(navigator.geolication){
            		  output.innerHTML = "<p>Tu navegador soporta geolocalizacion</p>";
            	  }else{
            		  output.innerHTML = "<p>Tu navegador NO soporta geolocalizacion</p>";
            	  }
            	  
            	  function localizacion(posicion){
            		  var latitude = posicion.coords.latitude;
            		  var logitude = posicion.coords.longitude;
            		  
            		  output.innerHTML = "<p>Latitud: " + latitude + "<br>longitud: " + logitude + "</p>";
            		
            		    //var imgURL = "https://maps.googleapis.com/maps/api/staticmap?center="+latitude+","+longitude+"&size=600x300&markers=color:red%7C"+latitude+","+longitude+"&key=AIzaSyAP4WAxriXSl2mI9XBEmmdfRmCw0uH2c2E";

      				    //output.innerHTML ="<img src='"+imgURL+"'>";
                   
      				    
      				    // link de crear los punteros en el mapa de google Maps
            		  //https://www.google.com/maps/d/edit?mid=1rBpfAoQ_cfbrvGoSbd4uwGq-Uqz4BXsB&ll=4.667320602816448%2C-74.07339220000001&z=12
            		  
            				  //https://www.youtube.com/watch?v=XX9Kmg3qLRk
            	  }
            	  function error(){
            		  output.innerHTML = "<p>No se pudo obtener tu ubicación</p>";
            	  }
            	  
            	  navigator.geolocation.getCurrentPosition(localizacion,error);
            	  
              }
          </script>



</body>
</html>