package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.AdministradorRegistro;
import model.ModeloRegistroAdministrador;
import model.ModeloRegistroAdministrador;




@WebServlet("/ServletRegistroAdministrador")
public class ServletRegistroAdministrador extends HttpServlet {
	private static final long serialVersionUID = 4L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String adminUsuario = request.getParameter("adminUsuario");
		String adminNombre = request.getParameter("adminNombre");
		String adminApellido = request.getParameter("adminApellido");
		String adminEmail = request.getParameter("adminEmail");
		String adminContrasena = request.getParameter("adminContrasena");
		
					
			
		
		

		ModeloRegistroAdministrador modelo = new ModeloRegistroAdministrador();
		@SuppressWarnings("unused")
		boolean administrador = modelo.RegistrateAdministrador( adminUsuario,adminNombre, adminApellido, adminEmail, adminContrasena);

		if (administrador) {
			
			request.setAttribute("mensajeAdministrador", "Registro Administrador.");
			request.getRequestDispatcher("listaRegistroAdmin.jsp").forward(request, response);
			
		}
		else {
			request.setAttribute("mensajeAdministrador", "No se Registro Administrador.");
			request.getRequestDispatcher("listaRegistroAdmin.jsp").forward(request, response);
		}
	}

}
