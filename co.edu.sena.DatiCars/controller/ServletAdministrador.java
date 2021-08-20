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
	private static final long serialVersionUID = 6L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String adminEmail = request.getParameter("adminEmail");
		String adminContraseņa = request.getParameter("adminContraseņa");
	
		ModeloAdministrador modelo = new ModeloAdministrador();
		Administrador administrador = modelo.iniciarSesion(adminEmail, adminContraseņa);
		

		if (administrador == null ) {
			request.setAttribute("mensajeAdmin", "Error e-mail y/o clave incorrecta1111");
			request.getRequestDispatcher("inicioAdmin.jsp").forward(request, response);
		
		}else {
			HttpSession sesionAdministrador = request.getSession(true);
			sesionAdministrador.setAttribute("administrador" , administrador);
			response.sendRedirect("LoginAdmin.jsp"); 
		}

	}
			
}
