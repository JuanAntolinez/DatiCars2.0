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
		String adminEmail = request.getParameter("adminEmail");
		String adminContrasena = request.getParameter("adminContrasena");
	
		ModeloAdministrador modelo = new ModeloAdministrador();
		Administrador administrador = modelo.iniciarSesionAdmin(adminEmail, adminContrasena);
		

		if (administrador == null ) {
			request.setAttribute("mensajeAdmin", "Error e-mail y/o clave incorrecta");
			request.getRequestDispatcher("LoginAdmin.jsp").forward(request, response);
		
		}else {
			HttpSession sesionAdministrador = request.getSession(true);
			sesionAdministrador.setAttribute("administrador" , administrador);
			response.sendRedirect("inicioAdmin.jsp"); 
		}

	}
			
}
