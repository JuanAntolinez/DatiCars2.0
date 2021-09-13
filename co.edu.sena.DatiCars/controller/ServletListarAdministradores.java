package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Administrador;
import model.ModeloAdministrador;

/**
 * Servlet implementation class ServletListarAdministradores
 */
@WebServlet("/ServletListarAdministradores")
public class ServletListarAdministradores extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
    public ServletListarAdministradores() {
        super();
          
        
    }

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ModeloAdministrador mUsuario = new ModeloAdministrador();
        List<Administrador> administrador = mUsuario.listarAdministradores();
        
      
        request.setAttribute("listaAdministrador", administrador);
		request.getRequestDispatcher("listaAdmins.jsp").forward(request, response);
        
	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
