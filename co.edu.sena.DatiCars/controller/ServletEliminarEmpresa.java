package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.EmpresaRegistro;
import beans.Empresas;
import model.ModeloEmpresa;

/**
 * Servlet implementation class ServletEliminarEmpresa
 */
@WebServlet("/ServletEliminarEmpresa")
public class ServletEliminarEmpresa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEliminarEmpresa() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		ModeloEmpresa eliminar = new ModeloEmpresa();  
		
		boolean empresa = eliminar.eliminar(id);
		
		ModeloEmpresa mUsuario = new ModeloEmpresa();
        List<Empresas> empresas = mUsuario.listarEmpresas();
        
      
        request.setAttribute("listaEmpresa", empresas);
		request.getRequestDispatcher("listaEmpresas.jsp").forward(request, response);
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
