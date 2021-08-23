package controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import beans.EmpresaRegistro;
import model.ModeloRegistroEmpresa;




@MultipartConfig @WebServlet("/ServletRegistroEmpresa")
public class ServletRegistroEmpresa extends HttpServlet {
	private static final long serialVersionUID = 3L;
	private String pathFiles = "C:\\Users\\usuario\\eclipse-workspace\\DatiCars2.0Final\\WebContent\\archivos";

    private String pathFolder = "C:\\Users\\usuario\\eclipse-workspace\\DatiCars2.0Final\\WebContent\\";
    private File uploads = new File(pathFiles);

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Part partFotoLocal = request.getPart("fotolocal");
		Part partCamaraC = request.getPart("camaradeComercio");
		
		String nombreEmpresa = request.getParameter("nombreEmpresa");
		String nombreContacto = request.getParameter("nombreContacto");
		String camaradeComercio = saveFile(partCamaraC, uploads);
		String direccion = request.getParameter("direccion");
		String telefono = request.getParameter("telefono");
		String horarioAtencion = request.getParameter("horarioAtencion");
		String producto = request.getParameter("producto");
		String fotoLocal = saveFile(partFotoLocal, uploads);
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
	
	
	 private String saveFile(Part part, File pathUploads) {
	        String pathAbsolute = "";

	        try {

	            Path path = Paths.get(part.getSubmittedFileName());
	            String fileName = path.getFileName().toString();
	            InputStream input = part.getInputStream();

	            if(input != null) {
	                File file = new File(pathUploads, fileName);
	                pathAbsolute = file.getAbsolutePath().replace(pathFolder,"");
	                Files.copy(input, file.toPath());
	    }

	        } catch (Exception e) {
	            System.out.println(e.getMessage());
	        }

	        return pathAbsolute;
	    }

}
