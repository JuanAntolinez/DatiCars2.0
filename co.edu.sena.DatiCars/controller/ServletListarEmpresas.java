package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Empresas;
import model.ModeloEmpresa;

/**
 * Servlet implementation class ServletListarEmpresas
 */
@WebServlet("/ServletListarEmpresas")
public class ServletListarEmpresas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletListarEmpresas() {
        super();
       
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ModeloEmpresa mUsuario = new ModeloEmpresa();
        List<Empresas> empresa = mUsuario.listarEmpresas();
        
      
        request.setAttribute("listaEmpresa", empresa);
		request.getRequestDispatcher("listaEmpresas.jsp").forward(request, response);
        
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		doGet(request, response);
	}

}
