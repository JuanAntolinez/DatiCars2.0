package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import connection.Conexion;
import beans.Administrador;



public class ModeloAdministrador {	
		public Administrador iniciarSesion(String adminEmail, String adminContrase�a) {
			Administrador administrador = null;
			Connection cn = null;
			PreparedStatement pstm = null;
			ResultSet rs = null;
			
			try {
				cn = Conexion.getConexion();
				String sql = "SELECT U.id, U.adminUsuario, U.adminEmail, U.adminContrase�a, U.adminNombre, U.adminApellido, FROM Administradores U WHERE U.adminEmail = ? AND  U.adminContrase�a = ? "  ;
				pstm = cn.prepareStatement(sql);
				pstm.setString(1, adminEmail);
				pstm.setString(2, adminContrase�a);
				
				rs = pstm.executeQuery();
				
				while (rs.next()) {
					administrador = new Administrador();
					administrador.setIdUsuarioAdmin(rs.getInt("id"));
					administrador.setEmailAdmin(rs.getString("adminEmail"));
					administrador.setContrase�aAdmin(rs.getString("adminContrase�a"));
					administrador.setNombreAdmin(rs.getString("adminNombre"));
					administrador.setApellidoAdmin(rs.getString("adminApellido"));
					administrador.setUsuarioAdmin(rs.getString("adminUsuario"));
					
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (rs != null) {
						rs.close();
					}
					
					if (pstm != null) {
						pstm.close();
					}
					
					if (cn != null) {
						cn.close();
					}
				} catch (Exception e3) {
					e3.printStackTrace();
				}
			}
			
			return administrador;
		}
	}








