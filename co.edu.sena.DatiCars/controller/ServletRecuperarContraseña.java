package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ModeloActualizarContrase�a;

/**
 * Servlet implementation class ServletRecuperarContrase�a
 */
@WebServlet("/ServletRecuperarContrase�a")
public class ServletRecuperarContrase�a extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ServletRecuperarContrase�a() {
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
				request.getRequestDispatcher("recuperarContrase�a.jsp").forward(request, response);
				break;
			case "actualizar":
				
				ModeloActualizarContrase�a actualizar = new ModeloActualizarContrase�a();
				codigo = request.getParameter("codigo");
				String contrasena = request.getParameter("contrasena");
				
				if (actualizar.recuperar(contrasena, codigo)) {
					
					request.setAttribute("mensaje", "Contrase�a Actualizada");
					
					request.getRequestDispatcher("recuperarContrase�a.jsp").forward(request, response);
					
				}
				else {
					request.setAttribute("mensaje", "Contrase�a No Actualizada");
					request.getRequestDispatcher("recuperarContrase�a.jsp").forward(request, response);
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
