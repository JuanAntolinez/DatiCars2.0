package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import connection.Conexion;
import beans.Administrador;



public class ModeloAdministrador {	
		public Administrador iniciarSesion(String adminEmail, String adminContraseña) {
			Administrador administrador = null;
			Connection cnn = null;
			PreparedStatement pstmm = null;
			ResultSet rss = null;
			
			try {
				cnn = Conexion.getConexion();
				String sqll = "SELECT P.id, P.adminUsuario, P.adminEmail, P.adminContraseña, P.adminNombre, P.adminApellido FROM Administradores P WHERE P.adminEmail = ? AND  P.adminContraseña = ? "  ;
				pstmm = cnn.prepareStatement(sqll);
				pstmm.setString(1, adminEmail);
				pstmm.setString(2, adminContraseña);
				
				rss = pstmm.executeQuery();
				
				while (rss.next()) {
					administrador = new Administrador();
					administrador.setIdUsuarioAdmin(rss.getInt("id"));
					administrador.setEmailAdmin(rss.getString("adminEmail"));
					administrador.setContraseñaAdmin(rss.getString("adminContraseña"));
					administrador.setNombreAdmin(rss.getString("adminNombre"));
					administrador.setApellidoAdmin(rss.getString("adminApellido"));
					administrador.setUsuarioAdmin(rss.getString("adminUsuario"));
					
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (rss != null) {
						rss.close();
					}
					
					if (pstmm != null) {
						pstmm.close();
					}
					
					if (cnn != null) {
						cnn.close();
					}
				} catch (Exception e3) {
					e3.printStackTrace();
				}
			}
			
			return administrador;
		}
	}


