package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Login;
import beans.Usuario;
import model.ModeloLogin;



/**
 * Servlet implementation class ServletLoginRol
 */
@WebServlet("/ServletLoginRol")
public class ServletLoginRol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		 String email = request.getParameter("email");
			String contrasena = request.getParameter("contrasena");
		
			ModeloLogin modelo = new ModeloLogin();
			Login usuario = modelo.iniciarSesion(email, contrasena);
			

			if (usuario == null ) {
				request.setAttribute("mensajelogin", "Error e-mail y/o clave incorrecta");
				request.getRequestDispatcher("loginPorRoles.jsp").forward(request, response);
				
					
			}else {
				
					HttpSession sesionUsuario= request.getSession(true);
				    sesionUsuario.setAttribute("usuario", usuario);
				    response.sendRedirect("home.jsp");
			}
		
	        
	}
    
    
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//obtener rol
		
		   // String rol = request.getParameter("rol");
	       // ModeloLogin loginRol = new ModeloLogin();  
	       // Login roles = loginRol.obtenerRol(rol);
	       // request.setAttribute("usuario", roles);
	        
	      //  System.out.println(roles);
	        
	    // validar el inicio de sesion
	        
	        String email = request.getParameter("email");
			String contrasena = request.getParameter("contrasena");
		
			ModeloLogin modelo = new ModeloLogin();
			Login usuario = modelo.iniciarSesion(email, contrasena);
			

			if (usuario == null ) {
				request.setAttribute("mensajelogin", "Error e-mail y/o clave incorrecta");
				request.getRequestDispatcher("loginPorRoles.jsp").forward(request, response);
			
			//}else if(usuario == ) {
				

					//HttpSession sesionUsuario= request.getSession(true);
				  //  sesionUsuario.setAttribute("usuario", usuario);
				   // response.sendRedirect("ServletListarUsuarios");
					
			}else {
				
					HttpSession sesionUsuario= request.getSession(true);
				    sesionUsuario.setAttribute("usuario", usuario);
				    response.sendRedirect("home.jsp");
			}
		
	        
	}
	
	


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
