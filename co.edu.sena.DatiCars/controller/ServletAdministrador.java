package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Administrador;
import model.ModeloAdministrador;



@WebServlet("/ServletAdministrador")
public class ServletAdministrador extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		
		String rol = "usuario";
	    //System.out.println(rol);     
		// iniciar sesion
		

		String adminEmail = request.getParameter("adminEmail");
		String adminContrasena = request.getParameter("adminContrasena");
	
		
		
	  
	    
		ModeloAdministrador modelo = new ModeloAdministrador();
		Administrador administrador = modelo.iniciarSesionAdmin(adminEmail, adminContrasena);
		 

		if (administrador == null ) {
			request.setAttribute("mensajeAdmin", "Error e-mail y/o clave incorrecta");
			request.getRequestDispatcher("LoginAdmin.jsp").forward(request, response);
		
		}else if((administrador != null)&&(rol == "usuario")) {

			HttpSession sesionUsuario= request.getSession(true);
		    sesionUsuario.setAttribute("administrador", administrador);
		    response.sendRedirect("home.jsp");		
			
	}else {
		
			
			HttpSession sesionUsuario= request.getSession(true);
		    sesionUsuario.setAttribute("administrador", administrador);
		    response.sendRedirect("ServletListarUsuarios");
	}

	}
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	        
	}
	
	


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	
			
}
