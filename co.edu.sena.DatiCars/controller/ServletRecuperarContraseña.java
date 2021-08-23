package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ModeloActualizarContraseña;

/**
 * Servlet implementation class ServletRecuperarContraseña
 */
@WebServlet("/ServletRecuperarContraseña")
public class ServletRecuperarContraseña extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ServletRecuperarContraseña() {
        super();
        // TODO Auto-generated constructor stub
    }


    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		String codigo;
		switch (action) {
			case "verFormulario": 
				codigo = request.getParameter("cod");
				request.setAttribute("codigo", codigo);
				request.getRequestDispatcher("recuperarContraseña.jsp").forward(request, response);
				break;
			case "actualizar":
				
				ModeloActualizarContraseña actualizar = new ModeloActualizarContraseña();
				codigo = request.getParameter("codigo");
				String contrasena = request.getParameter("contrasena");
				
				if (actualizar.recuperar(contrasena, codigo)) {
					
					request.setAttribute("mensaje", "Contraseña Actualizada");
					
					request.getRequestDispatcher("recuperarContraseña.jsp").forward(request, response);
					
				}
				else {
					request.setAttribute("mensaje", "Contraseña No Actualizada");
					request.getRequestDispatcher("recuperarContraseña.jsp").forward(request, response);
				}
				
				break;
			default:
				break;
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
