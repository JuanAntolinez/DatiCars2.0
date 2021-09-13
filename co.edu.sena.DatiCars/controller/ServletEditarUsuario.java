package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Usuario;
import model.ModeloUsuario;

/**
 * Servlet implementation class ServletEditarUsuario
 */
@WebServlet("/ServletEditarUsuario")
public class ServletEditarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEditarUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id")) ;
		ModeloUsuario mUsuario = new ModeloUsuario();
		
		Usuario usuario = mUsuario.obtenerUsuario(id);
		List<Usuario> usuarios = mUsuario.listarUsuarios();
        
	      
        request.setAttribute("listaUsuarios", usuarios);
		request.setAttribute("usuario", usuario);
		request.getRequestDispatcher("/listaUsuarios.jsp").forward(request, response);	
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
