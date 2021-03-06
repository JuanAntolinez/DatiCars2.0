package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.UsuarioRegistro;
import model.ModeloRegistroUsuario;

	@WebServlet("/ServletRegistroUsuario")
	public class ServletRegistroUsuario extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void service(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			
			
			String user = request.getParameter("user");
			String nombre = request.getParameter("nombre");
			String apellido = request.getParameter("apellido");
			String email = request.getParameter("email");			
			String contraseņa = request.getParameter("contrasena");		
			String permisos = request.getParameter("permisos");
			

			ModeloRegistroUsuario modelo = new ModeloRegistroUsuario();
			
			
			if(!modelo.validarCorreo(email)) {
				@SuppressWarnings("unused")
				boolean usuario = modelo.Registrate(user,nombre,apellido,email, contraseņa, permisos);

				if (usuario) {
					
					request.setAttribute("mensaje", "Usuario Registrado");
					request.getRequestDispatcher("#openModalRegistro").forward(request, response);
					
				}
				else {
					request.setAttribute("mensaje", "Usuario No Registrado");
					request.getRequestDispatcher("#openModalRegistro").forward(request, response);
				}
			}else {
				request.setAttribute("mensaje", "El correo ingresado ya existe");
				request.getRequestDispatcher("#openModalRegistro").forward(request, response);
			}
			
		}

	}