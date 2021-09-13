package controller;

import java.io.IOException;
import org.json.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Usuario;

import model.ModeloUsuario;

@WebServlet("/usuario")
public class ServletUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession sesion = request.getSession();
		
		String email = request.getParameter("email");
		String contrasena = request.getParameter("contrasena");
	
		ModeloUsuario modelo = new ModeloUsuario();
		Usuario usuario = modelo.iniciarSesion(email, contrasena);
		

		if (usuario == null ) {
			request.setAttribute("mensajelogin", "Error e-mail y/o clave incorrecta");
			request.getRequestDispatcher("#openModal").forward(request, response);
		
		}else {
			String rolUsuario = usuario.getRol();
			String nombreUsuario = usuario.getUsuario();
			sesion.setAttribute("rolUsuario", rolUsuario);
			sesion.setAttribute("nombreUsuario", nombreUsuario);
			
			if(rolUsuario.equals("administrador")) {
				String totalUsuarios = modelo.totalUsuarios();
				JSONArray  myJson = new JSONArray (totalUsuarios);
				request.setAttribute("total", myJson);
				request.getRequestDispatcher("inicioAdmin.jsp").forward(request, response);
				
								
			}else {
				request.setAttribute("usuario", usuario);
				request.getRequestDispatcher("home.jsp").forward(request, response);
				
				
				
			}
			
			}

	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession sesionUsuario = request.getSession();
		sesionUsuario.invalidate();
	    response.sendRedirect("index.jsp");

	}
			
}	
		


