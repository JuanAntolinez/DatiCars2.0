package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.Actualizar;
import model.ModeloActualizarDatosUsuario;
import javax.servlet.http.HttpSession;

	@WebServlet("/ActualizacionDatosUsuario")
	public class ServletActualizacionDatosUsuario extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void service(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			
		    String id = request.getParameter("id");
			String user = request.getParameter("user");
			String nombre = request.getParameter("nombre");
			String apellido = request.getParameter("apellido");
			String email = request.getParameter("email");
			String confirmar_email = request.getParameter("confirmar_email");
			String contraseña = request.getParameter("contraseña");
			String confirmar_contraseña = request.getParameter("confirmar_contraseña");
			
			

			ModeloActualizarDatosUsuario modelo = new ModeloActualizarDatosUsuario();
			@SuppressWarnings("unused")
			boolean usuario = modelo.Guardar(id,user,nombre,apellido,email);

			if (usuario) {
				HttpSession sesionActualizado= request.getSession(true);
				request.setAttribute("mensaje", "Usuario Actualizado");
				sesionActualizado.setAttribute("usuario", usuario);
				request.getRequestDispatcher("perfil.jsp").forward(request, response);
				
			}
			else {
				request.setAttribute("mensaje", "Usuario No Actualizado");
				request.getRequestDispatcher("perfil.jsp").forward(request, response);
			}
		}

	}