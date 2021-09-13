package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ModeloActualizarDatosUsuario;
import model.ModeloUsuario;
import beans.Usuario;

/**
 * Servlet implementation class ServletEditarUsuarioAdmin
 */
@WebServlet("/ServletEditarUsuarioAdmin")
public class ServletEditarUsuarioAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEditarUsuarioAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		ModeloUsuario actualizar = new ModeloUsuario();  
		
		Usuario usuario = actualizar.obtenerUsuario(id);

		request.setAttribute("usuario", usuario);
		request.getRequestDispatcher("EditarUsuariosAdmin.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String usuario = request.getParameter("usuario");
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String email = request.getParameter("email");
		int id = Integer.parseInt(request.getParameter("id"));
		
		
		

		ModeloActualizarDatosUsuario modelo = new ModeloActualizarDatosUsuario();
		@SuppressWarnings("unused")
		boolean actualizousuarioadmin = modelo.guardarDatosUsuarioAdmin(usuario,nombre,apellido,email, id);

		if (actualizousuarioadmin) {
			
			request.setAttribute("mensajeActualizoDatos", "Usuario Actualizado");
			
			request.getRequestDispatcher("EditarUsuariosAdmin.jsp").forward(request, response);
			
		}
		else {
			request.setAttribute("mensajeActualizoDatos", "Usuario No Actualizado");
			request.getRequestDispatcher("EditarUsuariosAdmin.jsp").forward(request, response);
		}
	}

}
