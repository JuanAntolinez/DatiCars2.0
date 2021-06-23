package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Usuario;

import model.ModeloUsuario;

@WebServlet("/usuario")
public class ServletUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String contraseña = request.getParameter("contraseña");

		ModeloUsuario modelo = new ModeloUsuario();
		Usuario usuario = modelo.iniciarSesion(email, contraseña);
		

		if (usuario == null) {
			request.setAttribute("mensaje", "Error e-mail y/o clave incorrecta");
			request.getRequestDispatcher("#openModal").forward(request, response);
		} else {
			HttpSession sesionUsuario= request.getSession(true);
			sesionUsuario.setAttribute("usuario", usuario);
			response.sendRedirect("home.jsp");
		}
		/*
		HttpSession sessionUsuario = request.getSession(false);
		if (sessionUsuario != null) {
		    sessionUsuario.invalidate();
		    request.getRequestDispatcher("index.jsp").forward(request,response);    
		    
		}
       */
	}	
		
}

