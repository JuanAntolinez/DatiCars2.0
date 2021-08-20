package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import connection.Conexion;
import com.mysql.jdbc.Blob;
import beans.AdministradorRegistro;

public class ModeloRegistroAdministrador {
	
	public ModeloRegistroAdministrador () {}
	public boolean RegistrateAdministrador( String adminUsuario, String adminEmail, String adminContrase�a, String adminNombre, String adminApellido) {
	
	
				Connection cn = null;
				PreparedStatement pstm = null;
				ResultSet rs = null;
				boolean registroadministrador = false;
				
				try {
					cn = Conexion.getConexion();
					String sql = "insert into Administradores (adminUsuario, adminEmail, adminContrase�a, adminNombre, adminApellido ) values (?, ?, ?, ?, ?)";
					pstm = cn.prepareStatement(sql);
					pstm.setString(1, adminUsuario);
					pstm.setString(2, adminEmail);
					pstm.setString(3, adminContrase�a);
					pstm.setString(4, adminNombre);
					pstm.setString(5, adminApellido);
				
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
