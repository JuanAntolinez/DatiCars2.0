package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.ModeloRegistroEmpresa;
import model.ModeloEmpresa;

import beans.Empresas;
/**
 * Servlet implementation class ServletActualizacionDatosEmpresa
 */
@WebServlet("/ServletActualizacionDatosEmpresa")
public class ServletActualizacionDatosEmpresa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletActualizacionDatosEmpresa() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		
		ModeloEmpresa actualizar = new ModeloEmpresa();  
		
        Empresas empresa = actualizar.obtenerEmpresa(id);
		request.setAttribute("empresa", empresa);
		request.getRequestDispatcher("EditarDatosEmpresa.jsp").forward(request, response);
		System.out.print(id);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nombreEmpresa = request.getParameter("nombreEmpresa");
		String nombreContacto = request.getParameter("nombreContacto");
		String camaradeComercio = request.getParameter("camaradeComercio");
		String direccion = request.getParameter("direccion");
		String telefono = request.getParameter("telefono");
		String horarioAtencion = request.getParameter("horarioAtencion");
		String producto = request.getParameter("producto");
		String fotoLocal = request.getParameter("fotoLocal");
		String email = request.getParameter("email");
		int id = Integer.parseInt(request.getParameter("id"));


		ModeloEmpresa modelo = new ModeloEmpresa();
		@SuppressWarnings("unused")
		boolean actualizoempresaadmin = modelo.guardarDatosEmpresasAdmin(nombreEmpresa, nombreContacto, camaradeComercio, direccion, telefono, horarioAtencion, producto, fotoLocal, email, id);

		if (actualizoempresaadmin) {
			
			request.setAttribute("mensajeActualizoDatos", "Empresa Actualizada");
			
			request.getRequestDispatcher("EditarDatosEmpresa.jsp").forward(request, response);
			
		}
		else {
			request.setAttribute("mensajeActualizoDatos", "Empresa No Actualizada");
			request.getRequestDispatcher("EditarDatosEmpresa.jsp").forward(request, response);
		}
		
		
		
		
	}

}
