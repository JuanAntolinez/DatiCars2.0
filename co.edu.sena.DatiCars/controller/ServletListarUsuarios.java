package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Usuario;
import model.ModeloUsuario;

/**
 * Servlet implementation class ServletListar
 */
@WebServlet("/ServletListarUsuarios")
public class ServletListarUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletListarUsuarios() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession sesion = request.getSession();
        
		String user = (String) sesion.getAttribute("nombreUsuario");
        
		ModeloUsuario mUsuario = new ModeloUsuario();
        List<Usuario> usuarios = mUsuario.listarUsuarios();
        
      
        request.setAttribute("listaUsuarios", usuarios);
        request.setAttribute("nombreUsuario", user);
		request.getRequestDispatcher("listaUsuarios.jsp").forward(request, response);
        
        //RequestDispatcher dispatcher = request.getRequestDispatcher("/listaUsuarios.jsp");
        
        //request.setAttribute("listaUsuarios", usuarios);
       // request.setAttribute("mensaje", "hoal");
       // dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
