package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.EnviarCorreo;
import model.ModeloActualizarDatosUsuario;

 

/**
 * Servlet implementation class ServletEnviarCorreo
 */
@WebServlet("/ServletEnviarCorreo")
public class ServletEnviarCorreo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEnviarCorreo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String correo = request.getParameter("correo");
		EnviarCorreo enviar = new EnviarCorreo(); 
		String codigo = enviar.sha1();
		String urlSolicitud = request.getRequestURL().toString();
		String urlRecuperar = urlSolicitud.replaceFirst("ServletEnviarCorreo", "ServletRecuperarContraseña");
		urlRecuperar +="?action=verFormulario&cod=" + codigo;
		System.out.println(urlRecuperar);
		ModeloActualizarDatosUsuario cod = new ModeloActualizarDatosUsuario();
		
		try {
			if(cod.actualizarCodigoUsuario(correo, codigo)) {
				if(enviar.enviarCorreoRec(correo,urlRecuperar)) {
					request.setAttribute("mensajeOlvideContraseña", "Correo enviado exitosamente");
					request.getRequestDispatcher("olvidemiContraseña.jsp").forward(request, response);
				
				}else {
					request.setAttribute("mensajeOlvideContraseña", "Correo erroneo");
					request.getRequestDispatcher("olvidemiContraseña.jsp").forward(request, response);
				}	
			}else {
				
				request.setAttribute("mensajeOlvideContraseña", "Usuario no existe");
				request.getRequestDispatcher("olvidemiContraseña.jsp").forward(request, response);
				
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}


