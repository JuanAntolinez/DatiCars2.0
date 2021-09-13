package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.actualizarContraseña;
import model.ModeloActualizarContraseña;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletActualizaContraseña
 */
@WebServlet("/ActualizarContraseña")
public class ServletActualizarContraseña extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	    
		String contrasena = request.getParameter("contrasena");
		int id = Integer.parseInt(request.getParameter("id")) ;
	


		ModeloActualizarContraseña modelo = new ModeloActualizarContraseña();
		@SuppressWarnings("unused")
		boolean usuario = modelo.actualizar(contrasena, id);

		if (usuario ) {
			
			request.setAttribute("mensaje", "Contraseña Actualizada");
			
			request.getRequestDispatcher("actualizar-contraseña.jsp").forward(request, response);
			
		}
		else {
			request.setAttribute("mensaje", "Contraseña No Actualizada");
			request.getRequestDispatcher("actualizar-contraseña.jsp").forward(request, response);
		}
	}

}