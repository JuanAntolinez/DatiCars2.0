package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.actualizarContrase�a;
import model.ModeloActualizarContrase�a;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletActualizaContrase�a
 */
@WebServlet("/ActualizarContrase�a")
public class ServletActualizarContrase�a extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	    
		String contrasena = request.getParameter("contrasena");
		int id = Integer.parseInt(request.getParameter("id")) ;
	


		ModeloActualizarContrase�a modelo = new ModeloActualizarContrase�a();
		@SuppressWarnings("unused")
		boolean usuario = modelo.actualizar(contrasena, id);

		if (usuario ) {
			
			request.setAttribute("mensaje", "Contrase�a Actualizada");
			
			request.getRequestDispatcher("actualizar-contrase�a.jsp").forward(request, response);
			
		}
		else {
			request.setAttribute("mensaje", "Contrase�a No Actualizada");
			request.getRequestDispatcher("actualizar-contrase�a.jsp").forward(request, response);
		}
	}

}