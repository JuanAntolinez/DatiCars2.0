package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import connection.Conexion;

import beans.AdministradorRegistro;

public class ModeloRegistroAdministrador {
	
	public ModeloRegistroAdministrador () {}
	public boolean RegistrateAdministrador( String adminUsuario,  String adminNombre, String adminApellido,String adminEmail, String adminContrasena) {
	
	
				Connection cn = null;
				PreparedStatement pstm = null;
				ResultSet rs = null;
				boolean registroadministrador = false;
				
				try {
					cn = Conexion.getConexion();
					String sql = "insert into Administradores (adminUsuario, adminNombre, adminApellido , adminEmail, adminContrasena) values (?, ?, ?, ?, ?)";
					pstm = cn.prepareStatement(sql);
					pstm.setString(1, adminUsuario);
					pstm.setString(2, adminNombre);
					pstm.setString(3, adminApellido);
					pstm.setString(4, adminEmail);
					pstm.setString(5, adminContrasena);
				
					registroadministrador = pstm.executeUpdate() > 0;		
					
				     
				} catch (SQLException e) {
					System.out.print(e.getMessage());
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
					} catch (Exception e2) {
						e2.printStackTrace();
					}
				}
				
				return registroadministrador;
		}
				
				
}
