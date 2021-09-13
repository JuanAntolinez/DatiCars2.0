package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Administrador;
import beans.AdministradorRegistro;
import model.ModeloRegistroAdministrador;
import model.ModeloAdministrador;

/**
 * Servlet implementation class ServletEliminarAdministrador
 */
@WebServlet("/ServletEliminarAdministrador")
public class ServletEliminarAdministrador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEliminarAdministrador() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		ModeloAdministrador eliminar = new ModeloAdministrador();  
		
		boolean usuario = eliminar.eliminar(id);
		
		ModeloAdministrador mUsuario = new ModeloAdministrador();
        List<Administrador> usuarios = mUsuario.listarAdministradores();
        
      
        request.setAttribute("listaAdministrador", usuarios);
		request.getRequestDispatcher("listaAdmins.jsp").forward(request, response);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
