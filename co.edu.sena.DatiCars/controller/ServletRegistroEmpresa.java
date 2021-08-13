package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.EmpresaRegistro;
import model.ModeloRegistroEmpresa;

import com.mysql.jdbc.Blob;


@WebServlet("/ServletRegistroEmpresa")
public class ServletRegistroEmpresa extends HttpServlet {
	private static final long serialVersionUID = 3L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String nombreEmpresa = request.getParameter("nombreEmpresa");
		String nombreContacto = request.getParameter("nombreContacto");
		String camaradeComercio = request.getParameter("camaradeComercio");
		String direccion = request.getParameter("direccion");
		String telefono = request.getParameter("telefono");
		String horarioAtencion = request.getParameter("horarioAtencion");
		String producto = request.getParameter("producto");
		String fotoLocal = request.getParameter("fotoLocal");
		String email = request.getParameter("email");			
			
		
		

		ModeloRegistroEmpresa modelo = new ModeloRegistroEmpresa();
		@SuppressWarnings("unused")
		boolean empresa = modelo.RegistrateEmpresa( nombreEmpresa, nombreContacto, camaradeComercio, direccion, telefono, horarioAtencion, producto, fotoLocal, email);

		if (empresa) {
			
			request.setAttribute("mensajeEmpresa", "Registro Exitoso.");
			request.getRequestDispatcher("registroEmpresa.jsp").forward(request, response);
			
		}
		else {
			request.setAttribute("mensajeEmpresa", "Registro no exitoso.");
			request.getRequestDispatcher("registroEmpresa.jsp").forward(request, response);
		}
	}

}
