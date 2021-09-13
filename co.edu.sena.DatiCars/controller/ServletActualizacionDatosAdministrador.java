package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ModeloActualizarDatosUsuario;
import model.ModeloAdministrador;
import model.ModeloRegistroAdministrador;
import beans.Administrador;
import beans.AdministradorRegistro;

/**
 * Servlet implementation class ServletActualizacionDatosAdministrador
 */
@WebServlet("/ServletActualizacionDatosAdministrador")
public class ServletActualizacionDatosAdministrador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletActualizacionDatosAdministrador() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        int id = Integer.parseInt(request.getParameter("id"));
		
        ModeloRegistroAdministrador actualizar = new ModeloRegistroAdministrador();  
		
        AdministradorRegistro administrador = actualizar.obtenerUsuario(id);

		request.setAttribute("administrador", administrador);
		request.getRequestDispatcher("EditarDatosAdministradores.jsp").forward(request, response);
		 System.out.println(id);
		   
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String adminUsuario = request.getParameter("adminUsuario");
		String adminNombre = request.getParameter("adminNombre");
		String adminApellido = request.getParameter("adminApellido");
		String adminEmail = request.getParameter("adminEmail");
		int id = Integer.parseInt(request.getParameter("id"));
		
		
		

		ModeloRegistroAdministrador modelo = new ModeloRegistroAdministrador();
		@SuppressWarnings("unused")
		boolean actualizoadministradoradmin = modelo.guardarDatosAdministradorAdmin(adminUsuario,adminNombre,adminApellido,adminEmail,id);

		if (actualizoadministradoradmin) {
			
			request.setAttribute("mensajeActualizoDatos", "Usuario Actualizado");
			
			request.getRequestDispatcher("EditarDatosAdministradores.jsp").forward(request, response);
			
		}
		else {
			request.setAttribute("mensajeActualizoDatos", "Usuario No Actualizado");
			request.getRequestDispatcher("EditarDatosAdministradores.jsp").forward(request, response);
		}
	}

}
