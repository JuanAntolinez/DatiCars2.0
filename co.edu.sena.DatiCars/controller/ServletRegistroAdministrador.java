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

import com.mysql.jdbc.Blob;


@WebServlet("/ServletRegistroAdministrador")
public class ServletRegistroAdministrador extends HttpServlet {
	private static final long serialVersionUID = 4L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String adminUsuario = request.getParameter("adminUsuario");
		String adminEmail = request.getParameter("adminEmail");
		String adminContraseña = request.getParameter("adminContraseña");
		String adminNombre = request.getParameter("adminNombre");
		String adminApellido = request.getParameter("adminApellido");
					
			
		
		

		ModeloRegistroAdministrador modelo = new ModeloRegistroAdministrador();
		@SuppressWarnings("unused")
		boolean administrador = modelo.RegistrateAdministrador( adminUsuario, adminEmail, adminContraseña, adminNombre, adminApellido);

		if (administrador) {
			
			request.setAttribute("mensajeAdministrador", "Registro Administrador.");
			request.getRequestDispatcher("homeAdmin.jsp").forward(request, response);
			
		}
		else {
			request.setAttribute("mensajeAdministrador", "No se Registro Administrador.");
			request.getRequestDispatcher("homeAdmin.jsp").forward(request, response);
		}
	}

}
