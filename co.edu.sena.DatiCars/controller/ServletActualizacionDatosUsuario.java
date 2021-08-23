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
			
		    
			
			String email = request.getParameter("email");
			int id = Integer.parseInt(request.getParameter("id"));
			
			
			

			ModeloActualizarDatosUsuario modelo = new ModeloActualizarDatosUsuario();
			@SuppressWarnings("unused")
			boolean usuario = modelo.Guardar(email, id);

			if (usuario) {
				
				request.setAttribute("mensaje", "Usuario Actualizado");
				
				request.getRequestDispatcher("perfil.jsp").forward(request, response);
				
			}
			else {
				request.setAttribute("mensaje", "Usuario No Actualizado");
				request.getRequestDispatcher("perfil.jsp").forward(request, response);
			}
		}

	}